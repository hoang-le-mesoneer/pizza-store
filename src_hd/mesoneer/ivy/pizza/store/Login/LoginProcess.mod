[Ivy]
186115E9AA948D78 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @UdEvent f3 '' #zField
Ls0 @GridStep f2 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @Alternative f7 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @UdExitEnd f10 '' #zField
Ls0 @PushWFArc f11 '' #zField
Ls0 @PushWFArc f4 '' #zField
Ls0 @GridStep f12 '' #zField
Ls0 @Alternative f14 '' #zField
Ls0 @PushWFArc f15 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @UdProcessEnd f17 '' #zField
Ls0 @GridStep f19 '' #zField
Ls0 @PushWFArc f20 '' #zField
Ls0 @PushWFArc f18 '' #zField
Ls0 @UdMethod f5 '' #zField
Ls0 @PushWFArc f13 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 186115E9AAE304E3 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -15 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 691 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f3 guid 186115E9AB525662 #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -14 15 #rect
Ls0 f3 @|UdEventIcon #fIcon
Ls0 f2 actionTable 'out=in;
' #txt
Ls0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check User Is Logged In</name>
    </language>
</elementInfo>
' #txt
Ls0 f2 248 42 144 44 -63 -8 #rect
Ls0 f2 @|StepIcon #fIcon
Ls0 f6 109 64 248 64 #arcP
Ls0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name></name>
    </language>
</elementInfo>
' #txt
Ls0 f7 496 48 32 32 0 16 #rect
Ls0 f7 @|AlternativeIcon #fIcon
Ls0 f8 392 64 496 64 #arcP
Ls0 f9 expr in #txt
Ls0 f9 outCond 'in.isLoggedIn == false' #txt
Ls0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
    </language>
</elementInfo>
' #txt
Ls0 f9 528 64 691 64 #arcP
Ls0 f10 723 147 26 26 0 12 #rect
Ls0 f10 @|UdExitEndIcon #fIcon
Ls0 f11 expr in #txt
Ls0 f11 outCond 'in.isLoggedIn == true' #txt
Ls0 f11 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
    </language>
</elementInfo>
' #txt
Ls0 f11 523 69 723 155 #arcP
Ls0 f11 0 0.4981855008861507 1 0 #arcLabel
Ls0 f4 109 160 723 160 #arcP
Ls0 f12 actionTable 'out=in;
' #txt
Ls0 f12 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import org.apache.commons.lang3.StringUtils;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
boolean isLoginSuccess = currentSession.loginSessionUser(in.username, in.password);
in.isValid = !(StringUtils.isBlank(in.username) || StringUtils.isBlank(in.password)) && isLoginSuccess;' #txt
Ls0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validate</name>
    </language>
</elementInfo>
' #txt
Ls0 f12 264 234 112 44 -20 -8 #rect
Ls0 f12 @|StepIcon #fIcon
Ls0 f14 496 240 32 32 0 16 #rect
Ls0 f14 @|AlternativeIcon #fIcon
Ls0 f15 376 256 496 256 #arcP
Ls0 f16 expr in #txt
Ls0 f16 outCond 'in.isValid == true' #txt
Ls0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
    </language>
</elementInfo>
' #txt
Ls0 f16 523 251 723 165 #arcP
Ls0 f17 819 243 26 26 0 12 #rect
Ls0 f17 @|UdProcessEndIcon #fIcon
Ls0 f19 actionTable 'out=in;
' #txt
Ls0 f19 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Username or Password is incorrect", "");
FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ls0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show error</name>
    </language>
</elementInfo>
' #txt
Ls0 f19 648 234 112 44 -29 -8 #rect
Ls0 f19 @|StepIcon #fIcon
Ls0 f20 expr in #txt
Ls0 f20 outCond 'in.isValid == false' #txt
Ls0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
    </language>
</elementInfo>
' #txt
Ls0 f20 528 256 648 256 #arcP
Ls0 f20 0 0.6666666666666666 0 0 #arcLabel
Ls0 f18 760 256 819 256 #arcP
Ls0 f18 0 0.4134568585421232 0 0 #arcLabel
Ls0 f5 guid 18629D6BB823D451 #txt
Ls0 f5 method login() #txt
Ls0 f5 inParameterDecl '<> param;' #txt
Ls0 f5 outParameterDecl '<> result;' #txt
Ls0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login()</name>
    </language>
</elementInfo>
' #txt
Ls0 f5 83 243 26 26 -23 15 #rect
Ls0 f5 @|UdMethodIcon #fIcon
Ls0 f13 109 256 264 256 #arcP
>Proto Ls0 .type mesoneer.ivy.pizza.store.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f6 tail #connect
Ls0 f6 head f2 mainIn #connect
Ls0 f2 mainOut f8 tail #connect
Ls0 f8 head f7 in #connect
Ls0 f7 out f9 tail #connect
Ls0 f9 head f1 mainIn #connect
Ls0 f7 out f11 tail #connect
Ls0 f11 head f10 mainIn #connect
Ls0 f3 mainOut f4 tail #connect
Ls0 f4 head f10 mainIn #connect
Ls0 f12 mainOut f15 tail #connect
Ls0 f15 head f14 in #connect
Ls0 f14 out f16 tail #connect
Ls0 f16 head f10 mainIn #connect
Ls0 f14 out f20 tail #connect
Ls0 f20 head f19 mainIn #connect
Ls0 f19 mainOut f18 tail #connect
Ls0 f18 head f17 mainIn #connect
Ls0 f5 mainOut f13 tail #connect
Ls0 f13 head f12 mainIn #connect
