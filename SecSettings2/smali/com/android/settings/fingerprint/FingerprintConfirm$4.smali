.class Lcom/android/settings/fingerprint/FingerprintConfirm$4;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FingerprintConfirm"

    const-string v1, "showDatabaseFailureDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$400(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/android/settings/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$400(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/android/settings/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    return-void
.end method
