.class Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;
.super Landroid/database/ContentObserver;
.source "GsmUmtsVideoCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsVideoCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsVideoCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsVideoCallForwardOptions;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v4, "GsmUmtsVideoCallForwardOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneModeOn()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    # invokes: Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->access$000(Lcom/android/phone/GsmUmtsVideoCallForwardOptions;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-virtual {v4}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-string v4, "GsmUmtsVideoCallForwardOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling pref no "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    # invokes: Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAirplaneModeOn()Z
    invoke-static {v4}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->access$000(Lcom/android/phone/GsmUmtsVideoCallForwardOptions;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method
