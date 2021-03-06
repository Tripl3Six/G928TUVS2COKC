.class public Lcom/android/phone/callsettings/CallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallBarring$20;,
        Lcom/android/phone/callsettings/CallBarring$AppState;
    }
.end annotation


# static fields
.field private static mCheckAllIncoming:Z

.field private static mCheckAllOutgoing:Z

.field private static mCheckAllOutgoingCMCC:Z

.field public static mSimId:I


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

.field private mBAIC:Z

.field private mBAOC:Z

.field private mCBVisible:Z

.field private mCB_Checked:Z

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPW:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mDialog:Landroid/app/AlertDialog;

.field private mGetIndex:I

.field private mIsVoLTE:Z

.field private mMeterialCallBarringList1Pref:Landroid/preference/SwitchPreference;

.field private mMeterialCallBarringList2Pref:Landroid/preference/SwitchPreference;

.field private mMeterialCallBarringList3Pref:Landroid/preference/SwitchPreference;

.field private mMeterialCallBarringList4Pref:Landroid/preference/SwitchPreference;

.field private mMeterialCallBarringList5Pref:Landroid/preference/SwitchPreference;

.field private mMeterialPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPW:Z

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPW:Z

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private passwordDialog:Landroid/app/AlertDialog;

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    sput-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    sput-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoingCMCC:Z

    sput v0, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/phone/callsettings/CallBarring$15;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$15;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/CallBarring$16;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$16;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/CallBarring$17;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$17;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/CallBarring;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/callsettings/CallBarring;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    return p1
.end method

