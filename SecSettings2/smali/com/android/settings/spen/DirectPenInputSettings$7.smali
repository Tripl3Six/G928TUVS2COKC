.class Lcom/android/settings/spen/DirectPenInputSettings$7;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$200(Lcom/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/spen/DirectPenInputSettings;->access$200(Lcom/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # setter for: Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v0, v1}, Lcom/android/settings/spen/DirectPenInputSettings;->access$602(Lcom/android/settings/spen/DirectPenInputSettings;Z)Z

    return-void
.end method
