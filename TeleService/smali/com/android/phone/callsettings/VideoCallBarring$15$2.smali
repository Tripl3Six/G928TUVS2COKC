.class Lcom/android/phone/callsettings/VideoCallBarring$15$2;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring$15;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring$15;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v2, v2, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$3002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v2, v2, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->access$3200(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v3, v3, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mOldPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$2900(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v3, v3, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$3000(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v3, v3, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$3100(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$15$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$15;

    iget-object v2, v2, Lcom/android/phone/callsettings/VideoCallBarring$15;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    # setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$3002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
