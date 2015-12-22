.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyDialer$7;,
        Lcom/android/phone/EmergencyDialer$ActionModeCallback;
    }
.end annotation


# static fields
.field private static final DIALER_KEYS:[I


# instance fields
.field private HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private isLostPhoneLock:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAdditionalButtons:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearedByCode:Z

.field private mCurrentRepeatCount:I

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDeleteModeFromMenu:Z

.field private mDialButton:Landroid/view/View;

.field private mDialButtonSim1:Landroid/view/View;

.field private mDialButtonSim2:Landroid/view/View;

.field private mDialSplit:Landroid/view/View;

.field private mDialpadContainer:Landroid/view/View;

.field private mDialpadView:Landroid/view/View;

.field private mDigits:Landroid/widget/EditText;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mDummyList:Landroid/widget/ListView;

.field private mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

.field private mFragmentView:Landroid/view/View;

.field private mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mIsClick:Z

.field private mIsLongClick:Z

.field private mLastNumber:Ljava/lang/String;

.field private mLeftArrow:Landroid/view/View;

.field private mLocked:Z

.field private mMobileKeyboardCovered:Z

.field private mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

.field private mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

.field private mOnehandEnabledObserver:Landroid/database/ContentObserver;

.field private mPreviousRepeatCount:I

.field private mRightArrow:Landroid/view/View;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundTone:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVolumeFloat:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    return-void

    :array_0
    .array-data 4
        0x7f100074
        0x7f100076
        0x7f100078
        0x7f10007a
        0x7f10007c
        0x7f10007e
        0x7f100080
        0x7f100082
        0x7f100084
        0x7f100086
        0x7f100088
        0x7f10008a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    const-string v0, "hand_adaptable_operation"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/EmergencyDialer$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/EmergencyDialer$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/EmergencyDialer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/EmergencyDialer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/EmergencyDialer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyDialer;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDigitsLayoutParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->recreateEmergencyDialer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/EmergencyDialer;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getCheckedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/EmergencyDialer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/EmergencyDialer;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method private convertToView(I)Landroid/view/View;
    .locals 3

    const-string v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToView, keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mFragmentView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0206

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0207

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableHovering(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHoverPopupType(I)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getCheckedCount()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItem;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleMobileKeyboardConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private inflateEmergencyDialer()V
    .locals 8

    const v7, 0x7f04003e

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->isPenMultiWindow()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "is_phone_osup"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    :goto_1
    const v4, 0x7f1000cc

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setDigitsTypeface()V

    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    const v4, 0x7f1000cf

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    const v4, 0x7f1000cd

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    const v4, 0x7f1000ce

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSide()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    const-string v4, "emergency_contacts_item"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->initEmergencyContactsItem()V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyContactItemContainer;->restoreContainerState()V

    const-string v4, "zero_emergency_dialer_layout"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "tablet_l"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "emergency_dialer_digits_layout_params"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDigitsLayoutParams()V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_4
    :goto_3
    const v4, 0x7f100074

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    :cond_5
    const-string v4, "support_mobile_keyboard"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupMobileKeyboard()V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateAdditionalButtons()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateMultiChoiceMode()V

    return-void

    :cond_7
    move v1, v5

    goto/16 :goto_0

    :cond_8
    const-string v4, "zero_emergency_dialer_layout"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f04003f

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_1

    :cond_9
    const v4, 0x7f040040

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    :cond_c
    const-string v4, "tablet_l"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    goto :goto_3
.end method

.method private initEmergencyContactsItem()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EmergencyDialer"

    const-string v2, "initEmergencyContactsItem() : Disable.. for kids mode"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-nez v1, :cond_2

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyDialerInstance(Lcom/android/phone/EmergencyDialer;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyDialerInstance(Lcom/android/phone/EmergencyDialer;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tablet_l_osup"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method private isKnox()Z
    .locals 1

    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private launchEmergencyCallList()V
    .locals 5

    const-string v0, "com.samsung.phone.EmergencyDialer.LIST"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method private launchEmergencyContactList()V
    .locals 18

    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v16

    if-nez v16, :cond_1

    const/4 v12, 0x0

    :goto_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v15, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->getPhoneCount()I

    move-result v1

    if-ge v15, v1, :cond_2

    invoke-static {v15}, Lcom/android/phone/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v16

    const/4 v1, 0x1

    if-ne v12, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    if-nez v16, :cond_0

    const/4 v12, 0x0

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "emergency"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "default_emergency"

    aput-object v5, v3, v4

    const-string v4, "default_emergency = 2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_2
    const/4 v14, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v14, 0x1

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_3
    const/4 v13, 0x0

    if-eqz v14, :cond_4

    if-nez v12, :cond_5

    :cond_4
    if-eqz v13, :cond_9

    :cond_5
    const v1, 0x7f0a0523

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_2

    :cond_8
    const/4 v14, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    const/4 v10, 0x0

    :try_start_0
    const-string v7, "com.samsung.contacts"

    const-string v1, "zero_emergency_dialer_layout"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v11, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".action.SHOW_EMERGENCY_DIALER_CONTACTS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    :goto_5
    const-string v1, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchEmergencyContactList: default only : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "default_only"

    invoke-virtual {v10, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_a
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".action.SHOW_EMERGENCY_CONTACTS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v11

    goto :goto_5
.end method

.method private loadSoundPoolTone()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    const v2, 0x7f080005

    invoke-virtual {v1, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mSoundTone:I

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "situation=0;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    return-void
.end method

.method private placeCall()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    return-void
.end method

.method private placeCall(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DialEmergNumAsNormalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/android/phone/EmergencyDialer;->isSwcEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v8, "feature_kor"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "119"

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ril.skt119Cat"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-ltz p1, :cond_6

    invoke-static {p1}, Lcom/android/phone/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v4

    :cond_1
    :goto_1
    const-string v8, "EmergencyDialer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placing call to simNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isEmergencyNumber:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v4, :cond_2

    if-eqz v5, :cond_e

    :cond_2
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_3
    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->playTone()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const-string v8, "ril.skt119Cat"

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1, v11}, Lcom/android/phone/EmergencyDialerUtils;->selectSimForEmergency(IZ)I

    move-result v6

    const-string v8, "EmergencyDialer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placing simIdForEmergency: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", currentSimId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v6, :cond_7

    invoke-static {v6}, Lcom/android/phone/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v4

    if-eq v6, v1, :cond_1

    move p1, v6

    const-string v8, "EmergencyDialer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placing simIdForEmergency simNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Lcom/android/phone/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_2

    :cond_9
    const/16 v8, 0x1a

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v12}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    if-eqz v5, :cond_c

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_4
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "telecom"

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v12, :cond_b

    if-ne p1, v12, :cond_d

    const-string v9, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_b
    :goto_5
    const-string v8, "tel"

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "SKTRADDialOption"

    const-string v9, "abroad"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3}, Lcom/android/phone/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-boolean v8, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-interface {v8, v11, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_3

    :cond_c
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    if-nez p1, :cond_b

    const-string v9, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    :cond_e
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-interface {v8, v11, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_3
.end method

.method private playTone()V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mSoundTone:I

    iget v2, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mVolumeFloat:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private recreateEmergencyDialer()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emergency_contacts_item"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->inflateEmergencyDialer()V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    const-string v2, "emergency_contacts_item"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v2, :cond_4

    const-string v2, "zero_emergency_dialer_layout"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "emergency_dialer_digits_layout_params"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDigitsLayoutParams()V

    :cond_2
    const-string v2, "tablet_l"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->makeEmergencyContactQuery()V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDigitsTypeface()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "system/fonts/SamsungSans-Num3L.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 7

    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->disableHovering(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v6, 0x7f100088

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupMobileKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/EmergencyDialer$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$5;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMobileKeyboardCovered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMobileKeyboardCovered:Z

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMobileKeyboardCovered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->handleMobileKeyboardConnected()V

    :cond_0
    return-void
.end method

.method private shouldDisplayTwoDialButton()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->checkDualSimReady()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->getInsertedSimCard()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    move v0, v3

    :goto_1
    const-string v5, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDisplayTwoDialButton, isDualSimReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDisplayTwoDialButton, insertedSimNum : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDisplayTwoDialButton, airplaneModeOn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "feature_multisim_modem_type_DCGS"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "EmergencyDialer"

    const-string v6, "shouldDisplayTwoDialButton, DCGS"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "EmergencyDialer"

    const-string v1, "EnableSip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/EmergencyDialer$6;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$6;-><init>(Lcom/android/phone/EmergencyDialer;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateAdditionalButtons()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->updateAdditionalButtons(Z)V

    return-void
.end method

.method private updateAdditionalButtons(Z)V
    .locals 11

    const v10, 0x7f0f000a

    const/16 v9, 0x8

    const/4 v6, 0x0

    const v5, 0x7f10008b

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config_show_onscreen_dial_button:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v7, 0x7f10008c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialButtons()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDeleteButton()V

    const-string v5, "emergency_contacts"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v5, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "tablet_l_osup"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0d0170

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v5, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v5, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v5, "emergency_dialer_expandable_dial"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->checkDualSimReady()Z

    move-result v1

    const-string v5, "zero_emergency_dialer_layout"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    const/16 v5, 0xa

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_5
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    move v5, v6

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    const/4 v5, 0x4

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private updateDeleteButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v1, 0x7f100091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDialButtons()V
    .locals 7

    const/16 v6, 0x66

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f10008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    const-string v1, "emergency_dialer_button_rounded_rectangle"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f020067

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f10008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f100090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f10008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->shouldDisplayTwoDialButton()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-static {v2, v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "zero_emergency_dialer_layout"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    const v0, 0x7f020065

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDigitsLayoutParams()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMultiChoiceMode()V
    .locals 2

    const v0, 0x7f10002b

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    new-instance v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;-><init>(Lcom/android/phone/EmergencyDialer;Lcom/android/phone/EmergencyDialer$1;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    :cond_0
    return-void
.end method

.method private updateOneHandSide()V
    .locals 10

    const v9, 0x7f0d0048

    const v8, 0x7f0d0047

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_3

    :goto_0
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v2, :cond_4

    move v5, v4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    move v6, v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    goto :goto_3
.end method

.method private updateTtsSpans()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/TtsSpan;

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TtsSpan;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateTtsSpans()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getDeleteModeFromMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return v0
.end method

.method public getDummyListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    return-object v0
.end method

.method public isPenMultiWindow()Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "support_penwindow_callscreen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x800

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException Caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isSwcEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    return-void
.end method

.method public notifyCheckChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    const-string v4, "EmergencyDialer"

    const-string v5, "onBackPressed()..."

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "emergency_contacts_item"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isKnox()Z

    move-result v1

    const-string v4, "EmergencyDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is Knox "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowManager;->startFreezingScreen(II)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :catch_0
    move-exception v0

    const-string v4, "EmergencyDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFreezingScreen - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "emergency_contacts_item"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyCallList()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyContactList()V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSide()V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSide()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100074 -> :sswitch_1
        0x7f100076 -> :sswitch_2
        0x7f100078 -> :sswitch_3
        0x7f10007a -> :sswitch_4
        0x7f10007c -> :sswitch_5
        0x7f10007e -> :sswitch_6
        0x7f100080 -> :sswitch_7
        0x7f100082 -> :sswitch_8
        0x7f100084 -> :sswitch_9
        0x7f100086 -> :sswitch_c
        0x7f100088 -> :sswitch_a
        0x7f10008a -> :sswitch_b
        0x7f10008c -> :sswitch_11
        0x7f10008d -> :sswitch_e
        0x7f10008e -> :sswitch_f
        0x7f100090 -> :sswitch_10
        0x7f100091 -> :sswitch_d
        0x7f1000cc -> :sswitch_0
        0x7f1000cd -> :sswitch_13
        0x7f1000cf -> :sswitch_12
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "EmergencyDialer"

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "zero_emergency_dialer_layout"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "tablet_device"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v10, "tablet_device"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "tablet_l"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "DismissClipboardDialogFromEmergencyDialer"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x80000

    or-int/2addr v10, v11

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v10, Landroid/content/Intent;

    const-string v11, "intent.stop.app-in-app"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-boolean v10, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v11, 0x1770000

    invoke-virtual {v10, v11}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    const/16 v10, 0xa

    const-string v11, "EmergencyDialer"

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->inflateEmergencyDialer()V

    if-eqz p1, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v10, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_5

    :try_start_1
    new-instance v10, Landroid/media/ToneGenerator;

    const/4 v12, 0x1

    const/16 v13, 0x2d

    invoke-direct {v10, v12, v13}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "lost_phone_lock"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "com.android.phone.Emergencydialer.LOST_PHONE_UNLOCK"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_6
    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v4}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v10, "support_onehand_operation"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "interactionarea_switch"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "any_screen_running"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    const v11, 0x7f0f0004

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual {v10, p0, v11}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    const-string v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    const-string v10, "ril.domesticOtaStart"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    const-string v10, "EmergencyDialer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception caught while creating local tone generator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    :catch_1
    move-exception v6

    const-string v10, "EmergencyDialer"

    const-string v11, "Vibrate control bool missing."

    invoke-static {v10, v11, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0204

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "emergency_contacts_item"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "EmergencyDialer"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsClick:Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsLongClick:Z

    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyDialer;->convertToView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsClick:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->onClick(Landroid/view/View;)V

    const-string v1, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKey:mIsClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/EmergencyDialer;->mIsClick:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v2

    :pswitch_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsLongClick:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->onLongClick(Landroid/view/View;)Z

    const-string v1, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKey:mIsLongClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/EmergencyDialer;->mIsLongClick:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f1000cc
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x1b -> :sswitch_0
        0x43 -> :sswitch_2
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12a -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "play_emergency_dialer_key_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyDialer;->playToneByKey(I)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100074 -> :sswitch_0
        0x7f100076 -> :sswitch_0
        0x7f100078 -> :sswitch_0
        0x7f10007a -> :sswitch_0
        0x7f10007c -> :sswitch_0
        0x7f10007e -> :sswitch_0
        0x7f100080 -> :sswitch_0
        0x7f100082 -> :sswitch_0
        0x7f100084 -> :sswitch_0
        0x7f100088 -> :sswitch_2
        0x7f100091 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmergencyDialer"

    const-string v1, "onMultiWindowStyleChanged - recreateEmergencyDialer()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->recreateEmergencyDialer()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyDialer;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->onBackPressed()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f100115 -> :sswitch_2
        0x7f10016d -> :sswitch_1
        0x7f100204 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v2, "EmergencyDialer"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0xbb

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    :cond_0
    :goto_0
    const-string v2, "emergency_dialer_tones"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string v2, "emergency_contacts_item"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->storeContainerState()V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    iput-object v5, v2, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v4}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v2, "EmergencyDialer"

    const-string v3, "on Pause - lost phone lock - reenabling status bar"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    const-string v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0, v4}, Lcom/android/phone/EmergencyDialerUtils;->sendDualmodeSettingBroadcast(Landroid/content/Context;I)V

    :cond_7
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f10016d

    const v4, 0x7f100115

    const v3, 0x7f100204

    const/4 v0, 0x0

    const-string v1, "emergency_contacts_item"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer;->getEmergencyContactExist()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/phone/EmergencyDialer$7;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ScreenType:[I

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v1, "zero_emergency_dialer_layout"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tablet_l_osup"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02007f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :pswitch_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v3, "EmergencyDialer"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "zero_emergency_dialer_layout"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v4, 0x1

    const/16 v5, 0x2d

    invoke-direct {v1, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->loadSoundPoolTone()V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v1, "emregency_dialer_home_recent_block"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1200000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1770000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_5
    const-string v1, "emergency_contacts_item"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    if-eqz v1, :cond_8

    const-string v1, "zero_emergency_dialer_layout"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/phone/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "emergency_dialer_digits_layout_params"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDigitsLayoutParams()V

    :cond_6
    const-string v1, "tablet_l"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer;->makeEmergencyContactQuery()V

    :cond_8
    const-string v1, "feature_multisim_dsda"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0, v2}, Lcom/android/phone/EmergencyDialerUtils;->sendDualmodeSettingBroadcast(Landroid/content/Context;I)V

    :cond_9
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->showSoftInput()V

    :cond_a
    return-void

    :cond_b
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "EmergencyDialer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/utils/FileWriteThread;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/phone/utils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/utils/FileWriteThread;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "EmergencyDialer"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/utils/FileWriteThread;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/phone/utils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/utils/FileWriteThread;->start()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->playTone()V

    :cond_0
    const-string v0, "emergency_dialer_haptic_feedback_enabled"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method playTone(I)V
    .locals 6

    const-string v2, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    const-string v2, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x5a

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method playToneByKey(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method removeLockScreenAnimationEffects(Z)V
    .locals 0

    return-void
.end method

.method public setDeleteModeFromMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return-void
.end method

.method public setMultimode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    :cond_1
    return-void
.end method

.method public updateCheck()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method
