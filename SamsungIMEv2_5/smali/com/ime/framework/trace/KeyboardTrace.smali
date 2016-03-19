.class public Lcom/ime/framework/trace/KeyboardTrace;
.super Lcom/ime/framework/view/AbstractKeyboardTraceLine;
.source "KeyboardTrace.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x3e8

.field private static final MIN_MOVE_FILTER_DISTANCE:I = 0x14

.field private static MIN_MOVE_FILTER_DISTANCE_FROM_START:I = 0x0

.field private static final TAG_TRACE:Ljava/lang/String; = "KeyboardTrace"

.field private static final TOUCH_MAX_POINTS:I = 0xa

.field private static TRACE_DISAPPEARING_TIME:J = 0x0L

.field public static final TRACE_DISAPPEAR_INVALIDATE_INTERVAL:J = 0x64L

.field public static final TRACE_LINE_STYLE_DEFAULT:I = 0x0

.field public static final TRACE_LINE_STYPE_SHRINK_TRACE:I = 0x1

.field private static final TRACE_TOLERANCE:F = 4.0f

.field private static final TRACE_TOUCH_MOVE:I = 0x1

.field private static final TRACE_TOUCH_PRESS:I = 0x0

.field private static final TRACE_TOUCH_RELEASE:I = 0x2

.field private static mInstance:Lcom/ime/framework/trace/KeyboardTrace;

.field private static stepsize:F


# instance fields
.field private final DEBUG:Z

.field private final MAX_TRANSPARENT_POINTS:I

.field private mCurrentLineStyle:I

.field private final mDrawingTracePoint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingTracePointCount:S

.field private final mDrawingTracePointTimeStamp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFlagForReleaseTraceWithAnimation:Z

.field private mInTraceAnimation:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field public mIsTracing:Z

.field private mKeyIndex:I

.field mKeyboardViewHeight:I

.field mKeyboardViewWidth:I

.field private mMovePoint:Landroid/graphics/PointF;

.field private mStartKeyCode:I

.field private mSymbolAndSpace:Z

.field private mTouchPointCnt:I

