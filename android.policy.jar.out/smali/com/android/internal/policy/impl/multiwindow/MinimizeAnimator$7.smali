.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeTrashCoverAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->closeTrashCoverAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$800(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
