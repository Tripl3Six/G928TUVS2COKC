.class Lcom/android/incallui/LockScreenDuringCall$2;
.super Ljava/lang/Object;
.source "LockScreenDuringCall.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/LockScreenDuringCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/LockScreenDuringCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/LockScreenDuringCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/LockScreenDuringCall$2;->this$0:Lcom/android/incallui/LockScreenDuringCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/LockScreenDuringCall$2;->this$0:Lcom/android/incallui/LockScreenDuringCall;

    const-string v1, "onDoubleTap event - stopSelf"

    # invokes: Lcom/android/incallui/LockScreenDuringCall;->sendNextLockEventAndStopNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/LockScreenDuringCall;->access$000(Lcom/android/incallui/LockScreenDuringCall;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