.field private mTouchPointInfo:[Landroid/graphics/PointF;

.field private mTraceDistance:D

.field private mTracePointCnt:I

.field private mTracePointCountAtLastDraw:I

.field private mTracePointInfo:[Landroid/graphics/PointF;

.field private mTracePointTimeInfo:[J

.field private mTraceX:J

.field private mTraceY:J

.field private misKeyDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc8

    sput v0, Lcom/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    const-wide/16 v0, 0x2bc

    sput-wide v0, Lcom/ime/framework/trace/KeyboardTrace;->TRACE_DISAPPEARING_TIME:J

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/ime/framework/trace/KeyboardTrace;

    const v0, 0x3d75c28f    # 0.06f

    sput v0, Lcom/ime/framework/trace/KeyboardTrace;->stepsize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/16 v2, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractKeyboardTraceLine;-><init>()V

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->DEBUG:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->MAX_TRANSPARENT_POINTS:I

    new-array v1, v2, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointTimeInfo:[J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInTraceAnimation:Z

    iput v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    iput v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mFlagForReleaseTraceWithAnimation:Z

    iput v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    iput v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    const/16 v1, -0xff

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    iput-boolean v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePenThickness:I

    iput v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    sput-wide v2, Lcom/ime/framework/trace/KeyboardTrace;->TRACE_DISAPPEARING_TIME:J

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    invoke-direct {p0, v1}, Lcom/ime/framework/trace/KeyboardTrace;->setTraceLineStyle(I)V

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/ime/framework/trace/KeyboardTrace;->initTracePaint()V

    return-void
.end method

.method private addTracePoint(JJIJ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    :cond_0
    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    new-instance v2, Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointTimeInfo:[J

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aput-wide p6, v0, v1

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method private checkFilteringMoveEvent(JJI)Z
    .locals 13

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    long-to-float v5, p1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-wide/from16 v0, p3

    long-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-wide v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    iget-wide v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    sget v6, Lcom/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    float-to-int v4, v2

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    float-to-int v4, v3

    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v5, p1

    move-wide/from16 v0, p3

    long-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v5, p1

    move-wide/from16 v0, p3

    long-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move/from16 v0, p5

    iput v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private drawBrushTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    iget-short v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-lez v6, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1f

    iget-short v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    if-le v2, v0, :cond_3

    :cond_0
    return-void

    :cond_1
    iget-short v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    sub-int v7, v0, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget v11, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0
.end method

.method private drawLinearTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    if-eqz v4, :cond_3

    iget-short v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-short v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-short v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    invoke-static {p1}, Lcom/ime/framework/util/HiddenDrawingNumber;->printDotXY(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private drawPathWithGradient(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/ime/framework/trace/KeyboardTrace;->getIndexOfFirstVisibleTrace()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-short v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-le v7, v9, :cond_7

    iget v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    iget-short v8, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-le v7, v8, :cond_2

    iget-short v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    iput v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    :cond_2
    iget-boolean v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    if-eqz v7, :cond_3

    iget-short v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    :goto_1
    move v2, v4

    :goto_2
    add-int/lit8 v7, v1, -0x1

    if-ge v2, v7, :cond_7

    iget-short v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v7, v7, -0x3

    if-gt v2, v7, :cond_6

    new-array v5, v10, [F

    new-array v6, v10, [F

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_4

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v3

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    goto :goto_1

    :cond_4
    sub-int v7, v2, v4

    const/16 v8, 0x14

    if-ge v7, v8, :cond_5

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x5

    mul-int/lit8 v0, v7, 0x4

    :goto_4
    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, v5, v6, p1}, Lcom/ime/framework/trace/KeyboardTrace;->drawQuadraticBeizureCurve([F[FLandroid/graphics/Canvas;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v0, 0xff

    goto :goto_4

    :cond_6
    new-array v5, v12, [F

    new-array v6, v12, [F

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v11

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v11

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v9

    iget-object v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v9

    invoke-direct {p0, v5, v6, p1}, Lcom/ime/framework/trace/KeyboardTrace;->drawSimpleLine([F[FLandroid/graphics/Canvas;)V

    goto :goto_5

    :cond_7
    iget-boolean v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    if-eqz v7, :cond_0

    iget-short v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    iput v7, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    goto/16 :goto_0
.end method

.method private drawQuadraticBeizureCurve([F[FLandroid/graphics/Canvas;)V
    .locals 15

    sget v8, Lcom/ime/framework/trace/KeyboardTrace;->stepsize:F

    const/4 v0, 0x0

    aget v9, p1, v0

    const/4 v0, 0x1

    aget v10, p1, v0

    const/4 v0, 0x2

    aget v11, p1, v0

    const/4 v0, 0x0

    aget v12, p2, v0

    const/4 v0, 0x1

    aget v13, p2, v0

    const/4 v0, 0x2

    aget v14, p2, v0

    move v1, v9

    move v2, v12

    move v7, v8

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v6, v0, v7

    mul-float v0, v6, v6

    mul-float/2addr v0, v9

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    mul-float/2addr v5, v10

    add-float/2addr v0, v5

    mul-float v5, v7, v7

    mul-float/2addr v5, v11

    add-float v3, v0, v5

    mul-float v0, v6, v6

    mul-float/2addr v0, v12

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    mul-float/2addr v5, v13

    add-float/2addr v0, v5

    mul-float v5, v7, v7

    mul-float/2addr v5, v14

    add-float v4, v0, v5

    iget-object v5, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v3

    move v2, v4

    add-float/2addr v7, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawSimpleLine([F[FLandroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    aget v3, p1, v4

    aget v4, p2, v4

    iget-object v5, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static getInstance()Lcom/ime/framework/trace/KeyboardTrace;
    .locals 2

    sget-object v1, Lcom/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/ime/framework/trace/KeyboardTrace;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ime/framework/trace/KeyboardTrace;

    invoke-direct {v1}, Lcom/ime/framework/trace/KeyboardTrace;-><init>()V

    sput-object v1, Lcom/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/ime/framework/trace/KeyboardTrace;

    :cond_0
    :try_start_0
    const-string v1, "min_move_filter_distance_from_start"

    invoke-static {v1}, Lcom/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/ime/framework/trace/KeyboardTrace;

    return-object v1

    :catch_0
    move-exception v0

    const/16 v1, 0x14

    sput v1, Lcom/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    goto :goto_0
.end method

.method private getTraceDistance(JJJJ)J
    .locals 7

    sub-long v0, p1, p5

    sub-long v2, p1, p5

    mul-long/2addr v0, v2

    sub-long v2, p3, p7

    sub-long v4, p3, p7

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private setTraceLineStyle(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    return-void
.end method


# virtual methods
.method public clearTouchPoint()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/16 v1, -0xff

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    iput-boolean v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    const/4 v1, 0x1

    return v1
.end method

.method public clearTraceInfo()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointTimeInfo:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    return-void
.end method

.method public endDrawTraceLine()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-short v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    :cond_1
    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_2
    iput-boolean v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    return-void
.end method

.method public getFlagForReleaseTraceWithAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mFlagForReleaseTraceWithAnimation:Z

    return v0
.end method

.method public getInTraceAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInTraceAnimation:Z

    return v0
.end method

.method public getIndexOfFirstVisibleTrace()I
    .locals 10

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/ime/framework/trace/KeyboardTrace;->TRACE_DISAPPEARING_TIME:J

    sub-long v0, v6, v8

    :goto_0
    if-le v2, v5, :cond_2

    add-int v6, v5, v2

    div-int/lit8 v4, v6, 0x2

    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    :goto_1
    return v4

    :cond_0
    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v2, v6, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_1
.end method

.method public getKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    return v0
.end method

.method public getSymbolKeyCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xff

    goto :goto_0
.end method

.method public getTouchPoint(I)Landroid/graphics/PointF;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-lt v1, p1, :cond_0

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getTracePoint()[Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    return-object v0
.end method

.method public getTracePointCount()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    return v0
.end method

.method public getTracePointTime()[J
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointTimeInfo:[J

    return-object v0
.end method

.method public initTracePaint()V
    .locals 5

    const/16 v4, 0xff

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    const/16 v1, 0x27

    const/16 v2, 0x93

    const/16 v3, 0xfc

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePenThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public isSymbolAndSpace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    return v0
.end method

.method public moveDrawTraceLine(JJ)V
    .locals 37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceX:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceY:J

    move-wide/from16 v34, v0

    sub-long v6, p1, v32

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    sub-long v6, p3, v34

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    move-wide/from16 v0, v28

    long-to-float v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_2

    move-wide/from16 v0, v30

    long-to-float v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_2
    add-long v6, p1, v32

    const-wide/16 v8, 0x2

    div-long v10, v6, v8

    add-long v6, p3, v34

    const-wide/16 v8, 0x2

    div-long v12, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v6, 0x1

    if-ge v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/PointF;

    long-to-float v7, v10

    long-to-float v8, v12

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    :cond_3
    :goto_1
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ime/framework/trace/KeyboardTrace;->mTraceX:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ime/framework/trace/KeyboardTrace;->mTraceY:J

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v8, v5

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/ime/framework/trace/KeyboardTrace;->getTraceDistance(JJJJ)J

    move-result-wide v24

    new-instance v14, Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/PointF;

    long-to-float v7, v10

    long-to-float v8, v12

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move-object/from16 v0, p0

    iput-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    goto/16 :goto_1

    :cond_5
    const-wide/16 v26, 0x0

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v6, 0x2

    if-ge v5, v6, :cond_7

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/PointF;

    long-to-float v7, v10

    long-to-float v8, v12

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move-object/from16 v0, p0

    iput-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v0, v5

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v23}, Lcom/ime/framework/trace/KeyboardTrace;->getTraceDistance(JJJJ)J

    move-result-wide v26

    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-eqz v5, :cond_b

    cmp-long v5, v26, v24

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v8, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v8, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v6, v6

    sub-long v6, v8, v6

    mul-long v6, v6, v24

    div-long v8, v6, v26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v6, v6

    add-long/2addr v6, v8

    long-to-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v8, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v8, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v6, v6

    sub-long v6, v8, v6

    mul-long v6, v6, v24

    div-long v8, v6, v26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v6, v6

    add-long/2addr v6, v8

    long-to-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v8, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-long v6, v6

    sub-long v6, v16, v6

    mul-long v6, v6, v24

    div-long v6, v6, v26

    sub-long v6, v8, v6

    long-to-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v8, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-long v6, v6

    sub-long v6, v16, v6

    mul-long v6, v6, v24

    div-long v6, v6, v26

    sub-long v6, v8, v6

    long-to-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    move-object/from16 v0, p0

    iput-short v5, v0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    sub-long v24, v24, v26

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public moveTrace(JJIJ)Z
    .locals 9

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/ime/framework/trace/KeyboardTrace;->checkFilteringMoveEvent(JJI)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawTraceLine(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/ime/framework/trace/KeyboardTrace;->drawLinearTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ime/framework/trace/KeyboardTrace;->drawPathWithGradient(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pressTouch(JJ)Z
    .locals 5

    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    new-instance v2, Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    :goto_1
    iget v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public pressTrace(JJIIJ)Z
    .locals 9

    iput p5, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    iput p6, p0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public releaseTrace(JJIIZJ)Z
    .locals 17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    if-eqz p7, :cond_1

    const/4 v8, 0x2

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p8

    invoke-direct/range {v3 .. v10}, Lcom/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ime/framework/trace/KeyboardTrace;->setFlagForReleaseTraceWithAnimation(Z)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v4, -0x7a

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v4, -0x75

    if-ne v3, v4, :cond_7

    :cond_2
    const/16 v3, 0x20

    move/from16 v0, p6

    if-ne v0, v3, :cond_7

    if-lez p5, :cond_7

    const/4 v13, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v12

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/ime/framework/view/AbstractKeyboardView;

    :goto_1
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    :goto_2
    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, p5

    if-le v3, v0, :cond_7

    invoke-virtual {v13}, Lcom/ime/framework/view/AbstractKeyboardView;->getHeight()I

    move-result v4

    move/from16 v0, p5

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/Keyboard$Key;

    iget v3, v3, Lcom/ime/framework/view/Keyboard$Key;->height:I

    sub-int v15, v4, v3

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    if-ge v3, v15, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v4, -0x7a

    if-ne v3, v4, :cond_8

    const/16 v3, 0x2e

    move-object/from16 v0, p0

    iput v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    :cond_7
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v4, -0x75

    if-ne v3, v4, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    goto :goto_4
.end method

.method public removeTouchPoint(I)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    iget v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-lt v3, p1, :cond_0

    iget v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-ge v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    move v0, p1

    :goto_1
    if-ge v0, v5, :cond_3

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    :cond_3
    iget v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    move v1, v2

    goto :goto_0
.end method

.method public setFlagForReleaseTraceWithAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mFlagForReleaseTraceWithAnimation:Z

    return-void
.end method

.method public setInTraceAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInTraceAnimation:Z

    return-void
.end method

.method public setIsKeyDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    return-void
.end method

.method public setIsTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    return-void
.end method

.method public setKeyboardViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewHeight:I

    return-void
.end method

.method public setKeyboardViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    return-void
.end method

.method public startDrawTraceLine(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    iput-wide p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceX:J

    iput-wide p3, p0, Lcom/ime/framework/trace/KeyboardTrace;->mTraceY:J

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    long-to-float v2, p1

    long-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    :cond_1
    return-void
.end method

.method public updateKeyboardViewSize(II)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    iput p2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewHeight:I

    return-void
.end method

.method public updateKeyboardViewWidth()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a52

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    iput v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    iput v2, p0, Lcom/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
