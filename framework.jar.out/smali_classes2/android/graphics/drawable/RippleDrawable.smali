.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$1;,
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/Ripple;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/Ripple;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_1
    if-eqz p3, :cond_2

    const v7, 0x102002e

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelExitingRipples()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->isHardwareAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    return v2
.end method

.method private clearHotspots()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->cancel()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-nez v1, :cond_1

    if-gtz v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    neg-float v14, v11

    neg-float v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v13, v13, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v14

    const/high16 v15, -0x1000000

    invoke-virtual {v13, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    shl-int/lit8 v6, v13, 0x18

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v13, :cond_4

    const/high16 v13, -0x1000000

    or-int v5, v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v13, v5}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_3
    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_5

    aget-object v13, v10, v8

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const v13, 0xffffff

    and-int/2addr v13, v3

    or-int v7, v13, v6

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9}, Landroid/graphics/drawable/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_6
    neg-float v13, v11

    neg-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getMaskType()I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-nez v5, :cond_1

    iget v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v5, :cond_1

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method private getRippleIndex(Landroid/graphics/drawable/Ripple;)I
    .locals 4

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private initializeFromState()V
    .locals 1

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    :cond_2
    return-void
.end method

.method private setBackgroundActive(ZZ)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private tryBackgroundEnter(Z)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(IF)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 5

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    :goto_1
    new-instance v2, Landroid/graphics/drawable/Ripple;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v2, p0, v3, v0, v1}, Landroid/graphics/drawable/Ripple;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FF)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Ripple;->setup(IF)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v2}, Landroid/graphics/drawable/Ripple;->enter()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    goto :goto_1
.end method

.method private tryRippleExit()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Ripple;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    :cond_1
    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_3
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_8

    :cond_5
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :goto_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_9

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    :goto_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_7

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    goto :goto_2

    :cond_a
    if-ne v1, v7, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->isProjected()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    aget-object v9, v1, v7

    if-nez v9, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Ripple;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_2
    return-object v5

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_2
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMaxRadius()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_1

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    return-void
.end method

.method public isProjected()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->jump()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->jump()V

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v0, v4

    const v8, 0x101009e

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    :cond_0
    const v8, 0x101009c

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iput-boolean v10, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    :cond_5
    move v10, v9

    :cond_6
    invoke-direct {p0, v10, v3}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    return v1

    :cond_7
    move v8, v10

    goto :goto_1
.end method

.method removeRipple(Landroid/graphics/drawable/Ripple;)V
    .locals 5

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->getRippleIndex(Landroid/graphics/drawable/Ripple;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    sub-int v4, v0, v4

    invoke-static {v2, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Ripple;->move(FF)V

    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    return-void
.end method

.method public setMaxRadius(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRadius must be RADIUS_AUTO or >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method
