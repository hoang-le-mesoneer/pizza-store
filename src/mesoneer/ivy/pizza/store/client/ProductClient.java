package mesoneer.ivy.pizza.store.client;

import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;
import mesoneer.ivy.pizza.store.entities.Product;

public class ProductClient {
	public ProductClient() {
		
	}
	
	public List<Product> getProducts() {
		return Ivy.rest().client("productApi").request().get(GenericTypes.listOf(Product.class));
	}

	public List<Product> getProducts(Integer type) {
		return Ivy.rest().client("productApi").queryParam("type", type).request()
				.get(GenericTypes.listOf(Product.class));
	}
	
	public Product getProduct(String productId) {
		return Ivy.rest().client("productApi").path(productId).request().get(Product.class);
	}
}
