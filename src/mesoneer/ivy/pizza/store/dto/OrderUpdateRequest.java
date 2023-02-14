package mesoneer.ivy.pizza.store.dto;

public class OrderUpdateRequest {
	private String orderId;
	private String role;
	private Boolean isAccepted;

	public OrderUpdateRequest() {
	}

	public OrderUpdateRequest(String orderId, String role, Boolean isAccepted) {
		super();
		this.orderId = orderId;
		this.role = role;
		this.isAccepted = isAccepted;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Boolean getIsAccepted() {
		return isAccepted;
	}

	public void setIsAccepted(Boolean isAccepted) {
		this.isAccepted = isAccepted;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
