.class Lcom/android/phone/photoring/PhotoRingScreen$10;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2500(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_photoring_mobile_data_show"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2400(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2402(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$200(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->access$100(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->access$400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->access$400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a062f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->access$302(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
