.class public Lcom/android/incallui/AudioModeProvider;
.super Ljava/lang/Object;
.source "AudioModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    }
.end annotation


# static fields
.field private static sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;


# instance fields
.field private mAudioMode:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuted:Z

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;

.field private mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v0}, Lcom/android/incallui/AudioModeProvider;-><init>()V

    sput-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/incallui/AudioModeProvider$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AudioModeProvider$1;-><init>(Lcom/android/incallui/AudioModeProvider;)V

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/AudioModeProvider;
    .locals 1

    sget-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method

.method private showTabLockIfNeeded(I)V
    .locals 2

    const-string v1, "lock_screen_during_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    :cond_0
    return-void
.end method

.method public clearPhone()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method public getAudioMode()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    return v0
.end method

.method public getSupportedModes()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    return v0
.end method

.method public onAudioModeChange(IZ)V
    .locals 4

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    iget-object v3, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    iget v3, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {v2, v3}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/AudioModeProvider;->showTabLockIfNeeded(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    if-eq v3, p2, :cond_4

    iput-boolean p2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    iget-object v3, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {v2, v3}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    :cond_5
    return-void
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 3

    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    iget-object v2, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    iget v2, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {v1, v2}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/AudioModeProvider;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    return-void
.end method
