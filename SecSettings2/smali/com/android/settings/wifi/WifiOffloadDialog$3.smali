.class Lcom/android/settings/wifi/WifiOffloadDialog$3;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$002(Lcom/android/settings/wifi/WifiOffloadDialog;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # getter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$100(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/net/wifi/WifiOffloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadDialog"

    const-string v1, "Offload onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    # getter for: Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$100(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/net/wifi/WifiOffloadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startTimer()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    return-void
.end method