.method static synthetic access$2608(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 2

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    return p1
.end method

.method static synthetic access$2800(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/callsettings/CallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPW:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPW:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPW:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPW:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/CallBarring;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 2

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/CallBarring;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    :cond_2
    const-string v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 8

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    :cond_0
    const v4, 0x7f0a0320

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_3

    :cond_2
    const v4, 0x7f0a0321

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_5

    :cond_4
    const v4, 0x7f0a0322

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x7f0a0324

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const v4, 0x7f0a0282

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ge v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBAOC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBAIC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGetIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    if-lt v0, v4, :cond_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->finish()V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getCallBarring()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_0

    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallBarring"

    const-string v2, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    const-string v3, "CallBarring"

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v3, 0x384

    :goto_0
    return v3

    :cond_0
    const-string v3, "CallBarring"

    const-string v4, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    const/16 v3, 0xc8

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v3, v2

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    aget v3, v2, v6

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    aget v3, v2, v6

    if-nez v3, :cond_10

    :cond_5
    const-string v3, "handleQueryCBMessage() Disabled"

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v3, :cond_c

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    if-nez v3, :cond_b

    const v3, 0x7f0a0317

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    :cond_7
    :goto_2
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v6, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    :cond_8
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v6, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    :cond_9
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    :goto_3
    const/16 v3, 0x64

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    if-ne v3, v7, :cond_7

    const v3, 0x7f0a0317

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_7

    const v3, 0x7f0a0317

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v6, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    :cond_e
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v7, :cond_f

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v6, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    :cond_f
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_10
    aget v3, v2, v6

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11

    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    aget v3, v2, v6

    if-eqz v3, :cond_1c

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryCBMessage() Enabled. mSelectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    const-string v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v3, :cond_18

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    if-nez v3, :cond_17

    const v3, 0x7f0a0316

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    :cond_14
    :goto_4
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    :cond_15
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v7, :cond_16

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    :cond_16
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_17
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    if-ne v3, v7, :cond_14

    const v3, 0x7f0a0316

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_14

    const v3, 0x7f0a0316

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    :cond_1a
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v7, :cond_1b

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    :cond_1b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_1c
    const/16 v3, 0xc8

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0xc8

    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 5

    const/4 v4, 0x1

    const/16 v2, 0xc8

    const/16 v1, 0x64

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/16 v1, 0x190

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x258

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x1f4

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_5

    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_6

    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    const v2, 0x7f0a0323

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CallBarring"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallBarring"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video_call_not_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    sput v0, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_0
    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v0, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "AB"

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const-string v0, "AO"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V

    const-string v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCBQueryCommand. mSelectedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "support_additional_ss_query"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->XSP_IsSingtel()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "AO"

    goto :goto_0

    :pswitch_1
    const-string v0, "OI"

    goto :goto_0

    :pswitch_2
    const-string v0, "OX"

    goto :goto_0

    :pswitch_3
    const-string v0, "AI"

    goto :goto_0

    :pswitch_4
    const-string v0, "IR"

    goto :goto_0

    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    const-string v2, "AO"

    const/4 v1, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "requestCBSetCommand (process) Exception!"

    invoke-static {v0, v7}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_1

    :goto_1
    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    const-string v0, "CallBarring"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallBarringOption. bActivate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v0, :cond_2

    iput-boolean v7, p0, Lcom/android/phone/callsettings/CallBarring;->mBAOC:Z

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p1, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    :goto_3
    return-void

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const-string v2, "AO"

    goto :goto_1

    :pswitch_4
    const-string v2, "OI"

    goto :goto_1

    :pswitch_5
    const-string v2, "OX"

    goto :goto_1

    :pswitch_6
    const-string v2, "AI"

    goto :goto_1

    :pswitch_7
    const-string v2, "IR"

    goto :goto_1

    :pswitch_8
    const-string v2, "AB"

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v0, v9, :cond_1

    iput-boolean v7, p0, Lcom/android/phone/callsettings/CallBarring;->mBAIC:Z

    iput v9, p0, Lcom/android/phone/callsettings/CallBarring;->mGetIndex:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p1, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    const-string v0, "setAppState: illegal error state without reason."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v7, 0x1f4

    const/16 v6, 0x12c

    const/16 v5, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppState() mAppState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ,requestedState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",msgStatus:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-nez v0, :cond_1

    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBVisible : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " so, we try remove busy dialog"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_5

    sparse-switch p2, :sswitch_data_0

    :goto_1
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_3
    if-eq p2, v5, :cond_3

    const/16 v0, 0x320

    if-eq p2, v0, :cond_3

    if-eq p2, v6, :cond_3

    if-eq p2, v7, :cond_3

    const/16 v0, 0x384

    if-eq p2, v0, :cond_3

    const/16 v0, 0x258

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V

    :cond_4
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBVisible : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " so, skip displaying dialog"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    move v3, v2

    :cond_8
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/callsettings/CallBarring$20;->$SwitchMap$com$android$phone$callsettings$CallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_a

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_b

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_a

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_4

    :cond_c
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_d

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto :goto_4

    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_e

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_0

    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->requestCBSetCommand(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private setCallBarringState(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->setHoldstate()V

    :cond_0
    return-void

    :cond_1
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setHoldstate()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoingCMCC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    sget-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    if-eqz v0, :cond_5

    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    if-eqz v0, :cond_3

    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoing:Z

    if-eqz v0, :cond_a

    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_2
    sget-boolean v0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllIncoming:Z

    if-eqz v0, :cond_c

    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_c
    const-string v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f10003f

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040012

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a032d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    const v2, 0x7f100042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    const v2, 0x7f100043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    sget-object v2, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/callsettings/CallBarring$18;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$18;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/callsettings/CallBarring$19;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$19;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "callbarring_baoc_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList1Pref:Landroid/preference/SwitchPreference;

    const-string v3, "callbarring_baoic_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList2Pref:Landroid/preference/SwitchPreference;

    const-string v3, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList3Pref:Landroid/preference/SwitchPreference;

    const-string v3, "callbarring_baic_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList4Pref:Landroid/preference/SwitchPreference;

    const-string v3, "callbarring_baicr_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList5Pref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList1Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList2Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList3Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList4Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialCallBarringList5Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "disable_call_barring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "show_call_barring_password"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ril.ss.routing"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CallBarring"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "routing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne v2, v4, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v6, 0x7f040004

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v6, 0x7f100017

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Lcom/android/phone/callsettings/CallBarring$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$1;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/phone/callsettings/CallBarring$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$2;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/phone/callsettings/CallBarring$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/CallBarring$3;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->onCreateMultiSIM()V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :cond_3
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    const-string v3, "CallBarring"

    const-string v6, "skip set or get CallBarring"

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V

    :goto_2
    return-void

    :cond_4
    const-string v3, "callbarring_baoc_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    const-string v3, "callbarring_baoic_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    const-string v3, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    const-string v3, "callbarring_baic_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    const-string v3, "callbarring_baicr_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "disable_call_barring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto/16 :goto_1

    :cond_6
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    const-string v3, "disable_outgoing_callbarring_cmcc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lcom/android/phone/callsettings/CallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v3

    if-eqz v3, :cond_7

    sput-boolean v4, Lcom/android/phone/callsettings/CallBarring;->mCheckAllOutgoingCMCC:Z

    iput v8, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    :cond_7
    if-eqz p1, :cond_8

    move-object v1, p1

    const-string v3, "mCB_Checked"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    const-string v3, "mSelectedIndex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->setHasOptionsMenu(Z)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "skip_call_barring_outgoing"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput v8, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const/4 v4, 0x0

    const v9, 0x7f0a0282

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateDialog id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0a031d

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    :goto_1
    return-object v4

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v6, 0x7f040004

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v5, 0x7f100017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const v5, 0x7f0a032c

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a032b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/callsettings/CallBarring$9;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CallBarring$9;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0283

    new-instance v5, Lcom/android/phone/callsettings/CallBarring$10;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CallBarring$10;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    new-instance v4, Lcom/android/phone/callsettings/CallBarring$11;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CallBarring$11;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/callsettings/CallBarring$12;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CallBarring$12;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :sswitch_1
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    sparse-switch p1, :sswitch_data_1

    :sswitch_2
    const v3, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_2

    const v2, 0x7f0a00ed

    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/CallBarring$14;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CallBarring$14;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f0a00ea

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f0a00e9

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/phone/callsettings/CallBarring$13;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CallBarring$13;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    :sswitch_5
    const v2, 0x7f0a00ec

    goto :goto_2

    :sswitch_6
    const v2, 0x7f0a00ee

    goto :goto_2

    :sswitch_7
    const v2, 0x7f0a031d

    goto :goto_2

    :sswitch_8
    const v2, 0x7f0a031e

    goto :goto_2

    :sswitch_9
    const v2, 0x7f0a031f

    goto :goto_2

    :sswitch_a
    const v3, 0x7f0a027b

    const v2, 0x7f0a030b

    goto :goto_2

    :pswitch_0
    const v2, 0x7f0a031d

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_2
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_3
        0x384 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "CallBarring"

    const-string v1, "Skip the options menu."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_2
    const v0, 0x7f0a032d

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020099

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->showPasswordDialog()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-wide/16 v2, 0xc8

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$4;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$5;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$6;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallBarring$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/CallBarring$7;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "mCB_Checked"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mSelectedIndex"

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "callbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    :cond_0
    const-string v1, "callbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    :cond_1
    const-string v1, "callbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    :cond_2
    const-string v1, "callbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    :cond_3
    const-string v1, "callbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    :goto_0
    return-void

    :cond_5
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mIsVoLTE:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/CallBarring$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$8;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
