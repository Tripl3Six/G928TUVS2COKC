.class public Landroid/widget/SimpleViewPager;
.super Landroid/view/ViewGroup;
.source "SimpleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleViewPager$FragmentPagerAdapter;,
        Landroid/widget/SimpleViewPager$PagerAdapter;,
        Landroid/widget/SimpleViewPager$MyEdgeEffect;,
        Landroid/widget/SimpleViewPager$ViewPositionComparator;,
        Landroid/widget/SimpleViewPager$LayoutParams;,
        Landroid/widget/SimpleViewPager$PagerObserver;,
        Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;,
        Landroid/widget/SimpleViewPager$SavedState;,
        Landroid/widget/SimpleViewPager$Decor;,
        Landroid/widget/SimpleViewPager$OnAdapterChangeListener;,
        Landroid/widget/SimpleViewPager$PageTransformer;,
        Landroid/widget/SimpleViewPager$SimpleOnPageChangeListener;,
        Landroid/widget/SimpleViewPager$OnPageChangeListener;,
        Landroid/widget/SimpleViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/SimpleViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimpleViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/widget/SimpleViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

.field private mAdapterChangeListener:Landroid/widget/SimpleViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDisableBounceBack:Z

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SimpleViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/widget/SimpleViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/widget/SimpleViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/widget/SimpleViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Landroid/widget/SimpleViewPager$1;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$1;-><init>()V

    sput-object v0, Landroid/widget/SimpleViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroid/widget/SimpleViewPager$2;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$2;-><init>()V

    sput-object v0, Landroid/widget/SimpleViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/SimpleViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/widget/SimpleViewPager;->sPositionComparator:Landroid/widget/SimpleViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mTempItem:Landroid/widget/SimpleViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const v0, -0x800001

    iput v0, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    iput v3, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    iput-boolean v3, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    iput-boolean v1, p0, Landroid/widget/SimpleViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean v1, p0, Landroid/widget/SimpleViewPager;->mDisableBounceBack:Z

    new-instance v0, Landroid/widget/SimpleViewPager$3;

    invoke-direct {v0, p0}, Landroid/widget/SimpleViewPager$3;-><init>(Landroid/widget/SimpleViewPager;)V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v1, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mTempItem:Landroid/widget/SimpleViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const v0, -0x800001

    iput v0, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    iput v3, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    iput v2, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    iput-boolean v3, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    iput-boolean v1, p0, Landroid/widget/SimpleViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean v1, p0, Landroid/widget/SimpleViewPager;->mDisableBounceBack:Z

    new-instance v0, Landroid/widget/SimpleViewPager$3;

    invoke-direct {v0, p0}, Landroid/widget/SimpleViewPager$3;-><init>(Landroid/widget/SimpleViewPager;)V

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v1, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SimpleViewPager;)Landroid/widget/SimpleViewPager$PagerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleViewPager;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    sget-object v0, Landroid/widget/SimpleViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/widget/SimpleViewPager$ItemInfo;ILandroid/widget/SimpleViewPager$ItemInfo;)V
    .locals 14

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v11

    if-lez v11, :cond_0

    iget v12, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    :goto_0
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v8, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    add-int/lit8 v9, v8, 0x1

    :goto_1
    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    :goto_2
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    :goto_3
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    iput v7, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v7, v0, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    add-int/lit8 v9, v8, -0x1

    :goto_4
    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    :goto_5
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    goto :goto_5

    :cond_4
    :goto_6
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_5
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_6
    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v7, p1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    add-int/lit8 v2, p2, -0x1

    :goto_9
    if-ltz v2, :cond_b

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    :goto_a
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v12, v9}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    goto :goto_a

    :cond_7
    const v12, -0x800001

    goto :goto_7

    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_9
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    :cond_b
    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    iget v12, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    :goto_c
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v12, v9}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    goto :goto_c

    :cond_c
    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    :cond_d
    iput v7, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v12, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/SimpleViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 10

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v7}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v4

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    :cond_1
    iput-boolean v7, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleViewPager$ItemInfo;

    iget-boolean v8, v1, Landroid/widget/SimpleViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    iput-boolean v7, v1, Landroid/widget/SimpleViewPager$ItemInfo;->scrolling:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    iget-object v7, p0, Landroid/widget/SimpleViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/widget/SimpleViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v7, p0, Landroid/widget/SimpleViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    iget-boolean v4, p0, Landroid/widget/SimpleViewPager;->mDisableBounceBack:Z

    if-eqz v4, :cond_0

    const/4 p3, 0x0

    if-lez p4, :cond_3

    sub-float/2addr p2, v6

    :cond_0
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/widget/SimpleViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/widget/SimpleViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_5

    if-lez p3, :cond_4

    move v2, p1

    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleViewPager$ItemInfo;

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v4, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v5, v1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    return v2

    :cond_3
    if-eqz p4, :cond_0

    add-float/2addr p2, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v2, p1, 0x1

    goto :goto_1

    :cond_5
    iget v4, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-lt p1, v4, :cond_6

    const v3, 0x3ecccccd    # 0.4f

    :goto_2
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    iget-boolean v4, p0, Landroid/widget/SimpleViewPager;->mDisableBounceBack:Z

    if-eqz v4, :cond_1

    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v6

    float-to-int v2, v4

    goto :goto_1

    :cond_6
    const v3, 0x3f19999a    # 0.6f

    goto :goto_2
