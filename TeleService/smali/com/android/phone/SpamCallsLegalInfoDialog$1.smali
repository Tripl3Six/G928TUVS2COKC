.class Lcom/android/phone/SpamCallsLegalInfoDialog$1;
.super Ljava/lang/Object;
.source "SpamCallsLegalInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpamCallsLegalInfoDialog;->showLegalInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$1;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$1;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->finish()V

    return-void
.end method
