.class Lcom/android/phone/PreferredNetworks$2;
.super Landroid/database/ContentObserver;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    # getter for: Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/PreferredNetworks;->access$200(Lcom/android/phone/PreferredNetworks;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks$2;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v0}, Lcom/android/phone/PreferredNetworks;->finish()V

    :cond_0
    return-void
.end method
