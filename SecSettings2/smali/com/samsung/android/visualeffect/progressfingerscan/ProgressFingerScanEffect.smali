.class public Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;
.super Landroid/widget/FrameLayout;
.source "ProgressFingerScanEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

.field private currentStatus:I

.field private finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

.field private progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIII)V
    .locals 18

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "progressFingerScanEffect"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->TAG:Ljava/lang/String;

    const-string v3, "1.3"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    const-string v3, "progressFingerScanEffect"

    const-string v4, "ProgressFingerScanEffect : Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "progressFingerScanEffect"

    const-string v4, "Version = 1.3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "progressFingerScanEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fingerColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", progressColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", greyColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", completeColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", strokeWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p9

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int v3, p2, v14

    div-int/lit8 v15, v3, 0x2

    sub-int v3, p3, v10

    div-int/lit8 v16, v3, 0x2

    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v10

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    int-to-float v4, v15

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setY(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v10}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    new-instance v3, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v15

    move/from16 v8, v16

    move v9, v14

    move/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;-><init>(Landroid/content/Context;IIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setLayoutDirection(I)V

    return-void
.end method


# virtual methods
.method public setFingerStatus(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "progressFingerScanEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFingerStatus : status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOn()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->scanOff()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 3

    const-string v0, "progressFingerScanEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPercent : percent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->progress:Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setPercent(F)V

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOn()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->complete:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOff()V

    goto :goto_0
.end method
