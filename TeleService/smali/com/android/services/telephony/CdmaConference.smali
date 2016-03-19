.class public Lcom/android/services/telephony/CdmaConference;
.super Landroid/telecom/Conference;
.source "CdmaConference.java"


# instance fields
.field private mCapabilities:I


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->setActive()V

    return-void
.end method

.method private getFirstConnection()Lcom/android/services/telephony/CdmaConnection;
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    goto :goto_0
.end method

.method private getOriginalCall()Lcom/android/internal/telephony/Call;
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    invoke-direct {p0, v2}, Lcom/android/services/telephony/CdmaConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Non CDMA connection found in a CDMA conference"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final isSwapSupportedAfterMerge()Z
    .locals 5

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f0f0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current network support swap after call merged capability is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2
.end method

.method private sendFlash()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getOriginalCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error while trying to send flash command."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onDisconnect()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getOriginalCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Found multiparty call to hangup for conference."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Exception thrown trying to hangup conference"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hold CDMA conference call."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Hold not supported for CDMA conference call."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onMerge()V
    .locals 2

    const-string v0, "Merging CDMA conference call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->isSwapSupportedAfterMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    :cond_0
    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/CdmaConference;->updateCapabilities(I)V

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 3

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getFirstConnection()Lcom/android/services/telephony/CdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/CdmaConnection;->onPlayDtmfTone(C)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "No CDMA connection found while trying to play dtmf tone."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Separate not supported for CDMA conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 3

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getFirstConnection()Lcom/android/services/telephony/CdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/CdmaConnection;->onStopDtmfTone()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "No CDMA connection found while trying to stop dtmf tone."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSwap()V
    .locals 2

    const-string v0, "Swapping CDMA conference call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    return-void
.end method

.method public onUnhold()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unhold CDMA conference call."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Unhold not supported for CDMA conference call."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateCapabilities(I)V
    .locals 0

    or-int/lit16 p1, p1, 0x4040

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/CdmaConference;->setCapabilities(I)V

    return-void
.end method
