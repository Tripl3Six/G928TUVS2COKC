.class public Lcom/android/phone/MMIDialogActivity;
.super Landroid/app/Activity;
.source "MMIDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMMIDialog:Landroid/app/Dialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/MMIDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .param p0    # Lcom/android/phone/MMIDialogActivity;
    .param p1    # Lcom/android/internal/telephony/MmiCode;

    invoke-direct {p0, p1}, Lcom/android/phone/MMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0
    .param p0    # Lcom/android/phone/MMIDialogActivity;

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->onMMICancel()V

    return-void
.end method

.method private dismissDialogsAndFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    return-void
.end method

.method private onMMICancel()V
    .locals 2

    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel: finishing InCallScreen..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    return-void
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .locals 5
    .param p1    # Lcom/android/internal/telephony/MmiCode;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIComplete, phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p0, p1, v4, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Got MMI_COMPLETE, finishing dialog activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method

.method private showMMIDialog()V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phoneId"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    new-instance v1, Lcom/android/phone/MMIDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MMIDialogActivity$1;-><init>(Lcom/android/phone/MMIDialogActivity;)V

    iput-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    const v1, 0x7f0a01fc

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->showMMIDialog()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
