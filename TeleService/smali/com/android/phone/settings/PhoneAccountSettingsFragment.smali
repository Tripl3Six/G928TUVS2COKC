.class public Lcom/android/phone/settings/PhoneAccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAccountList:Landroid/preference/PreferenceCategory;

.field private mConfigureCallAssistant:Landroid/preference/Preference;

.field private mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mUseSipCalling:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/settings/PhoneAccountSettingsFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method private getConfigureCallAssistantIntent()Landroid/content/Intent;
    .locals 4

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 3
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/SipUtil;->useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private initAccountList()V
    .locals 7

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.telecom.action.SHOW_CALL_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2, v5}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateConfigureCallAssistant()V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getConfigureCallAssistantIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "phone_accounts_call_assistant_settings_category_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateDefaultOutgoingAccountsModel()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0a00ad

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateConfigureCallAssistant()V

    :cond_0
    return-void
.end method

.method public onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;
    .param p2    # Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p2}, Landroid/telecom/TelecomManager;->setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateCallAssistantModel()V

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateConfigureCallAssistant()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f04006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getConfigureCallAssistantIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not resolve call assistant configure intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v5, 0x7f070030

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "phone_accounts_accounts_list_category_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0576

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->initAccountList()V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/phone/settings/TtyModeListPreference;->init()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "default_outgoing_account"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->hasMultipleCallCapableAccounts()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :goto_1
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getSimCallManagers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "phone_accounts_call_assistant_settings_category_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "use_sip_calling_options_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    const v5, 0x7f090002

    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v6}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v6}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "sip_receive_calls_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v6}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "wifi_calling_call_assistant_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    const v6, 0x7f0a00b0

    invoke-virtual {v5, v6}, Lcom/android/phone/settings/AccountSelectionPreference;->setDialogTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateCallAssistantModel()V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "wifi_calling_configure_call_assistant_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateConfigureCallAssistant()V

    goto/16 :goto_2

    :cond_7
    const v5, 0x7f090001

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "phone_accounts_sip_settings_category_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public updateCallAssistantModel()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSimCallManagers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0a00ae

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-void
.end method
