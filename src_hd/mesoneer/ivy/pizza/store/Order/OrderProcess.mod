[Ivy]
18616325E17A8C0D 7.5.0 #module
>Proto >Proto Collection #zClass
Os0 OrderProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @UdInit f0 '' #zField
Os0 @GridStep f1 '' #zField
Os0 @UdProcessEnd f3 '' #zField
Os0 @PushWFArc f4 '' #zField
Os0 @UdMethod f6 '' #zField
Os0 @UdExitEnd f10 '' #zField
Os0 @UdEvent f11 '' #zField
Os0 @PushWFArc f12 '' #zField
Os0 @UdMethod f13 '' #zField
Os0 @Alternative f7 '' #zField
Os0 @GridStep f18 '' #zField
Os0 @PushWFArc f19 '' #zField
Os0 @PushWFArc f20 '' #zField
Os0 @GridStep f16 '' #zField
Os0 @PushWFArc f14 '' #zField
Os0 @UdProcessEnd f21 '' #zField
Os0 @UdProcessEnd f5 '' #zField
Os0 @PushWFArc f15 '' #zField
Os0 @PushWFArc f22 '' #zField
Os0 @GridStep f8 '' #zField
Os0 @PushWFArc f9 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @GridStep f23 '' #zField
Os0 @PushWFArc f24 '' #zField
Os0 @PushWFArc f17 '' #zField
Os0 @UdExitEnd f25 '' #zField
Os0 @UdMethod f26 '' #zField
Os0 @GridStep f27 '' #zField
Os0 @PushWFArc f28 '' #zField
Os0 @PushWFArc f29 '' #zField
>Proto Os0 Os0 OrderProcess #zField
Os0 f0 guid 18616325E1DF522E #txt
Os0 f0 method start() #txt
Os0 f0 inParameterDecl '<> param;' #txt
Os0 f0 inParameterMapAction 'out.order=new mesoneer.ivy.pizza.store.entities.Order();
out.order.items=new java.util.ArrayList();
out.user=ivy.session.getSessionUser();
' #txt
Os0 f0 outParameterDecl '<> result;' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -15 15 #rect
Os0 f0 @|UdInitIcon #fIcon
Os0 f1 actionTable 'out=in;
' #txt
Os0 f1 actionCode 'import mesoneer.ivy.pizza.store.client.ProductClient;

ProductClient client = new ProductClient();
out.foods = client.getProducts(0);
out.drinks = client.getProducts(1);' #txt
Os0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get all products</name>
    </language>
</elementInfo>
' #txt
Os0 f1 200 42 112 44 -41 -8 #rect
Os0 f1 @|StepIcon #fIcon
Os0 f3 843 275 26 26 0 12 #rect
Os0 f3 @|UdProcessEndIcon #fIcon
Os0 f4 109 64 200 64 #arcP
Os0 f6 guid 18629E3B031AE856 #txt
Os0 f6 method order() #txt
Os0 f6 inParameterDecl '<> param;' #txt
Os0 f6 outParameterDecl '<> result;' #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order()</name>
    </language>
</elementInfo>
' #txt
Os0 f6 83 275 26 26 -23 15 #rect
Os0 f6 @|UdMethodIcon #fIcon
Os0 f10 419 371 26 26 0 12 #rect
Os0 f10 @|UdExitEndIcon #fIcon
Os0 f11 guid 18629F522E39C8FB #txt
Os0 f11 actionTable 'out=in;
' #txt
Os0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f11 83 371 26 26 -14 15 #rect
Os0 f11 @|UdEventIcon #fIcon
Os0 f12 109 384 419 384 #arcP
Os0 f13 guid 1862EE4F77AD8708 #txt
Os0 f13 method addToCart(String) #txt
Os0 f13 inParameterDecl '<String productId> param;' #txt
Os0 f13 inParameterMapAction 'out.productId=param.productId;
' #txt
Os0 f13 outParameterDecl '<String productId> result;' #txt
Os0 f13 outParameterMapAction 'result.productId=in.productId;
' #txt
Os0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addToCart(String)</name>
    </language>
</elementInfo>
' #txt
Os0 f13 83 163 26 26 -23 15 #rect
Os0 f13 @|UdMethodIcon #fIcon
Os0 f7 416 272 32 32 0 16 #rect
Os0 f7 @|AlternativeIcon #fIcon
Os0 f18 actionTable 'out=in;
' #txt
Os0 f18 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Order information is incorrect", "Please input the order form!");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Os0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show error</name>
    </language>
</elementInfo>
' #txt
Os0 f18 800 418 112 44 -29 -8 #rect
Os0 f18 @|StepIcon #fIcon
Os0 f19 expr in #txt
Os0 f19 outCond 'in.isValid == false' #txt
Os0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
    </language>
</elementInfo>
' #txt
Os0 f19 444 292 800 420 #arcP
Os0 f20 856 418 856 301 #arcP
Os0 f16 actionTable 'out=in;
' #txt
Os0 f16 actionCode 'import mesoneer.ivy.pizza.store.beans.UserOrderBean;
import mesoneer.ivy.pizza.store.utils.CartUtil;
import mesoneer.ivy.pizza.store.entities.Product;
import mesoneer.ivy.pizza.store.client.ProductClient;

