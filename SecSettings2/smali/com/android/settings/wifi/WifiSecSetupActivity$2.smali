.class Lcom/android/settings/wifi/WifiSecSetupActivity$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$100(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$300(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$2$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity$2;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