.end method

.method private enableLayers(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/widget/SimpleViewPager$ItemInfo;
    .locals 15

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v12

    if-lez v12, :cond_5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    :cond_0
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v13, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    iget-object v13, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleViewPager$ItemInfo;

    if-nez v0, :cond_1

    iget v13, v2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mTempItem:Landroid/widget/SimpleViewPager$ItemInfo;

    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget-object v13, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget v14, v2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v9, v2, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move v7, v9

    iget v13, v2, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move v11, v8

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iget v5, v2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move v4, v9

    iget v6, v2, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move-object v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/SimpleViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/SimpleViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    iput-boolean v7, p0, Landroid/widget/SimpleViewPager;->mCalledSuper:Z

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Landroid/widget/SimpleViewPager;->onPageScrolled(IFI)V

    iget-boolean v8, p0, Landroid/widget/SimpleViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->infoForCurrentScrollPosition()Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v5

    iget v8, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    add-int v6, v5, v8

    iget v8, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    iget v0, v1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    iput-boolean v7, p0, Landroid/widget/SimpleViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v0, v4, v3}, Landroid/widget/SimpleViewPager;->onPageScrolled(IFI)V

    iget-boolean v7, p0, Landroid/widget/SimpleViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    add-float v12, v8, v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v13

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    const/4 v5, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v14, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    const/4 v5, 0x0

    iget v14, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    :cond_0
    iget v14, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v15}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    const/4 v10, 0x0

    iget v14, v4, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    if-eqz v5, :cond_2

    sub-float v9, v6, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onPull2(F)Z

    move-result v7

    :cond_2
    move v12, v6

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SimpleViewPager;->pageScrolled(I)Z

    return v7

    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    if-eqz v10, :cond_5

    sub-float v9, v12, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onPull2(F)Z

    move-result v7

    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14

    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v13

    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    iget v0, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForPosition(I)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v11

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForPosition(I)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v0, v6, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_1
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleViewPager$LayoutParams;

    iget-boolean v3, v2, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SimpleViewPager;->infoForPosition(I)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v2

    int-to-float v3, v2

    iget v4, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    iget v5, v0, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v6, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1, v7, p3}, Landroid/widget/SimpleViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_1

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_5
    invoke-direct {p0, v7}, Landroid/widget/SimpleViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v1, v7}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->enableLayers(Z)V

    :cond_2
    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SimpleViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    iget v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Landroid/widget/SimpleViewPager;->sPositionComparator:Landroid/widget/SimpleViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v5, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewItem(II)Landroid/widget/SimpleViewPager$ItemInfo;
    .locals 2

    new-instance v0, Landroid/widget/SimpleViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$ItemInfo;-><init>()V

    iput p1, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/widget/SimpleViewPager$PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Landroid/widget/SimpleViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/SimpleViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/widget/SimpleViewPager$LayoutParams;

    iget-boolean v1, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/widget/SimpleViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Landroid/widget/SimpleViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SimpleViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SimpleViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13

    const/16 v12, 0x42

    const/16 v11, 0x11

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    if-ne p1, v11, :cond_8

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Landroid/widget/SimpleViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Landroid/widget/SimpleViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->pageLeft()Z

    move-result v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/SimpleViewPager;->playSoundEffect(I)V

    :cond_2
    return v2

    :cond_3
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    if-ne v6, p0, :cond_5

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    :cond_6
    const-string v8, "SimpleViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    :cond_8
    if-ne p1, v12, :cond_1

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Landroid/widget/SimpleViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/SimpleViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Landroid/widget/SimpleViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    :cond_b
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    :cond_d
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    iput-boolean v9, p0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    invoke-direct {p0, v9}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    iput v5, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    iput v5, p0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v0, p0, Landroid/widget/SimpleViewPager;->mFakeDragBeginTime:J

    move v4, v9

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    :goto_0
    if-ltz v8, :cond_1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SimpleViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v0

    if-gez p1, :cond_3

    int-to-float v4, v1

    iget v5, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-lez p1, :cond_0

    int-to-float v4, v1

    iget v5, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/SimpleViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v1

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/widget/SimpleViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/widget/SimpleViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleViewPager;->mExpectedAdapterCount:I

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    :goto_0
    iget v8, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SimpleViewPager$ItemInfo;

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v13, v4, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Landroid/widget/SimpleViewPager$PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v7, v11

    goto :goto_0

    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v5, :cond_3

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/widget/SimpleViewPager$PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    :cond_3
    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget v13, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget-object v14, v4, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Landroid/widget/SimpleViewPager$PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 v7, 0x1

    iget v12, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    iget v13, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    iget v12, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    iget v12, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    iget v12, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v13, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    move v8, v9

    :cond_5
    iput v9, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/widget/SimpleViewPager$PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v12, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Landroid/widget/SimpleViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SimpleViewPager$LayoutParams;

    iget-boolean v12, v6, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    const/4 v12, 0x0

    iput v12, v6, Landroid/widget/SimpleViewPager$LayoutParams;->widthFactor:F

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->requestLayout()V

    :cond_a
    return-void
