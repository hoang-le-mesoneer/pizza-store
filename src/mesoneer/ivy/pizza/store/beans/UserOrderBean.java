package mesoneer.ivy.pizza.store.beans;

import java.util.UUID;

import javax.el.ELContext;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import mesoneer.ivy.pizza.store.Order.OrderData;
import mesoneer.ivy.pizza.store.entities.Order;

@ManagedBean(name = "userOrderBean")
@SessionScoped
public class UserOrderBean {
	public final Order order;

	public UserOrderBean() {
		ELContext elContext = FacesContext.getCurrentInstance().getELContext();
		OrderData orderData = (OrderData) elContext.getELResolver().getValue(elContext, null, "data");
		this.order = orderData.getOrder();
		this.order.setOrderId(UUID.randomUUID().toString());
	}

	public Integer getTotalCart() {
		Integer total = this.order.getItems().stream().reduce(0,
				(subtotal, item) -> subtotal + item.getQuantity() * item.getProductPrice(), Integer::sum);
		return total;
	}
}
