.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mBroadTime:J

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/WFDUibcManager$Keyevnt_arrC;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field private rEv:Ljava/lang/Integer;

.field public volatile running:Z

.field private screenRatio:F

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wfdRatio:F

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v2}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    iput-boolean v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    iput v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private getMetaFlag(IZ)V
    .locals 6

    const/16 v5, 0x71

    const/16 v4, 0x3c

    const/16 v3, 0x3b

    const/16 v2, 0x3a

    const/16 v1, 0x39

    if-eqz p2, :cond_a

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_1

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_1
    if-ne p1, v4, :cond_2

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_5

    :cond_3
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v1, :cond_4

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_4
    if-ne p1, v2, :cond_5

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_5
    if-eq p1, v5, :cond_6

    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    :cond_6
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_7

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_7
    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_8
    const/16 v0, 0x77

    if-ne p1, v0, :cond_9

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_9
    :goto_0
    return-void

    :cond_a
    if-eq p1, v3, :cond_b

    if-ne p1, v4, :cond_d

    :cond_b
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_c

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_c
    if-ne p1, v4, :cond_d

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_d
    if-eq p1, v1, :cond_e

    if-ne p1, v2, :cond_10

    :cond_e
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v1, :cond_f

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_f
    if-ne p1, v2, :cond_10

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_10
    if-eq p1, v5, :cond_11

    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    :cond_11
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_12

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_12
    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_13
    const/16 v0, 0x77

    if-ne p1, v0, :cond_14

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_14
    const/16 v0, 0x73

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v0, :cond_15

    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0

    :cond_15
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0
.end method

.method private handleCameraTouch(I)V
    .locals 14

    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v10, 0x1

    const/4 v0, -0x1

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_1

    :cond_0
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a

    :cond_2
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    :goto_1
    if-nez v0, :cond_9

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lt v7, v13, :cond_5

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_6

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_6

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_7
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    :cond_8
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    :cond_a
    if-eq v0, v10, :cond_b

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    :cond_b
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    div-float v5, v7, v11

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v7

    mul-float/2addr v7, v9

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    if-ne v0, v10, :cond_c

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    :goto_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v12, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    goto :goto_3
.end method

.method private handleKeyEvent()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    const/16 v20, -0x1

    const/16 v19, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    if-gez v13, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget v22, v17, v21

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move/from16 v13, v22

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_3

    new-instance v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    :cond_6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    :cond_7
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_b

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    :cond_b
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    const-string v2, "WFDUibcManager"

    const-string v3, "Long press detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4
.end method

.method private handleMotionEvent()V
    .locals 45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v34, v0

    check-cast v34, Landroid/view/MotionEvent;

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v14

    if-gez v14, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    aget v28, v21, v27

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move/from16 v14, v28

    :cond_0
    if-gez v14, :cond_3

    const-string v4, "WFDUibcManager"

    const-string v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v4, :cond_4

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_connect"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    :cond_6
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v8, 0xa

    sub-long/2addr v6, v8

    const/16 v8, 0x8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x2002

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v40

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received displays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    :goto_3
    move-object/from16 v0, v40

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    aget-object v23, v40, v26

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v14, v4, :cond_a

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation display ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v41, -0x1

    :try_start_0
    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    # getter for: Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v41

    :cond_9
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v41

    if-eq v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_2

    :catch_0
    move-exception v25

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display name too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Use default UIBC."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v41, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    :cond_b
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIBC mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    sget-object v4, Landroid/media/WFDUibcManager$3;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    div-float v5, v5, v36

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v42

    if-nez v42, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_c
    const/4 v4, 0x3

    move/from16 v0, v42

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_7

    :cond_d
    const/4 v4, 0x2

    move/from16 v0, v42

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v35, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v35

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v38, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v39

    div-float v5, v5, v35

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    mul-float/2addr v4, v5

    div-float v4, v4, v36

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    :cond_13
    const-string v4, "WFDUibcManager"

    const-string v5, "Skip event, ratio wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    :cond_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v5, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v5, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v4, v32, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEC_UIBC_GET_FOCUS"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "UIBC_X"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "UIBC_Y"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "DISPLAY_ID"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0xe1

    const/16 v9, 0x87

    const/16 v8, 0x2d

    const/16 v6, 0xa

    const/4 v7, 0x0

    new-array v4, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-array v4, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    :cond_1
    :goto_1
    iget-boolean v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    :cond_2
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_b

    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "WFDUibcManager"

    const-string v5, "Setting SPECIAL rotation!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    :goto_3
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_4

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    :cond_4
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-le v4, v5, :cond_5

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x168

    if-le v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_7

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_7

    :cond_6
    const/4 v3, 0x0

    :cond_7
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v8, :cond_8

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v9, :cond_8

    const/4 v3, 0x1

    :cond_8
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_9

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v10, :cond_9

    const/4 v3, 0x2

    :cond_9
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_a

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-gt v4, v5, :cond_a

    const/4 v3, 0x3

    :cond_a
    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/KeyEvent;

    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto/16 :goto_2

    :cond_c
    mul-int/lit8 v4, v3, 0x5a

    iget-object v5, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    goto/16 :goto_3

    :cond_d
    return-void
.end method
