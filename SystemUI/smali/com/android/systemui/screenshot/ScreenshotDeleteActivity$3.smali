.class Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

.field final synthetic val$currentUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->val$currentUserHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    # getter for: Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v4, 0x315

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    # getter for: Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.MEDIA_SCAN"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "where"

    const-string v5, "myfiles"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->val$currentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
