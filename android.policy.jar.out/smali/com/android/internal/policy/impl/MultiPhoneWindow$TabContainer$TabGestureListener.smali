.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabContainer::onLongPress v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,tag(stackid) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,moving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeTab(I)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V
    invoke-static {v0, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_down(II)V

    goto/16 :goto_0
.end method
