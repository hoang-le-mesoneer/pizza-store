[Ivy]
186160D60C6B04A8 7.5.0 #module
>Proto >Proto Collection #zClass
Os0 OrderHandlingProcess Big #zClass
Os0 B #cInfo
Os0 #process
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @StartRequest f0 '' #zField
Os0 @UserDialog f2 '' #zField
Os0 @PushWFArc f3 '' #zField
Os0 @EndTask f7 '' #zField
Os0 @UserTask f1 '' #zField
Os0 @TkArc f4 '' #zField
Os0 @PushWFArc f5 '' #zField
>Proto Os0 Os0 OrderHandlingProcess #zField
Os0 f0 outLink start.ivp #txt
Os0 f0 inParamDecl '<> param;' #txt
Os0 f0 requestEnabled true #txt
Os0 f0 triggerEnabled false #txt
Os0 f0 callSignature start() #txt
Os0 f0 caseData businessCase.attach=true #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderHandling</name>
    </language>
</elementInfo>
' #txt
Os0 f0 @C|.responsibility Everybody #txt
Os0 f0 129 49 30 30 -20 17 #rect
Os0 f0 @|StartRequestIcon #fIcon
Os0 f2 dialogId mesoneer.ivy.pizza.store.Login #txt
Os0 f2 startMethod start() #txt
Os0 f2 requestActionDecl '<> param;' #txt
Os0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login</name>
    </language>
</elementInfo>
' #txt
Os0 f2 272 44 112 40 -14 -8 #rect
Os0 f2 @|UserDialogIcon #fIcon
Os0 f3 159 64 272 64 #arcP
Os0 f7 681 49 30 30 0 15 #rect
Os0 f7 @|EndIcon #fIcon
Os0 f1 dialogId mesoneer.ivy.pizza.store.OrderHandling #txt
Os0 f1 startMethod start() #txt
Os0 f1 requestActionDecl '<> param;' #txt
Os0 f1 responseMappingAction 'out=in;
' #txt
Os0 f1 taskData 'TaskA.EXP=new Duration(0, 0, 0, 1, 0, 0)
TaskA.EXROL=Pizza Store
TaskA.EXTYPE=0
TaskA.NAM=Order handler
TaskA.ROL=Pizza Store
TaskA.SKIP_TASK_LIST=true
TaskA.TYPE=0' #txt
Os0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order Handler</name>
    </language>
</elementInfo>
' #txt
Os0 f1 472 42 112 44 -37 -8 #rect
Os0 f1 @|UserTaskIcon #fIcon
Os0 f4 384 64 472 64 #arcP
Os0 f5 584 64 681 64 #arcP
>Proto Os0 .type mesoneer.ivy.pizza.store.Data #txt
>Proto Os0 .processKind NORMAL #txt
>Proto Os0 0 0 32 24 18 0 #rect
>Proto Os0 @|BIcon #fIcon
Os0 f0 mainOut f3 tail #connect
Os0 f3 head f2 mainIn #connect
Os0 f2 mainOut f4 tail #connect
Os0 f4 head f1 in #connect
Os0 f1 out f5 tail #connect
Os0 f5 head f7 mainIn #connect
