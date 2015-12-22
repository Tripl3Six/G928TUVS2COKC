.class public Lcom/android/incallui/SecEasyVoiceButton;
.super Landroid/widget/Button;
.source "SecEasyVoiceButton.java"


# instance fields
.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mRippleEffectHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVoiceButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mRippleEffectWidth:I

    iget v1, p0, Lcom/android/incallui/SecEasyVoiceButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;II)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecEasyVoiceButton;->mMeasuredHeight:I

    goto :goto_1
.end method
