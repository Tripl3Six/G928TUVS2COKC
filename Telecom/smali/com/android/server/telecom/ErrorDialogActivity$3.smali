.class Lcom/android/server/telecom/ErrorDialogActivity$3;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$3;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$3;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    return-void
.end method
