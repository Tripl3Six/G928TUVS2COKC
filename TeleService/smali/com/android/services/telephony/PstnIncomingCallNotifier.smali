.class final Lcom/android/services/telephony/PstnIncomingCallNotifier;
.super Ljava/lang/Object;
.source "PstnIncomingCallNotifier.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhoneBase:Lcom/android/internal/telephony/Phone;

.field private final mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

.field private final mRATReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;-><init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier$2;-><init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleCdmaCallWaiting(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/PstnIncomingCallNotifier;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewUnknownConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V

    return-void
.end method

.method private addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .param p1    # Lcom/android/internal/telephony/Connection;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "addNewUnknownCall, connection is: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "determined new connection is: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v2, "otasp_in_call_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->otaspInCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v2, "swapped an old connection, new one is: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1    # Landroid/os/AsyncResult;

    const-string v5, "handleCdmaCallWaiting"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    iget-object v5, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->makeIncomingSecCallExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v4, :cond_0

    iget-object v5, v2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private handleNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1    # Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const-string v4, "handleNewRingingConnection"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    const-string v4, "enabled_boost_cpu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->boostCPU()V

    const-string v4, "handleNewRingingConnection : boostCPU"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v4, "support_mobilecarrier"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/phone/CarrierManager;->setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->makeIncomingSecCallExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideMmiDialog()V

    invoke-direct {p0, v2, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    :cond_2
    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->TTYNotification(Lcom/android/internal/telephony/Call;)Z

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/CarrierManager;->getInstance()Lcom/android/phone/CarrierManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/phone/CarrierManager;->setRejectCallType(Lcom/android/internal/telephony/Connection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleNewUnknownConnection(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1    # Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const-string v2, "handleNewUnknownConnection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_1

    const-string v2, "handleNewUnknownConnection called with non-Connection object"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->getTelephonyConnectionService()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    check-cast v3, Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0, v3, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .param p1    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->unregisterForNotifications()V

    if-eqz v0, :cond_0

    const-string v1, "Registering: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6f

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "incoming_number"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->checkMCID(Lcom/android/internal/telephony/Connection;)V

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    return-void
.end method

.method private unregisterForNotifications()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const-string v0, "Unregistering: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method teardown()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->unregisterForNotifications()V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
