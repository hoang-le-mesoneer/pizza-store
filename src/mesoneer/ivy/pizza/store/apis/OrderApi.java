package mesoneer.ivy.pizza.store.apis;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;
import mesoneer.ivy.pizza.store.enumeration.OrderStatus;
import mesoneer.ivy.pizza.store.dto.OrderCreateRequest;
import mesoneer.ivy.pizza.store.dto.OrderUpdateRequest;
import mesoneer.ivy.pizza.store.entities.CartItem;
import mesoneer.ivy.pizza.store.entities.Order;

@Path("{applicationName}/orders")
public class OrderApi {
	private final static String RECEPTIONIST = "Receptionist";
	private final static String DELIVERY = "Delivery";
	private final static String CHEF = "Chef";

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createOrder(OrderCreateRequest request) {
		Order order = new Order();
		order.setOrderId(request.getItems().get(0).getOrderId());
		order.setName(request.getName());
		order.setDeliveryAddress(request.getDeliveryAddress());
		order.setPhoneNumber(request.getPhoneNumber());
		order.setDescription(request.getDescription());
		order.setOrderStatus(OrderStatus.PENDING);
		order.setItems(request.getItems());
		order.setCreatedAt(LocalDateTime.now().toString());
		order.getItems().forEach(item -> Ivy.persistence().get("pizza_store_unit").persist(item));
		Ivy.persistence().get("pizza_store_unit").persist(order);
		return Response.ok().build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getOrders(@QueryParam("role") String role, @QueryParam("status") String status) {
		IIvyEntityManager ivyEm = Ivy.persistence().get("pizza_store_unit");
		List<CartItem> cartItems = ivyEm.findAll(CartItem.class);

		List<Order> orders = ivyEm.findAll(Order.class);
		List<Order> addItemsOrders = orders.stream().map(order -> {
			List<CartItem> items = cartItems.stream().filter(item -> item.getOrderId().equals(order.getOrderId()))
					.collect(Collectors.toList());
			order.setItems(items);
			return order;
		}).collect(Collectors.toList());

		if (status != null) {
			return getFilterOrders(addItemsOrders, OrderStatus.valueOf(status));
		}

		switch (role) {
		case RECEPTIONIST:
			return getFilterOrders(addItemsOrders, OrderStatus.PENDING);
		case CHEF:
			return getFilterOrders(addItemsOrders, OrderStatus.CONFIRMED);
		case DELIVERY:
			return Response
					.ok(addItemsOrders.stream()
							.filter(order -> order.getOrderStatus() == OrderStatus.DELIVERING
									|| order.getOrderStatus() == OrderStatus.DONE)
							.collect(Collectors.toList()))
					.build();
		default:
			break;
		}

		return Response.ok(addItemsOrders).build();
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public Response updateOrder(OrderUpdateRequest request) {
		IIvyEntityManager em = Ivy.persistence().get("pizza_store_unit");
		Order order = em.find(Order.class, request.getOrderId());
		if (!Boolean.valueOf(request.getIsAccepted())) {
			order.setOrderStatus(OrderStatus.DECLINED);
			em.merge(order);
			return Response.ok().build();
		}
		switch (request.getRole()) {
		case RECEPTIONIST:
			order.setOrderStatus(OrderStatus.CONFIRMED);
			break;
		case DELIVERY:
			if (order.getOrderStatus() == OrderStatus.DONE) {
				order.setOrderStatus(OrderStatus.DELIVERING);
				break;
			} else if (order.getOrderStatus() == OrderStatus.DELIVERING) {
				order.setOrderStatus(OrderStatus.DELIVERED);
				break;
			}
		case CHEF:
			order.setOrderStatus(OrderStatus.DONE);
			break;
		default:
			return Response.status(Status.UNAUTHORIZED).build();
		}
		em.merge(order);
		return Response.ok().build();
	}

	private Response getFilterOrders(List<Order> orders, OrderStatus status) {
		return Response
				.ok(orders.stream().filter(order -> order.getOrderStatus() == status).collect(Collectors.toList()))
				.build();
	}
}
