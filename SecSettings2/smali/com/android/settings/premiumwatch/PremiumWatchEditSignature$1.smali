.class Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;
.super Ljava/lang/Object;
.source "PremiumWatchEditSignature.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;


# direct methods
.method constructor <init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mTempName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$102(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$000(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mTempName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$100(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mTempName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$100(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$200(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mTempName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$100(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$300(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-virtual {v2}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-virtual {v3}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a03bb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$302(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$300(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$200(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$200(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$000(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$200(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$300(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$300(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    # getter for: Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->access$300(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
