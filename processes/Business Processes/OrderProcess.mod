[Ivy]
186160BF9948B56A 7.5.0 #module
>Proto >Proto Collection #zClass
Os0 OrderProcess Big #zClass
Os0 B #cInfo
Os0 #process
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @StartRequest f0 '' #zField
Os0 @UserDialog f9 '' #zField
Os0 @EndTask f8 '' #zField
Os0 @PushWFArc f10 '' #zField
Os0 @UserTask f1 '' #zField
Os0 @TkArc f2 '' #zField
Os0 @PushWFArc f3 '' #zField
>Proto Os0 Os0 OrderProcess #zField
Os0 f0 outLink start.ivp #txt
Os0 f0 inParamDecl '<> param;' #txt
Os0 f0 requestEnabled true #txt
Os0 f0 triggerEnabled false #txt
Os0 f0 callSignature start() #txt
Os0 f0 caseData businessCase.attach=true #txt
Os0 f0 showInStartList 1 #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order</name>
    </language>
</elementInfo>
' #txt
Os0 f0 @C|.responsibility Everybody #txt
Os0 f0 49 113 30 30 -20 17 #rect
Os0 f0 @|StartRequestIcon #fIcon
Os0 f9 dialogId mesoneer.ivy.pizza.store.Login #txt
Os0 f9 startMethod start() #txt
Os0 f9 requestActionDecl '<> param;' #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login</name>
    </language>
</elementInfo>
' #txt
Os0 f9 136 108 112 40 -14 -8 #rect
Os0 f9 @|UserDialogIcon #fIcon
Os0 f8 537 113 30 30 0 15 #rect
Os0 f8 @|EndIcon #fIcon
Os0 f10 79 128 136 128 #arcP
Os0 f10 0 0.5000000000000001 0 0 #arcLabel
Os0 f1 dialogId mesoneer.ivy.pizza.store.Order #txt
Os0 f1 startMethod start() #txt
Os0 f1 requestActionDecl '<> param;' #txt
Os0 f1 responseMappingAction 'out=in;
' #txt
Os0 f1 taskData 'TaskA.NAM=Making an order
TaskA.SKIP_TASK_LIST=true' #txt
Os0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Making an order</name>
    </language>
</elementInfo>
' #txt
Os0 f1 328 106 112 44 -41 -8 #rect
Os0 f1 @|UserTaskIcon #fIcon
Os0 f2 248 128 328 128 #arcP
Os0 f3 440 128 537 128 #arcP
>Proto Os0 .type mesoneer.ivy.pizza.store.Data #txt
>Proto Os0 .processKind NORMAL #txt
>Proto Os0 0 0 32 24 18 0 #rect
>Proto Os0 @|BIcon #fIcon
Os0 f0 mainOut f10 tail #connect
Os0 f10 head f9 mainIn #connect
Os0 f9 mainOut f2 tail #connect
Os0 f2 head f1 in #connect
Os0 f1 out f3 tail #connect
Os0 f3 head f8 mainIn #connect
