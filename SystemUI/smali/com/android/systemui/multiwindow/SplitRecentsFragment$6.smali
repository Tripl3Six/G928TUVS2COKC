.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;
.super Ljava/lang/Object;
.source "SplitRecentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

.field final synthetic val$callback:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;->val$callback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;->val$callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->startListening(Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;)V

    :cond_0
    return-void
.end method