.end method

.method public disableBounceBack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SimpleViewPager;->mDisableBounceBack:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SimpleViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v5}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    :cond_0
    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v4

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->postInvalidateOnAnimation()V

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->finish()V

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-virtual {v5}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    const/4 v11, 0x1

    iget-boolean v9, p0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v7, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget v10, p0, Landroid/widget/SimpleViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v9, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    iput-boolean v11, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->infoForCurrentScrollPosition()Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v1

    iget v0, v1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    iget v9, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    iget v10, p0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    invoke-direct {p0, v0, v4, v2, v6}, Landroid/widget/SimpleViewPager;->determineTargetPage(IFII)I

    move-result v3

    invoke-virtual {p0, v3, v11, v11, v2}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->endDrag()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SimpleViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    sub-float v16, v14, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SimpleViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SimpleViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v2, v11, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    iget v2, v11, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    :cond_1
    iget v2, v12, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v12, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    move/from16 v16, v13

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/SimpleViewPager;->pageScrolled(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/widget/SimpleViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/SimpleViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/widget/SimpleViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/SimpleViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SimpleViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SimpleViewPager$PagerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    iget v2, p0, Landroid/widget/SimpleViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    :goto_0
    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleViewPager$LayoutParams;

    iget v1, v2, Landroid/widget/SimpleViewPager$LayoutParams;->childIndex:I

    return v1

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleViewPager$ItemInfo;

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v3, v1, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Landroid/widget/SimpleViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v2, v1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->setWillNotDraw(Z)V

    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v5}, Landroid/widget/SimpleViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Landroid/widget/SimpleViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mMaximumVelocity:I

    new-instance v3, Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/SimpleViewPager$MyEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    new-instance v3, Landroid/widget/SimpleViewPager$MyEdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/SimpleViewPager$MyEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mFlingDistance:I

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mCloseEnough:I

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/SimpleViewPager;->mDefaultGutterSize:I

    new-instance v3, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;-><init>(Landroid/widget/SimpleViewPager;)V

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/SimpleViewPager;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v8, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v2, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/SimpleViewPager$ItemInfo;

    iget v6, v13, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move v9, v2

    :goto_0
    if-ge v9, v6, :cond_2

    :goto_1
    iget v13, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    goto :goto_1

    :cond_0
    iget v13, v3, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    iget v13, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v14, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    iget v13, v3, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    iget v14, v3, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SimpleViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v13, v9}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-eqz v6, :cond_4

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    goto :goto_0

    :sswitch_0
    iget v7, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v0, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, p0, Landroid/widget/SimpleViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Landroid/widget/SimpleViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SimpleViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v10, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    iput v12, p0, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget v0, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    iput v12, p0, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v10}, Landroid/widget/SimpleViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/SimpleViewPager;->mInitialMotionY:F

    iput v0, p0, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/widget/SimpleViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/SimpleViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->populate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SimpleViewPager;->completeScroll(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/widget/SimpleViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v9

    sub-int v24, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v22

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/SimpleViewPager$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move/from16 v6, v19

    :goto_1
    sparse-switch v23, :sswitch_data_0

    move/from16 v7, v21

    :goto_2
    add-int v6, v6, v22

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :pswitch_1
    move/from16 v6, v19

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    :sswitch_0
    move/from16 v7, v21

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_2

    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/SimpleViewPager$LayoutParams;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v15

    if-eqz v15, :cond_3

    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v6, v19, v16

    move/from16 v7, v21

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager$LayoutParams;->needsMeasure:Z

    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mTopPageBounds:I

    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mBottomPageBounds:I

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/SimpleViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/SimpleViewPager;->scrollToItem(IZIZ)V

    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/SimpleViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/SimpleViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleViewPager;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v14, v15, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mGutterSize:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v16

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/SimpleViewPager$LayoutParams;

    if-eqz v13, :cond_5

    iget-boolean v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    const/high16 v18, -0x80000000

    const/high16 v8, -0x80000000

    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v7, :cond_8

    const/high16 v18, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    move/from16 v19, v5

    move v9, v4

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/high16 v18, 0x40000000    # 2.0f

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    :cond_3
    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    iget v9, v13, Landroid/widget/SimpleViewPager$LayoutParams;->height:I

    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_2

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mChildWidthMeasureSpec:I

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mChildHeightMeasureSpec:I

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->populate()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v16

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/SimpleViewPager$LayoutParams;

    if-nez v13, :cond_c

    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_c
    iget-boolean v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Landroid/widget/SimpleViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SimpleViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/SimpleViewPager$LayoutParams;

    iget-boolean v15, v9, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget v15, v9, Landroid/widget/SimpleViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    const/4 v5, 0x0

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v5, v10

    :goto_2
    add-int/2addr v5, v12

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :pswitch_1
    move v5, v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/SimpleViewPager$LayoutParams;

    iget-boolean v15, v9, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SimpleViewPager;->mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Landroid/widget/SimpleViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/SimpleViewPager;->mCalledSuper:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v1

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v2, v1

    :goto_0
    move v3, v6

    :goto_1
    if-eq v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v7, v4, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_0
    add-int/lit8 v6, v1, -0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v1, p1, Landroid/widget/SimpleViewPager$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/SimpleViewPager$SavedState;

    invoke-virtual {v0}, Landroid/widget/SimpleViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v2, v0, Landroid/widget/SimpleViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleViewPager$PagerAdapter;->restoreState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/widget/SimpleViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/widget/SimpleViewPager$SavedState;->position:I

    iput v1, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    iget-object v1, v0, Landroid/widget/SimpleViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/widget/SimpleViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/widget/SimpleViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/SimpleViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    iput v2, v0, Landroid/widget/SimpleViewPager$SavedState;->position:I

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleViewPager$PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/SimpleViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    iget v1, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/widget/SimpleViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    return v24

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v11, 0x0

    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->postInvalidateOnAnimation()V

    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->populate()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    const v24, 0x3f4ccccd    # 0.8f

    mul-float v24, v24, v21

    cmpl-float v24, v24, v23

    if-lez v24, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SimpleViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionY:F

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/SimpleViewPager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->infoForCurrentScrollPosition()Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v8

    iget v7, v8, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Landroid/widget/SimpleViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Landroid/widget/SimpleViewPager;->determineTargetPage(IFII)I

    move-result v12

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZI)V

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onRelease2()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onRelease2()Z

    move-result v25

    or-int v11, v24, v25

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/SimpleViewPager;->scrollToItem(IZIZ)V

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mLeftEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onRelease2()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mRightEdge:Landroid/widget/SimpleViewPager$MyEdgeEffect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onRelease2()Z

    move-result v25

    or-int v11, v24, v25

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/SimpleViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mLastMotionX:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/SimpleViewPager;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/SimpleViewPager;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    iget v0, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 30

    const/16 v21, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager;->infoForPosition(I)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v21

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleViewPager;->mCurItem:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->sortChildDrawingOrder()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager$PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    :catch_0
    move-exception v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    :cond_5
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/widget/SimpleViewPager;->addNewItem(II)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_a

    const/4 v13, 0x0

    add-int/lit8 v18, v8, -0x1

    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v7

    if-gtz v7, :cond_e

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    :goto_6
    if-ltz v23, :cond_8

    cmpl-float v27, v13, v19

    if-ltz v27, :cond_12

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    if-nez v17, :cond_f

    :cond_8
    iget v14, v9, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v18, v8, 0x1

    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_7
    if-gtz v7, :cond_17

    const/16 v25, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    if-nez v17, :cond_18

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Landroid/widget/SimpleViewPager;->calculatePageOffsets(Landroid/widget/SimpleViewPager$ItemInfo;ILandroid/widget/SimpleViewPager$ItemInfo;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1f

    iget-object v0, v9, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager$PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v6

    const/16 v16, 0x0

    :goto_b
    move/from16 v0, v16

    if-ge v0, v6, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/SimpleViewPager$LayoutParams;

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/SimpleViewPager$LayoutParams;->childIndex:I

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/SimpleViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v17

    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/SimpleViewPager$LayoutParams;->widthFactor:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/SimpleViewPager$LayoutParams;->position:I

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_e
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :cond_10
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    :cond_11
    const/16 v17, 0x0

    goto :goto_c

    :cond_12
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v17, 0x0

    goto :goto_d

    :cond_14
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleViewPager;->addNewItem(II)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    add-int/lit8 v8, v8, 0x1

    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v17, 0x0

    goto :goto_e

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :cond_19
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    :cond_1a
    const/16 v17, 0x0

    goto :goto_f

    :cond_1b
    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v17, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleViewPager;->addNewItem(II)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v17

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/widget/SimpleViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v17, 0x0

    goto :goto_11

    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->sortChildDrawingOrder()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/SimpleViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v17

    :goto_12
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    :cond_21
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/SimpleViewPager;->infoForChild(Landroid/view/View;)Landroid/widget/SimpleViewPager$ItemInfo;

    move-result-object v17

    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    :cond_22
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    :cond_23
    const/16 v17, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SimpleViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/SimpleViewPager$PagerAdapter;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mObserver:Landroid/widget/SimpleViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/widget/SimpleViewPager$PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/widget/SimpleViewPager$PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleViewPager$ItemInfo;

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget v5, v1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget-object v6, v1, Landroid/widget/SimpleViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/SimpleViewPager$PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/widget/SimpleViewPager$PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->removeNonDecorViews()V

    iput v7, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    invoke-virtual {p0, v7, v7}, Landroid/widget/SimpleViewPager;->scrollTo(II)V

    :cond_1
    iget-object v2, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iput-object p1, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iput v7, p0, Landroid/widget/SimpleViewPager;->mExpectedAdapterCount:I

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mObserver:Landroid/widget/SimpleViewPager$PagerObserver;

    if-nez v4, :cond_2

    new-instance v4, Landroid/widget/SimpleViewPager$PagerObserver;

    invoke-direct {v4, p0, v9}, Landroid/widget/SimpleViewPager$PagerObserver;-><init>(Landroid/widget/SimpleViewPager;Landroid/widget/SimpleViewPager$1;)V

    iput-object v4, p0, Landroid/widget/SimpleViewPager;->mObserver:Landroid/widget/SimpleViewPager$PagerObserver;

    :cond_2
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mObserver:Landroid/widget/SimpleViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/widget/SimpleViewPager$PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v7, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    iget-boolean v3, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    iput-boolean v8, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v4}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Landroid/widget/SimpleViewPager;->mExpectedAdapterCount:I

    iget v4, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget-object v5, p0, Landroid/widget/SimpleViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Landroid/widget/SimpleViewPager$PagerAdapter;->restoreState(Landroid/os/Parcelable;)V

    iget v4, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v8}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/SimpleViewPager;->mRestoredCurItem:I

    iput-object v9, p0, Landroid/widget/SimpleViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapterChangeListener:Landroid/widget/SimpleViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mAdapterChangeListener:Landroid/widget/SimpleViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Landroid/widget/SimpleViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/widget/SimpleViewPager$PagerAdapter;Landroid/widget/SimpleViewPager$PagerAdapter;)V

    :cond_4
    return-void

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->populate()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->requestLayout()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/SimpleViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    invoke-direct {p0, v4}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v4}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_3
    :goto_1
    iget v2, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    iget v3, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SimpleViewPager$ItemInfo;

    iput-boolean v0, v3, Landroid/widget/SimpleViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    :cond_6
    iget v3, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    :goto_3
    iget-boolean v3, p0, Landroid/widget/SimpleViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    iput p1, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/widget/SimpleViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->requestLayout()V

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/SimpleViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/widget/SimpleViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Landroid/widget/SimpleViewPager$OnPageChangeListener;)Landroid/widget/SimpleViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    iput-object p1, p0, Landroid/widget/SimpleViewPager;->mInternalPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const-string v0, "SimpleViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/widget/SimpleViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/widget/SimpleViewPager$OnAdapterChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleViewPager;->mAdapterChangeListener:Landroid/widget/SimpleViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/widget/SimpleViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleViewPager;->mOnPageChangeListener:Landroid/widget/SimpleViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    iput p1, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/widget/SimpleViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/widget/SimpleViewPager$PageTransformer;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    if-eqz p2, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/widget/SimpleViewPager;->mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    :goto_2
    iput-object p2, p0, Landroid/widget/SimpleViewPager;->mPageTransformer:Landroid/widget/SimpleViewPager$PageTransformer;

    invoke-virtual {p0, v0}, Landroid/widget/SimpleViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Landroid/widget/SimpleViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->populate()V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iput v3, p0, Landroid/widget/SimpleViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SimpleViewPager;->mTouchSlop:I

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SimpleViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->getScrollY()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->populate()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/widget/SimpleViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/widget/SimpleViewPager;->getClientWidth()I

    move-result v12

    div-int/lit8 v9, v12, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Landroid/widget/SimpleViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p0, Landroid/widget/SimpleViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;

    iget v14, p0, Landroid/widget/SimpleViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Landroid/widget/SimpleViewPager$PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Landroid/widget/SimpleViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
