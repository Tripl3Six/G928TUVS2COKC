.class Lcom/android/settings/nfc/NfcListenStatusChange$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcListenStatusChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "android.intent.action.ACTION_EF_LOCK_STATE_GET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "responseType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "efLockUser"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "efLockRemote"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status iresponsetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status ilockUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status ilockremote = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v4

    if-gt v4, v8, :cond_3

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5, v8}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$102(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    :goto_0
    if-nez v3, :cond_5

    if-eq v1, v8, :cond_0

    if-ne v2, v8, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5, v8}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    :goto_1
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$100(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$200(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5, v9}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$102(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5, v9}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5, v9}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    const-string v5, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "responseType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "efLockUser"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "efLockRemote"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status iresponsetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status ilockUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[NfcListenStatus]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status ilockremote = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v4

    if-gt v4, v8, :cond_a

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5, v8}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$102(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    :goto_3
    if-eq v1, v8, :cond_8

    if-ne v2, v8, :cond_b

    :cond_8
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5, v8}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    :goto_4
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$100(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$200(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_9
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v5, v9}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$102(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v5, v9}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z

    goto :goto_4

    :cond_c
    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcListenStatusChange$1;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method
