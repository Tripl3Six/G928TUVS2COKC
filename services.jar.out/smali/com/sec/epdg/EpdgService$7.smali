.class Lcom/sec/epdg/EpdgService$7;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1500(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getIsScreenOn()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, add route for epdg server IP"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiProfiling()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed in all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
