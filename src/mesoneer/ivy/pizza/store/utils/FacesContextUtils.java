package mesoneer.ivy.pizza.store.utils;

import javax.faces.context.FacesContext;

public class FacesContextUtils {
	public static <T> T findBean(String beanName, Class<T> clazz) {
		FacesContext context = FacesContext.getCurrentInstance();
		try {
			if (context != null) {
				T result = (T) context.getApplication().evaluateExpressionGet(context, "#{" + beanName + "}", clazz);
				return result;
			} else {
				return null;
			}
		} catch (Exception e) {
			return null;
		}
	}
}
