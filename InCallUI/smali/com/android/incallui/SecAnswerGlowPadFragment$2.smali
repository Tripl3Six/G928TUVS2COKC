.class Lcom/android/incallui/SecAnswerGlowPadFragment$2;
.super Ljava/lang/Object;
.source "SecAnswerGlowPadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerGlowPadFragment;->showCustomMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$2;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$2;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    # invokes: Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCustomMessagePopup()V
    invoke-static {v0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->access$200(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$2;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    return-void
.end method
