.class Lcom/ime/framework/view/TipsDialog$39;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showTipsCMkeyGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$800(Lcom/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$800(Lcom/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setInputFieldChanged(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->getNextTipsDlg(I)I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$39;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    return-void
.end method
