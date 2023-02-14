package mesoneer.ivy.pizza.store.dto;

import java.util.List;

import mesoneer.ivy.pizza.store.entities.CartItem;

public class OrderCreateRequest {
	private String name;
	private String deliveryAddress;
	private String phoneNumber;
	private String description;
	private List<CartItem> items;
	
	public OrderCreateRequest() {
		
	}

	public OrderCreateRequest(String name, String deliveryAddress, String phoneNumber, String description, List<CartItem> items) {
		super();
		this.name = name;
		this.deliveryAddress = deliveryAddress;
		this.phoneNumber = phoneNumber;
		this.description = description;
		this.items = items;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}
}
