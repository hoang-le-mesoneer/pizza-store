package mesoneer.ivy.pizza.store.apis;

import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.security.PermitAll;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import ch.ivyteam.ivy.environment.Ivy;
import mesoneer.ivy.pizza.store.entities.Product;

@PermitAll
@Path("{applicationName}/products")
public class ProductApi {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getProducts(@QueryParam("type") Integer type) {
		List<Product> products = Ivy.persistence().get("pizza_store_unit").findAll(Product.class);
		if (type == null) {
			return Response.ok(products).build();
		}
		List<Product> filteredProducts = products.stream().filter(p -> p.getProductType().getValue() == type)
				.collect(Collectors.toList());
		return Response.ok(filteredProducts).build();
	}
	
	@GET
	@Path("{productId}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getProduct(@PathParam("productId") String productId) {
		Product product = Ivy.persistence().get("pizza_store_unit").find(Product.class, productId);
		return Response.ok(product).build();
	}
}
