.class Lcom/android/incallui/HeadUpNotificationService$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HeadUpNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/HeadUpNotificationService;->animateForHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/HeadUpNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/incallui/HeadUpNotificationService;->access$1002(Lcom/android/incallui/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/HeadUpNotificationService;->stopSelf()V

    return-void
.end method
