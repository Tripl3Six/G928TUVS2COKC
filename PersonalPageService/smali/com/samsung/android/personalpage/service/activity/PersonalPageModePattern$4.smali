.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;
.super Landroid/os/CountDownTimer;
.source "PersonalPageModePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # setter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$502(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;I)I

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V
    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$800(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1100(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->changePadding(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;Z)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isPatternimage:I
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1300(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRight(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$1000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    const v3, 0x7f05000d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
