.class Lcom/android/settings/DataUsageSummary$6;
.super Landroid/telephony/PhoneStateListener;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "volte"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v4}, Lcom/android/settings/DataUsageSummary;->access$900(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v5}, Lcom/android/settings/DataUsageSummary;->access$900(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$900(Landroid/view/View;Z)V

    goto :goto_0
.end method
