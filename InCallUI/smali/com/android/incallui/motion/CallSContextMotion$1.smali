.class final Lcom/android/incallui/motion/CallSContextMotion$1;
.super Ljava/lang/Object;
.source "CallSContextMotion.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/motion/CallSContextMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v5, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged : scontext.getType()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "CallSContextMotion"

    const-string v7, "onSContextChanged: has not call"

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v9}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextPutDownMotion;->getAction()I

    move-result v0

    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v9}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x0

    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v6}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :sswitch_1
    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionCallMotion()V
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getDevicePositionContext()Landroid/hardware/scontext/SContextDevicePosition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextDevicePosition;->getPosition()I

    move-result v3

    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged : SContextDevicePosition.getPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$200()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "CallSContextMotion"

    const-string v7, "sFlatListener is null : stopFlatMotionListening"

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$200()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionUp()V

    goto/16 :goto_0

    :pswitch_3
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$200()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionDown()V

    goto/16 :goto_0

    :pswitch_4
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$200()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionFalse()V

    goto/16 :goto_0

    :pswitch_5
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$200()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionVerticality()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x16 -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
