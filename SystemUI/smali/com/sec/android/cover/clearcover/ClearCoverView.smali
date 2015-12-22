.class public Lcom/sec/android/cover/clearcover/ClearCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "ClearCoverView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDirection:I

.field private mHorizontalShift:I

.field private mMaxShift:I

.field private mPinWindowContentRootView:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVerticalShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverView$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_marquee_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hideCoverUi()V
    .locals 5

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private marqueeCoverView()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    :cond_1
    :goto_1
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    :goto_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->invalidate()V

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marqueeCoverView() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v2, v2

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    neg-int v1, v2

    goto :goto_2
.end method

.method private showCoverUi()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->hideCoverUi()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->marqueeCoverView()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->showCoverUi()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setVisibility(I)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_main_page:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cover open, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    goto :goto_0
.end method
