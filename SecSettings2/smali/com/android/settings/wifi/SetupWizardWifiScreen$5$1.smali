.class Lcom/android/settings/wifi/SetupWizardWifiScreen$5$1;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/SetupWizardWifiScreen$5;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-wide/16 v10, 0x294

    const/16 v12, 0x46

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v7

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/wifi/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5$1;->this$1:Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v1

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    return-void
.end method
