.class Lcom/android/server/telecom/ConnectionServiceWrapper$3;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Lcom/android/server/telecom/ServiceBinder$BindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;->createConnection(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field final synthetic val$call:Lcom/android/server/telecom/Call;

.field final synthetic val$response:Lcom/android/server/telecom/CreateConnectionResponse;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iput-object p2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    iput-object p3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$response:Lcom/android/server/telecom/CreateConnectionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Failure to call %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v4}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$response:Lcom/android/server/telecom/CreateConnectionResponse;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public onSuccess()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "createConnection(): callId is empty"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$800(Lcom/android/server/telecom/ConnectionServiceWrapper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$response:Lcom/android/server/telecom/CreateConnectionResponse;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConnectionCallId(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sip"

    if-eq v3, v4, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.services.telephony.sip.SipConnectionService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createConnection extras:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v4, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$900(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getConnectionManagerPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    new-instance v3, Landroid/telecom/ConnectionRequest;

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v6}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v7

    invoke-direct {v3, v5, v6, v4, v7}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->isUnknown()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "Failure to createConnection -- %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v4}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$3;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mPendingResponses:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$800(Lcom/android/server/telecom/ConnectionServiceWrapper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionResponse;

    new-instance v2, Landroid/telecom/DisconnectCause;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_0

    :cond_3
    move-object v4, v0

    goto :goto_1
.end method
