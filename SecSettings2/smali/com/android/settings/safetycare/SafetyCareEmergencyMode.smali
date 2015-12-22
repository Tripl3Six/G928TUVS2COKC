.class public Lcom/android/settings/safetycare/SafetyCareEmergencyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareEmergencyMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mInitialCallState:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMoreInfo:Landroid/widget/TextView;

.field private mMoreInfoLayout:Landroid/widget/LinearLayout;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$3;

    invoke-direct {v0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$3;-><init>()V

    sput-object v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpType:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;-><init>(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$2;-><init>(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0e5b

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v8}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    const v8, 0x7f0401aa

    invoke-virtual {p1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f1003b4

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    const v8, 0x7f1003b3

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const v8, 0x7f1003b5

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    const v8, 0x7f1003b6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a13a7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const v8, 0x7f02025d

    iput v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    :goto_0
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->setHasOptionsMenu(Z)V

    return-object v6

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v8, "VZW"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11d3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11e1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11e2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11e3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11e4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f040149

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v8, 0x7f1002dc

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a11e8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0a13a8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    :cond_8
    const v8, 0x7f02025e

    iput v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:item"

    const-string v5, "emergency_mode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "emergency_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SafetyCareEmergencyMode"

    const-string v2, "isVideoCall() so, disable UPSM switch"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mInitialCallState:I

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SafetyCareEmergencyMode"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "SafetyCareEmergencyMode"

    const-string v3, "onCheckedChanged"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v4, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "enabled"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "flag"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "skipdialog"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method
