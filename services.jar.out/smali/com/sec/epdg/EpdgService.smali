.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$NetworkCallback;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;,
        Lcom/sec/epdg/EpdgService$TEpdgTimer;,
        Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;,
        Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final INTENT_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.DPD_TIMER_EXPIRED"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x36ee80

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static USE_EPDG_MANAGER_TEST:I

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultSubID:I

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mIsAirplaneMode:Z

.field private static mIsEpdgInitialized:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mW2LAfterEpdgStatusQuery:Z


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIsScreenOn:Z

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private mLastSsid:Ljava/lang/String;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private final mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private mWifiCallingState:I

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/sec/epdg/EpdgService;->USE_EPDG_MANAGER_TEST:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    sput v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    sput v1, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->W2LHANDOFFAILURE:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z

    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkRequest:Landroid/net/NetworkRequest;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    iput v3, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    iput v3, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:I

    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->criticalInit(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setNetworkRequestIfRequired(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    return-void
.end method

.method static synthetic access$1900()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopTEpdgTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isTEpdgTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/epdg/EpdgService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:I

    return p1
.end method

.method static synthetic access$2700()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/EpdgService;)I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/epdg/EpdgService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    return-void
.end method

.method static synthetic access$300(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$3100()[Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/epdg/EpdgService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$3600()I
    .locals 1

    sget v0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$3602(I)I
    .locals 0

    sput p0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$3700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$3900()I
    .locals 1

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleMapconChange()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/EpdgService;)I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$4902(Lcom/sec/epdg/EpdgService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$5002(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;)Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiToggleTimerFinish()V

    return-void
.end method

.method static synthetic access$5202(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$TEpdgTimer;)Lcom/sec/epdg/EpdgService$TEpdgTimer;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiToggleTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/EpdgService;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startTimerForNetworkRequest(J)V

    return-void
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgRilSharedData;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$800()Lcom/sec/epdg/EpdgContentReader;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .locals 0

    sput-object p0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method private static copyVpnLog(I)V
    .locals 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v6, v7

    move-object v3, v4

    :goto_1
    :try_start_3
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move-object v3, v4

    goto :goto_3

    :catch_3
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v2

    :goto_5
    :try_start_9
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_7
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_5

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_6
    :goto_9
    throw v9

    :catch_8
    move-exception v2

    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v2

    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_7

    :catchall_2
    move-exception v9

    move-object v6, v7

    move-object v3, v4

    goto :goto_7

    :catch_a
    move-exception v2

    move-object v3, v4

    goto :goto_5

    :catch_b
    move-exception v2

    move-object v6, v7

    move-object v3, v4

    goto :goto_5

    :catch_c
    move-exception v5

    goto/16 :goto_1

    :catch_d
    move-exception v5

    move-object v3, v4

    goto/16 :goto_1

    :cond_7
    move-object v6, v7

    move-object v3, v4

    goto/16 :goto_3
.end method

.method private criticalInit(Landroid/content/Context;)V
    .locals 3

    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getAPMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgManagerTestFlag()I
    .locals 1

    sget v0, Lcom/sec/epdg/EpdgService;->USE_EPDG_MANAGER_TEST:I

    return v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private getImsi(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .locals 4

    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .locals 7

    const/4 v3, 0x0

    const-class v4, Lcom/sec/epdg/EpdgService;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    const-string/jumbo v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "READY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "gsm.operator.isroaming"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    monitor-exit v4

    return v3

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getIsDynamicFqdn()Z
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getIsScreenOn()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsScreenOn: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .locals 4

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getTargetRilNetwork()I
    .locals 4

    const/16 v0, 0xff

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/16 v0, 0x19

    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const-string/jumbo v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    :cond_0
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .locals 22

    sget-boolean v17, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v18, v0

    const/16 v19, 0xe1

    invoke-virtual/range {v17 .. v19}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v17

    sput-object v17, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    const-string v17, "[EPDGService]"

    const-string v18, "Using EpdgRilAdapter "

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v18, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->makeEpdgServiceUp()V

    const-string v17, "[EPDGService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isDataRetryEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v18, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v18

    sget-object v19, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    const-string v17, "[EPDGService]"

    const-string v18, "Creating the Handover State machines"

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    sget v17, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    invoke-static {v9}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v13

    sget-object v17, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v20, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v18

    aput-object v18, v17, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataPathFromAppEnabled()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v14}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v17, "[EPDGService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not register InterfaceObserver "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isUseAlarm()Z

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mDpdIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "com.sec.epdg.DPD_TIMER_EXPIRED"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.SCREEN_ON"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.SCREEN_OFF"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.AIRPLANE_MODE"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_9

    const/4 v10, 0x1

    :goto_3
    const-string v17, "[EPDGService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_call_enable"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:I

    const-string v17, "[EPDGService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isWiFiCallEnabled is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "[EPDGService]"

    const-string v18, "WifiCall is disabled"

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v17

    sget-object v18, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    sget-object v17, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_6
    sget-object v17, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    :cond_8
    :goto_4
    const/16 v17, 0x1

    sput-boolean v17, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    return-void

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_a
    sget-object v17, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v11

    sget-object v17, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v12

    const-string v17, "[EPDGService]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "After db read: isDataRetryEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    goto :goto_4
.end method

.method private handleMapconChange()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v4, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    :cond_0
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const-string v2, "[EPDGService]"

    const-string v3, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "[EPDGService]"

    const-string v3, "DNS is successful, start profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1

    :cond_7
    const-string v2, "[EPDGService]"

    const-string v3, "DNS failed for all tries"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "[EPDGService]"

    const-string v7, "Inside handleSImStateChange: "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v5, -0x1

    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IMSI"

    const-string v2, "LOADED"

    const-string v0, "ABSENT"

    if-eqz v4, :cond_4

    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v9, :cond_1

    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgService;->getImsi(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgService;->getImsi(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v3, v9, :cond_3

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    iput-object v10, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    iput-object v10, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static idiImsiUpdate()Z
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiImsi()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static idiMacInclude()Z
    .locals 1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiMac()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->idiMacInclude()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x40

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->getAPMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rewritten IDi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    const-string v4, "[EPDGService]"

    const-string v5, "Could not get AP MAC address"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error rewriting URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "[EPDGService]"

    const-string v5, "Invalid IDi format"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private is3gNetwork(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEpdgAvailable()Z
    .locals 2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isL2WRecommended(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isL2WRecommended(): (EPDG NOT AVAILABLE)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isL2WRecommended(): null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isL2WRecommended(): result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsTestingOnDemandPdnHandoff()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private isTEpdgTimerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseAlarm()Z
    .locals 2

    const-string v0, "DTR"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isW2LRecommended(I)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v4, p0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isW2LRecommended: rilCid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "isW2LRecommended(): null apnType"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isW2LRecommended(): result is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v3, "cbs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v4, p0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private isWifiCallingEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiToggleTimerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePdnFromWifi()V
    .locals 6

    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 4

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySimChangedEvent()V
    .locals 5

    const/4 v4, 0x3

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prev imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Prev imsi2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    goto :goto_0
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xd

    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    if-ne v1, v5, :cond_1

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v1, v3, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;-><init>(Lcom/sec/epdg/EpdgService;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;->start()V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    if-ne v1, v5, :cond_2

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-eq v1, v3, :cond_2

    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    if-ne v1, v4, :cond_0

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v1, v3, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    goto :goto_0
.end method

.method private onSystemSelectTimerFinish()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiConnected()V
    .locals 3

    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isTEpdgTimerRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_1
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x37

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_3
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiGoodEnough()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v2, v4}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EPDG_AVAILABLE"

    invoke-static {v2}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    const-string v3, "Send EPDG Available broadcast"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const-string v2, "[EPDGService]"

    const-string v3, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    new-instance v0, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;-><init>(Lcom/sec/epdg/EpdgService;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$InternetKeepAliveAsyncTask;->start()V

    const-string v2, "[EPDGService]"

    const-string v3, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[EPDGService]"

    const-string v3, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_1
    return-void
.end method

.method private onWifiToggleTimerFinish()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when wifi toggle timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when wifi toggle timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static resetDataDependency()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "[EPDGService]"

    const-string v3, "L2W handover failed : (null apnType)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isL2WRecommended(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "[EPDGService]"

    const-string v3, "Firing L2W handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L2W Handover not required."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "[EPDGService]"

    const-string v3, "L2W is not recommended"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not retry L2W handover. apnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "[EPDGService]"

    const-string v3, "W2L handover failed : (null apnType)"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "[EPDGService]"

    const-string v3, "Firing W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "W2L handover not required."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "[EPDGService]"

    const-string v3, "W2L handover not recommended"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not retry W2L handover. apnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendIpsecConnFailIntent(Lcom/sec/epdg/IWlanError;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ikeerror"

    invoke-static {p0}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p2, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .locals 11

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v7

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "networkType returned:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    :cond_1
    const-string v6, "Unknown"

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " apnName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ipsecEvent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sparse-switch v7, :sswitch_data_0

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal NetworkType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "[EPDGService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ipsecEvent returned to UI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "networkType"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "ipsecevent"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "networkType"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "ipsecevent"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "networkType"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "ipsecevent"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_3
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "networkType"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "ipsecevent"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "networkType"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "ipsecevent"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x17 -> :sswitch_4
    .end sparse-switch
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_3
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    move v7, v8

    :goto_1
    iput v7, v5, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    move v7, v8

    :goto_2
    iput v7, v5, Landroid/os/Message;->arg2:I

    :cond_4
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    move v7, v9

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_9

    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    :goto_3
    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static setDataDependency(ZZ)V
    .locals 3

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->setDataDependency(IZ)V

    :cond_1
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .locals 4

    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired(I)V

    :cond_0
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .locals 5

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :sswitch_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public static setEpdgManagerTestFlag(I)V
    .locals 0

    sput p0, Lcom/sec/epdg/EpdgService;->USE_EPDG_MANAGER_TEST:I

    return-void
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .locals 2

    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNetworkRequestIfRequired(I)V
    .locals 5

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :sswitch_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "requested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/epdg/EpdgService$NetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$NetworkCallback;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v4, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .locals 5

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "[HANDOFF]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;

    invoke-direct {v2, p0, v4, p1}, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;-><init>(Lcom/sec/epdg/EpdgService;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[HANDOFF]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;

    invoke-direct {v2, p0, v4, p1}, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;-><init>(Lcom/sec/epdg/EpdgService;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[HANDOFF]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;

    invoke-direct {v2, p0, v4, p1}, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;-><init>(Lcom/sec/epdg/EpdgService;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v1, "[HANDOFF]"

    const-string v2, "Starting HandOver To Wifi"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v2, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v3, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startTEpdgTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopWifiToggleTimer()V

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG TEpdg timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgService$TEpdgTimer;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$TEpdgTimer;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$TEpdgTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private startTimerForNetworkRequest(J)V
    .locals 3

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForNetworkRequest: Updating the alarm with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgNetworkRequestRunnable:Lcom/sec/epdg/EpdgService$EpdgNetworkRequestRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTimerForPdnXfer(JI)V
    .locals 3

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTimersIfNeeded()V
    .locals 2

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "Wifi Setting on"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "IMS PDN connected when wifi off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTEpdgTimer()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopWifiToggleTimer()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "IMS PDN not connected when wifi off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi Setting off"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "isNotRequireTimer is true. reset it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    goto :goto_0
.end method

.method private startWifiProfiling()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Don\'t start wifi profiling.MAPCON is LTE or LTE:WIFI(NOT OoS)"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    :goto_1
    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;III)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiLevel()I

    move-result v4

    goto :goto_1
.end method

.method private startWifiToggleTimer()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isTEpdgTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG wifi toggle timer not started as TEpdg timer is already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG wifi toggle timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private stopInternetKeepAlive()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private stopTEpdgTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG TEpdg timer stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$TEpdgTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;

    :cond_0
    return-void
.end method

.method private stopWifiToggleTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG wifi toggle timer stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    :cond_0
    return-void
.end method

.method static updateOnwUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v11

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eqz v11, :cond_2

    :cond_0
    const/4 v11, 0x3

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    sget-boolean v11, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-eqz v11, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->idiImsiUpdate()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    const/4 v11, 0x0

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " updateOnwUriImsi() SimState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " SimState2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ImsiUpdate:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/epdg/EpdgService;->idiImsiUpdate()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_3
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateOnwUriImsi: imsi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-eqz v1, :cond_5

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string v11, "[EPDGService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No need to update the OwnUri imsi:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-le v11, v12, :cond_8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-le v11, v12, :cond_7

    :cond_6
    const-string v11, "[EPDGService]"

    const-string v12, "Operator is not upated or wrong"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_1
    move-object/from16 v2, p1

    const-string v11, "@"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aget-object v5, v9, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "nai.epc.mnc"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "[EPDGService]"

    const-string/jumbo v12, "nai.epc.mnc not present"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x3

    const/4 v12, 0x6

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "nai.epc.mnc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".mcc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".3gppnetwork.org"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New Own Uri is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public bootCompleted()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-ne v0, v3, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v2, -0x1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eq v2, v6, :cond_2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, -0x1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eq v2, v6, :cond_2

    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    const/4 v3, 0x0

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "UNSUCCESSFUL"

    :goto_3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data Dependency : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Request : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mNetworkRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, "SUCCESSFUL"

    goto :goto_3
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    if-gez v1, :cond_1

    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public makeEpdgServiceUp()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Z)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "action_wifi_call_enable_broadcast"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onNetworkStatusChanged()V
    .locals 6

    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "onNetworkStatusChanged"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v3, :cond_3

    const-string v3, "[EPDGService]"

    const-string v4, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v2, v3, :cond_4

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v3, v1, :cond_8

    :cond_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_5

    if-nez v1, :cond_9

    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopTEpdgTimer()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "[EPDGService]"

    const-string v4, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active Rat Changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v2, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5, v2}, Lcom/sec/epdg/EpdgService;->startTimerForPdnXfer(JI)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setNetworkRequestIfRequired(I)V

    :cond_8
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellularAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "[EPDGService]"

    const-string v4, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_a
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_2
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
