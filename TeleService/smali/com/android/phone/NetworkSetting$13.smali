.class Lcom/android/phone/NetworkSetting$13;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/NetworkSetting;->access$4500(Lcom/android/phone/NetworkSetting;Z)V

    const-string v1, "network_selection_delay"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const-string v1, "VAU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v6}, Lcom/android/phone/NetworkSetting;->access$3802(Lcom/android/phone/NetworkSetting;I)I

    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$4900(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectListPopUp()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$3300(Lcom/android/phone/NetworkSetting;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, -0x2713

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$3802(Lcom/android/phone/NetworkSetting;I)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$13;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkSetting;->access$5000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    goto :goto_1
.end method
