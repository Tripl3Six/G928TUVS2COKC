.class Lcom/android/settings/wfd/WifiDisplaySettings$9;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onRouteAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onRouteChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onRouteRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onRouteSelected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onRouteUnselected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method
