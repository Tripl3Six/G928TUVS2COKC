.class Lcom/android/incallui/SecTabletDialpadView$3;
.super Ljava/lang/Object;
.source "SecTabletDialpadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletDialpadView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletDialpadView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletDialpadView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadView$3;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView$3;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    return-void
.end method
