.class public Lcom/android/incallui/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallButtonsContainer:Landroid/view/View;

.field private mCallNumberAndLabel:Landroid/view/View;

.field private mCallStateButton:Landroid/view/View;

.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateVideoCallIcon:Landroid/widget/ImageView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFabNormalDiameter:I

.field private mFabSmallDiameter:I

.field private mFloatingActionButton:Landroid/widget/ImageButton;

.field private mFloatingActionButtonContainer:Landroid/view/View;

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mFloatingActionButtonVerticalOffset:I

.field private mInCallMessageLabel:Landroid/widget/TextView;

.field private mIsDialpadShowing:Z

.field private mIsLandscape:Z

.field private mManageConferenceCallButton:Landroid/view/View;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrimaryCallCardContainer:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressSpinner:Landroid/view/View;

.field private mPulseAnimation:Landroid/view/animation/Animation;

.field private mRevealAnimationDuration:I

.field private mSecondaryCallConferenceCallIcon:Landroid/view/View;

.field private mSecondaryCallInfo:Landroid/view/View;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallProviderInfo:Landroid/view/View;

.field private mSecondaryCallProviderLabel:Landroid/widget/TextView;

.field private mShrinkAnimationDuration:I

.field private mTranslationOffset:F

.field private mVideoAnimationDuration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPositionForSecondaryCallInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/CallCardFragment;Landroid/graphics/Point;IIZ)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/CallCardFragment;->getOutgoingCallAnimator(Landroid/graphics/Point;IIZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/CallCardFragment;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPosition()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/contacts/common/widget/FloatingActionButtonController;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method private assignTranslateAnimation(Landroid/view/View;I)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mTranslationOffset:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mShrinkAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    if-nez p6, :cond_2

    move v2, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_2
    :pswitch_1
    return-object v0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_3

    move-object v0, p5

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_4

    const v4, 0x7f0d013e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne p3, v4, :cond_5

    const v4, 0x7f0d013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {p2}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d013c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const v4, 0x7f0d0138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    if-eqz v3, :cond_6

    const v6, 0x7f0d0166

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const v4, 0x7f0d0132

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const v4, 0x7f0d0134

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    if-eqz v2, :cond_7

    const v6, 0x7f0d0167

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {p2}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0d0146

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const v4, 0x7f0d0136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    const v4, 0x7f0d0139

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_8
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_9
    const v4, 0x7f0d0135

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getOutgoingCallAnimator(Landroid/graphics/Point;IIZ)Landroid/animation/Animator;
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardFragment;->getShrinkAnimator(II)Landroid/animation/Animator;

    move-result-object v2

    if-nez p4, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move-object v2, v0

    goto :goto_0
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 10

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v7, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v7, 0x2

    iget v7, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v7, 0x2

    if-eqz p1, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    :cond_0
    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v3, v4, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    iget v7, p0, Lcom/android/incallui/CallCardFragment;->mRevealAnimationDuration:I

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object v5
.end method

.method private getShrinkAnimator(II)Landroid/animation/Animator;
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const-string v2, "bottom"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mShrinkAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/incallui/CallCardFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$9;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViewStatePostAnimation(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private showAndInitializeSecondaryCallInfo(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallConferenceCallIcon:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private showInternetCallLabel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFabPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    if-nez v1, :cond_0

    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonVerticalOffset:I

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1, v3, v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IIIZ)V

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mFabSmallDiameter:I

    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->resize(IZ)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mFabNormalDiameter:I

    goto :goto_1
.end method

.method private updateFabPositionForSecondaryCallInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CallCardFragment$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$8;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public animateForNewOutgoingCall(Landroid/graphics/Point;Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    new-instance v2, Lcom/android/incallui/CallCardFragment$6;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/android/incallui/CallCardFragment$6;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewGroup;Landroid/graphics/Point;Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mRevealAnimationDuration:I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mShrinkAnimationDuration:I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoAnimationDuration:I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonVerticalOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFabNormalDiameter:I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFabSmallDiameter:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mDensity:F

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mTranslationOffset:F

    const v0, 0x7f040007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPosition()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/CallCardFragment$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/incallui/CallCardFragment$7;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->updateColors()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f10008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f10032a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    const v0, 0x7f10032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f1000d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const v0, 0x7f10003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    const v0, 0x7f10003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProgressSpinner:Landroid/view/View;

    const v0, 0x7f100040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const v0, 0x7f100041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$1;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$2;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallCardFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$3;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallCardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$4;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 11

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/CallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisconnectCause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gateway "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    :goto_2
    if-eqz p6, :cond_c

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    :goto_3
    move-object/from16 v0, p6

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_5

    check-cast p6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_5
    :goto_4
    invoke-static {p2}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_e

    const/4 v1, 0x1

    if-ne p3, v1, :cond_e

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/view/animation/Animation;->cancel()V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/animation/Animation;->cancel()V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    const v0, 0x7f0d0140

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/CallCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0d013f

    goto :goto_1
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPosition()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const-string v0, "Setting primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/incallui/CallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/android/incallui/CallCardFragment;->showInternetCallLabel(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 4

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/android/incallui/InCallDateUtils;->formatDetailedDuration(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eq p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPositionForSecondaryCallInfo()V

    :cond_0
    if-eqz p1, :cond_6

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryCallInfo(Z)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallConferenceCallIcon:Landroid/view/View;

    if-eqz p6, :cond_5

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    :goto_2
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateColors()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    iget v2, v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    goto :goto_0
.end method
