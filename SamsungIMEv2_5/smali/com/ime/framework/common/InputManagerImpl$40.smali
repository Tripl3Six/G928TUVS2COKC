.class Lcom/ime/framework/common/InputManagerImpl$40;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$40;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$40;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$6500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recentapps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$40;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v1, v2}, Lcom/ime/framework/common/InputManagerImpl;->access$6502(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$40;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1, p2}, Lcom/ime/framework/common/InputManagerImpl;->dismissPopupForSystemDialogs(Landroid/content/Intent;)V

    return-void
.end method
