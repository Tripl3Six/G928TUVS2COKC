.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0x9

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_0
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    cmpl-float v3, v1, v5

    if-eqz v3, :cond_4

    :cond_0
    cmpl-float v3, v0, v5

    if-gtz v3, :cond_1

    cmpl-float v3, v1, v5

    if-lez v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    :goto_1
    return v2

    :cond_2
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v1, v3

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