ProductClient prdClient = new ProductClient();
Product prd = prdClient.getProduct(in.productId);
CartUtil.addToCart(prd);' #txt
Os0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add to cart</name>
    </language>
</elementInfo>
' #txt
Os0 f16 200 154 112 44 -28 -8 #rect
Os0 f16 @|StepIcon #fIcon
Os0 f14 109 176 200 176 #arcP
Os0 f21 587 51 26 26 0 12 #rect
Os0 f21 @|UdProcessEndIcon #fIcon
Os0 f5 587 163 26 26 0 12 #rect
Os0 f5 @|UdProcessEndIcon #fIcon
Os0 f15 312 176 587 176 #arcP
Os0 f22 312 64 587 64 #arcP
Os0 f8 actionTable 'out=in;
' #txt
Os0 f8 actionCode 'import org.apache.commons.lang3.StringUtils;

in.isValid = !(StringUtils.isBlank(in.order.name) 
|| StringUtils.isBlank(in.order.deliveryAddress)
|| StringUtils.isBlank(in.order.phoneNumber)
|| in.order.items.size() == 0);' #txt
Os0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validate</name>
    </language>
</elementInfo>
' #txt
Os0 f8 200 266 112 44 -20 -8 #rect
Os0 f8 @|StepIcon #fIcon
Os0 f9 109 288 200 288 #arcP
Os0 f2 312 288 416 288 #arcP
Os0 f23 actionTable 'out=in;
' #txt
Os0 f23 actionCode 'import java.util.UUID;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import mesoneer.ivy.pizza.store.dto.OrderCreateRequest;
import mesoneer.ivy.pizza.store.client.OrderClient;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

OrderCreateRequest request = new OrderCreateRequest(
	in.order.name,
	in.order.deliveryAddress,
	in.order.phoneNumber,
	in.order.description,
	in.order.items
);
OrderClient orderClient = new OrderClient();
orderClient.createOrder(request);
FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Your order is successful!", "Please wait for the delivery person! Enjoy your meal!");
FacesContext.getCurrentInstance().addMessage(null, msg);

out.order.items.clear();
out.order.name = "";
out.order.deliveryAddress = "";
out.order.phoneNumber = "";
out.order.description = "";
out.order.orderId = UUID.randomUUID().toString();' #txt
Os0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Make an order</name>
    </language>
</elementInfo>
' #txt
Os0 f23 648 266 112 44 -37 -8 #rect
Os0 f23 @|StepIcon #fIcon
Os0 f24 expr in #txt
Os0 f24 outCond 'in.isValid == true' #txt
Os0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
    </language>
</elementInfo>
' #txt
Os0 f24 448 288 648 288 #arcP
Os0 f24 0 0.5000000000000001 0 0 #arcLabel
Os0 f17 760 288 843 288 #arcP
Os0 f25 515 459 26 26 0 12 #rect
Os0 f25 @|UdExitEndIcon #fIcon
Os0 f26 guid 18648CD1DD53932E #txt
Os0 f26 method logout() #txt
Os0 f26 inParameterDecl '<> param;' #txt
Os0 f26 outParameterDecl '<> result;' #txt
Os0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout()</name>
    </language>
</elementInfo>
' #txt
Os0 f26 83 459 26 26 -23 15 #rect
Os0 f26 @|UdMethodIcon #fIcon
Os0 f27 actionTable 'out=in;
' #txt
Os0 f27 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
currentSession.logoutSessionUser();' #txt
Os0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout</name>
    </language>
</elementInfo>
' #txt
Os0 f27 248 450 112 44 -17 -8 #rect
Os0 f27 @|StepIcon #fIcon
Os0 f28 109 472 248 472 #arcP
Os0 f29 360 472 515 472 #arcP
>Proto Os0 .type mesoneer.ivy.pizza.store.Order.OrderData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f4 tail #connect
Os0 f4 head f1 mainIn #connect
Os0 f11 mainOut f12 tail #connect
Os0 f12 head f10 mainIn #connect
Os0 f19 head f18 mainIn #connect
Os0 f18 mainOut f20 tail #connect
Os0 f20 head f3 mainIn #connect
Os0 f13 mainOut f14 tail #connect
Os0 f14 head f16 mainIn #connect
Os0 f16 mainOut f15 tail #connect
Os0 f15 head f5 mainIn #connect
Os0 f1 mainOut f22 tail #connect
Os0 f22 head f21 mainIn #connect
Os0 f6 mainOut f9 tail #connect
Os0 f9 head f8 mainIn #connect
Os0 f8 mainOut f2 tail #connect
Os0 f2 head f7 in #connect
Os0 f7 out f24 tail #connect
Os0 f24 head f23 mainIn #connect
Os0 f7 out f19 tail #connect
Os0 f23 mainOut f17 tail #connect
Os0 f17 head f3 mainIn #connect
Os0 f26 mainOut f28 tail #connect
Os0 f28 head f27 mainIn #connect
Os0 f27 mainOut f29 tail #connect
Os0 f29 head f25 mainIn #connect
