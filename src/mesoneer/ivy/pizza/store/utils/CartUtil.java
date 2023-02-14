package mesoneer.ivy.pizza.store.utils;

import java.util.List;
import java.util.UUID;

import ch.ivyteam.ivy.environment.Ivy;
import mesoneer.ivy.pizza.store.beans.UserOrderBean;
import mesoneer.ivy.pizza.store.entities.CartItem;
import mesoneer.ivy.pizza.store.entities.Order;
import mesoneer.ivy.pizza.store.entities.Product;

public class CartUtil {
	public static void addToCart(Product product) {
		UserOrderBean orderBean = FacesContextUtils.findBean("userOrderBean", UserOrderBean.class);
		Order order = orderBean.order;

		List<CartItem> cartItems = order.getItems();
		CartItem cartItem = createItem(product, order);
		if (cartItems.size() == 0) {
			cartItems.add(cartItem);
		} else {
			boolean isExistInCart = false;
			for (CartItem item : cartItems) {
				if (item.getProductId().equals(product.getId())) {
					item.setQuantity(item.getQuantity() + 1);
					isExistInCart = true;
				}
			}
			if (!isExistInCart) {
				cartItems.add(cartItem);
			}
		}
	}

	private static CartItem createItem(Product product, Order order) {
		CartItem cartItem = new CartItem();
		cartItem.setId(UUID.randomUUID().toString());
		cartItem.setProductId(product.getId());
		cartItem.setProductName(product.getName());
		cartItem.setProductPrice(product.getPrice());
		cartItem.setOrderId(order.getOrderId());
		cartItem.setQuantity(1);

		return cartItem;
	}
}
