.class Lcom/android/incallui/SecInCallActivity$23;
.super Ljava/lang/Object;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecInCallActivity;->showOnWeakWifiDuringEpdgDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$23;->this$0:Lcom/android/incallui/SecInCallActivity;

    iput-object p2, p0, Lcom/android/incallui/SecInCallActivity$23;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$23;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$23;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onWeakWifiDuringEpdgShowNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
