[Ivy]
1861626320AD2485 7.5.0 #module
>Proto >Proto Collection #zClass
Os0 OrderHandlingProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @UdInit f0 '' #zField
Os0 @UdProcessEnd f3 '' #zField
Os0 @UdMethod f6 '' #zField
Os0 @UdExitEnd f10 '' #zField
Os0 @UdEvent f11 '' #zField
Os0 @GridStep f1 '' #zField
Os0 @GridStep f2 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @PushWFArc f4 '' #zField
Os0 @PushWFArc f12 '' #zField
Os0 @PushWFArc f8 '' #zField
Os0 @PushWFArc f7 '' #zField
Os0 @UdMethod f9 '' #zField
Os0 @UdExitEnd f13 '' #zField
Os0 @PushWFArc f14 '' #zField
Os0 @GridStep f15 '' #zField
>Proto Os0 Os0 OrderHandlingProcess #zField
Os0 f0 guid 18629FBC387F96D5 #txt
Os0 f0 method start() #txt
Os0 f0 inParameterDecl '<> param;' #txt
Os0 f0 inParameterMapAction 'out.user=ivy.session.getSessionUser();
' #txt
Os0 f0 outParameterDecl '<> result;' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Os0 f0 99 99 26 26 -15 15 #rect
Os0 f0 @|UdInitIcon #fIcon
Os0 f3 531 99 26 26 0 12 #rect
Os0 f3 @|UdProcessEndIcon #fIcon
Os0 f6 guid 18629FBC388CFD2C #txt
Os0 f6 method updateOrder(String,Boolean,String) #txt
Os0 f6 inParameterDecl '<String orderId,Boolean isAccepted,String role> param;' #txt
Os0 f6 inParameterMapAction 'out.isAccepted=param.isAccepted;
out.orderId=param.orderId;
out.role=param.role;
' #txt
Os0 f6 outParameterDecl '<> result;' #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateOrder(String,Boolean,String)</name>
    </language>
</elementInfo>
' #txt
Os0 f6 99 211 26 26 -23 15 #rect
Os0 f6 @|UdMethodIcon #fIcon
Os0 f10 531 11 26 26 0 12 #rect
Os0 f10 @|UdExitEndIcon #fIcon
Os0 f11 guid 18629FBC3885689B #txt
Os0 f11 actionTable 'out=in;
' #txt
Os0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f11 99 11 26 26 -14 15 #rect
Os0 f11 @|UdEventIcon #fIcon
Os0 f1 actionTable 'out=in;
out.role=ivy.session.getSessionUser().getRoles().get(1).getDisplayName();
' #txt
Os0 f1 actionCode 'import mesoneer.ivy.pizza.store.client.OrderClient;

OrderClient client = new OrderClient();
out.orders = client.getOrders(in.role);
out.deliveredOrders = client.getOrders(in.role, "DELIVERED");
out.declinedOrders = client.getOrders(in.role, "DECLINED");' #txt
Os0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get all orders</name>
    </language>
</elementInfo>
' #txt
Os0 f1 272 90 112 44 -35 -8 #rect
Os0 f1 @|StepIcon #fIcon
Os0 f2 actionTable 'out=in;
' #txt
Os0 f2 actionCode 'import mesoneer.ivy.pizza.store.client.OrderClient;

OrderClient client = new OrderClient();
client.updateOrderStatus(new mesoneer.ivy.pizza.store.dto.OrderUpdateRequest(in.orderId, in.role, in.isAccepted));' #txt
Os0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm or reject orders</name>
    </language>
</elementInfo>
' #txt
Os0 f2 264 202 128 44 -61 -8 #rect
Os0 f2 @|StepIcon #fIcon
Os0 f5 384 112 531 112 #arcP
Os0 f4 125 112 272 112 #arcP
Os0 f12 125 24 531 24 #arcP
Os0 f8 125 224 264 224 #arcP
Os0 f7 328 202 328 134 #arcP
Os0 f9 guid 186489053451AA11 #txt
Os0 f9 method logout() #txt
Os0 f9 inParameterDecl '<> param;' #txt
Os0 f9 outParameterDecl '<> result;' #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout()</name>
    </language>
</elementInfo>
' #txt
Os0 f9 99 307 26 26 -23 15 #rect
Os0 f9 @|UdMethodIcon #fIcon
Os0 f13 531 307 26 26 0 12 #rect
Os0 f13 @|UdExitEndIcon #fIcon
Os0 f14 125 320 531 320 #arcP
Os0 f15 actionTable 'out=in;
' #txt
Os0 f15 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
currentSession.logoutSessionUser();' #txt
Os0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout</name>
    </language>
</elementInfo>
' #txt
Os0 f15 272 298 112 44 -17 -8 #rect
Os0 f15 @|StepIcon #fIcon
>Proto Os0 .type mesoneer.ivy.pizza.store.OrderHandling.OrderHandlingData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f4 tail #connect
Os0 f4 head f1 mainIn #connect
Os0 f1 mainOut f5 tail #connect
Os0 f5 head f3 mainIn #connect
Os0 f6 mainOut f8 tail #connect
Os0 f8 head f2 mainIn #connect
Os0 f11 mainOut f12 tail #connect
Os0 f12 head f10 mainIn #connect
Os0 f2 mainOut f7 tail #connect
Os0 f7 head f1 mainIn #connect
Os0 f9 mainOut f14 tail #connect
Os0 f14 head f13 mainIn #connect
