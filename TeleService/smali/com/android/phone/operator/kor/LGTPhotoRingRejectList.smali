.class public Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;,
        Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;,
        Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;,
        Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static defaultName:Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final DIALOG_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private createView:Landroid/widget/ImageView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedCount:I

.field private mCheckedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEditModeFromMenu:Z

.field private mEmpty:Landroid/widget/TextView;

.field private mEnableCheckedView:Z

.field private mFirstVisibleItem:I

.field private mFromContextMenu:Z

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mModeCallback:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSavedCnt:I

.field private mScreenType:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/view/View;

.field private mSelectLayout:Landroid/view/View;

.field private mSelectedItem:I

.field private mUpdateScreen:Z

.field private queryString:Ljava/lang/String;

.field private searchLayout:Landroid/widget/LinearLayout;

.field private svSearch:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->SRC_TAGS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "photoring_reject_number"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "photoring_reject_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->NORMAL_SCREEN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->DELETE_SCREEN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->DIALOG_SCREEN:I

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    iput-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllLayout:Landroid/view/View;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->QUERY_COMPLETE:I

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mUpdateScreen:Z

    iput-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFromContextMenu:Z

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsOutgoing:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsForeground:Z

    iput-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsSelectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    iput-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSavedCnt:I

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$1;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFromContextMenu:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;ILandroid/widget/ListView;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # I
    .param p2    # Landroid/widget/ListView;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->sendTouchEvent(ILandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4002(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method private addUnknownItem()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_unknown_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v0, 0x7f0a0085

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0a0586

    :cond_0
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0a0308

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 7

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "UPDATE_ID"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0578

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a05ca

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 6
    .param p1    # I

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LGTPhotoRingRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private hasUnknownItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const v2, 0x7f0a05fa

    const/4 v3, 0x0

    const v1, 0x7f10002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    const v1, 0x7f100105

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$1;)V

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v1, 0x7f10012e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$3;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$3;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10012f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f100130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const v2, 0x102042f

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$5;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$6;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$6;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$8;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$8;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_2
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    const v2, 0x7f0a06e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "LGTPhotoRingRejectList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "LGTPhotoRingRejectList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeScreen : ScreenType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    const/4 v11, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "country_detector"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/CountryDetector;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->addUnknownItem()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoRejectNum idx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "checked ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v14, v3, v8}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSavedCnt:I

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    :cond_5
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateCount()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startContactQuery()V

    :cond_6
    return-void

    :cond_7
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v7, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v14, v3, v8, v7}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    goto :goto_1
.end method

.method private sendTouchEvent(ILandroid/widget/ListView;)V
    .locals 9
    .param p1    # I
    .param p2    # Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v4, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private startContactQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$1;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    const-string v0, "LGTPhotoRingRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # I

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "photoring_reject_number"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "photoring_reject_checked"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p3

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v3, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 7

    const v6, 0x7f0a05ca

    const v5, 0x7f0a0578

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const-string v2, "call_block_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const v2, 0x7f0a0433

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v2, "call_block_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v2, v4, :cond_7

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v2, 0x7f0a0432

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-string v2, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v2, v4, :cond_b

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->autoreject_maxcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addAutoRejectList()V
    .locals 6

    const/4 v3, 0x3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a0578

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a028e

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "Fragment is not added, ignore it!."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public deleteDialog(ZIZ)V
    .locals 8
    .param p1    # Z
    .param p2    # I
    .param p3    # Z

    const v7, 0x7f0a02a0

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean p3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFromContextMenu:Z

    if-ne p2, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a02a2

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0286

    new-instance v6, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0283

    new-instance v6, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$12;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$12;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$14;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$14;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const v4, 0x7f0a02a4

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f0a02a3

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteFromContextMenu()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteAutoRejectNumber(I)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    const v1, 0x7f0a0318

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    iput v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateCount()V

    return-void
.end method

.method public deleteManyItems()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteAutoRejectNumber(I)V

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    const-string v3, "LGTPhotoRingRejectList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v3, 0x7f0a0318

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const-string v1, "changed "

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    const-string v1, "zero_support_selection_all_text"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    const-string v1, "LGTPhotoRingRejectList"

    const-string v2, "onCreate "

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->autoreject_maxcount:I

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1    # I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0a0284

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0a0286

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "LGTPhotoRingRejectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$10;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$10;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a008e

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$11;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$11;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const v1, 0x7f040078

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "photoring_blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    const-string v1, "screen_type"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyUp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_1
    return v4

    :sswitch_0
    iget v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Landroid/widget/ListView;

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v4, 0x7f10003a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    :cond_2
    const v4, 0x7f100057

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->addAutoRejectList()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->stopContactQuery()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1    # Landroid/view/Menu;

    const v6, 0x7f0a0281

    const v4, 0x7f020007

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$15;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$15;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const-string v0, "tablet_l_osup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v2, v1, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0a0382

    invoke-interface {p1, v2, v5, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSavedCnt:I

    iget v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->autoreject_maxcount:I

    if-ge v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSavedCnt:I

    if-lez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSavedCnt:I

    iget v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->autoreject_maxcount:I

    if-ge v0, v4, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    return-void

    :cond_3
    invoke-interface {p1, v2, v1, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0a0286

    invoke-interface {p1, v2, v5, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f02007f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onResume "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsForeground:Z

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->removeDialog(I)V

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->startContactQuery()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "photoring_blacklist_id"

    iget v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "screen_type"

    iget v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setActionMode(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    if-ne v0, v2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteDialog(ZIZ)V

    :goto_1
    return-void

    :cond_3
    const-string v3, "No items selected"

    invoke-direct {p0, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$9;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$9;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePopupMenuItemsVisibility()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    sub-int/2addr v3, v6

    if-ne v0, v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsSelectAll:Z

    if-nez v0, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f100004

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsSelectAll:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f100206

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method
