package mesoneer.ivy.pizza.store.beans;

import java.util.List;

import javax.el.ELContext;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import mesoneer.ivy.pizza.store.OrderHandling.OrderHandlingData;
import mesoneer.ivy.pizza.store.entities.Order;
import mesoneer.ivy.pizza.store.enumeration.OrderStatus;

@ManagedBean(name = "orderHandlerBean")
@SessionScoped
public class OrderHandlerBean {
	public final List<Order> orders;

	public OrderHandlerBean() {
		ELContext elContext = FacesContext.getCurrentInstance().getELContext();
		OrderHandlingData orderHandlingData = (OrderHandlingData) elContext.getELResolver().getValue(elContext, null,
				"data");
		this.orders = orderHandlingData.getOrders();
	}

	public String setColorForOrderStatus(OrderStatus status) {
		String colorHex = "#004666";
		switch (status) {
		case DELIVERED:
			colorHex = "#347817";
			break;
		case CONFIRMED:
			colorHex = "#c0d6e4";
			break;
		case DELIVERING:
			colorHex = "#DED333";
			break;
		case DONE:
			colorHex = "#4cb938";
			break;
		case DECLINED:
			colorHex = "#CA0A00";
			break;
		default:
			break;
		}
		return colorHex;
	}
}
