.class public Lcom/android/settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static isFirstStartWifiForSamsungCloud:Z


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isBackupAppAvailable:Z

.field private isDropboxAvailable:Z

.field private isQuotaStorageAvailable:Z

.field private isSyncAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsBackupVersionOld:Z

.field private mIsConnected:Z

.field mIsMobileConnected:Z

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefCloudDescription:Landroid/preference/Preference;

.field private mPrefDocument:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Landroid/preference/Preference;

.field private mPrefMusics:Landroid/preference/Preference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Landroid/preference/Preference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressTimer:Landroid/os/CountDownTimer;

.field private mQuotaStorage:Landroid/preference/Preference;

.field private mRestore:Landroid/preference/Preference;

.field private mSettings:Lcom/android/settings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private mValidationStatus:I

.field private mVerifySamsungAccount:Landroid/preference/Preference;

.field public processAction:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field toastMsg:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isFirstStartWifiForSamsungCloud:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isSyncAvailable:Z

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsMobileConnected:Z

    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V

    return-void
.end method

.method private dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method private getLinkAccountSummary()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v1, :cond_1

    const v1, 0x7f0a1186

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1192

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1193

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "TB"

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getPreferencesReference()V
    .locals 1

    const-string v0, "cloud_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefCloudDescription:Landroid/preference/Preference;

    const-string v0, "dropbox_sync_account"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    const-string v0, "pref_set_account"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    const-string v0, "pref_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    const-string v0, "pref_photos"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    const-string v0, "pref_videos"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    const-string v0, "pref_musics"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    const-string v0, "pref_document"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private getSyncSummaryString(I)Ljava/lang/String;
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0a118e

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a118f

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a1190

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v0, :cond_0

    const v0, 0x7f0a1184

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a1172

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.cloudagent"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private registerCloudReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudAuthentication()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_SIGNIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestCloudStatus()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDelayedProgress()V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showDelayedProgress()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment$4;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;JJ)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string v0, "CloudSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivity():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    return-void

    :pswitch_0
    const-class v0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1174

    goto :goto_0

    :pswitch_1
    const-class v0, Lcom/android/settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1175

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/android/settings/cloud/CloudMusicsSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1182

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/android/settings/cloud/CloudDocumentSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1183

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_prefs_set_back_text"

    const v3, 0x7f0a0bb6

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "wifi_enable_next_on_connect"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isFirstStartWifiForSamsungCloud:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updatePreferences()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, 0x7f0a0bca

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefCloudDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v5}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v6, v8}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v6, v10}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v6, v11}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/settings/cloud/CloudSettings;->isSupportSync(I)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    const v5, 0x7f0a0659

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->isVideoSync()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v10}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->isMusicSync()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v11}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    invoke-virtual {v4}, Lcom/android/settings/cloud/CloudSettings;->isDocumentSync()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getSyncSummaryString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_6
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefCloudDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefCloudDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :goto_7
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    const v4, 0x7f0a1185

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_8
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_6

    :cond_9
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefCloudDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v4

    const v5, 0x7f0a1172

    invoke-virtual {p0, v5}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getLinkAccountSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method


# virtual methods
.method checkBackupAvailble()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.sCloudBackupApp"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsBackupVersionOld:Z

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.scloud.quota"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.scloud.backup"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsBackupVersionOld:Z

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iput-boolean v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    goto :goto_0

    :catch_2
    move-exception v0

    iput-boolean v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->init()V

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a117c

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    sget-boolean v0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isFirstStartWifiForSamsungCloud:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    :cond_2
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const v3, 0x7f0a0bcf

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a117c

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v8

    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v8}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefMusics:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDocument:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/cloud/CloudSettingConstants;->C_CHINA:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    const v1, 0x7f0a0bee

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v6}, Landroid/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "dialog"

    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    array-length v0, v7

    if-lez v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "account"

    aget-object v1, v7, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v7, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v7, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->checkBackupAvailble()V

    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method public showAllPreference()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isSyncAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isBackupAppAvailable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isQuotaStorageAvailable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Landroid/preference/Preference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_0
.end method

.method public showVerifyAccountPreference()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mVerifySamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Landroid/preference/Preference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mQuotaStorage:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mRestore:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
