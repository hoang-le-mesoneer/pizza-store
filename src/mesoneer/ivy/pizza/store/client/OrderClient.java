package mesoneer.ivy.pizza.store.client;

import java.util.List;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;
import mesoneer.ivy.pizza.store.dto.OrderCreateRequest;
import mesoneer.ivy.pizza.store.dto.OrderUpdateRequest;
import mesoneer.ivy.pizza.store.entities.Order;

public class OrderClient {
	public OrderClient() {

	}

	public List<Order> getOrders() {
		return Ivy.rest().client("orderApi").request().get(GenericTypes.listOf(Order.class));
	}

	public List<Order> getOrders(String role) {
		return Ivy.rest().client("orderApi").queryParam("role", role).request().get(GenericTypes.listOf(Order.class));
	}

	public List<Order> getOrders(String role, String status) {
		return Ivy.rest().client("orderApi").queryParam("status", status).queryParam("role", role).request()
				.get(GenericTypes.listOf(Order.class));
	}

	public void createOrder(OrderCreateRequest request) {
		Entity<OrderCreateRequest> entityRequest = Entity.entity(request, MediaType.APPLICATION_JSON);
		Ivy.rest().client("orderApi").request().header("X-Requested-By", "POST").post(entityRequest);
	}

	public void updateOrderStatus(OrderUpdateRequest request) {
		Entity<OrderUpdateRequest> entityRequest = Entity.entity(request, MediaType.APPLICATION_JSON);
		Ivy.rest().client("orderApi").request().header("X-Requested-By", "PUT").put(entityRequest);
	}
}
