.class public Lcom/android/settings/spen/DirectPenInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_INPUT_LANGUAGE:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private isTryButtonPressed:Z

.field private mActivity:Landroid/app/Activity;

.field private final mDirectPenObserver:Landroid/database/ContentObserver;

.field private mListView:Landroid/widget/ListView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const-string v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const-string v0, "pen_writing_buddy_input_language"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    const-string v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    const-string v0, "accessibility_magnifier"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    const-string v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    const-string v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->enabledServicesSeparator:C

    iput-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-boolean v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    iput-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/settings/spen/DirectPenInputSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/DirectPenInputSettings$1;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/spen/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/spen/DirectPenInputSettings$5;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/android/settings/spen/DirectPenInputSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/spen/DirectPenInputSettings$6;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/spen/DirectPenInputSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/spen/DirectPenInputSettings$9;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/spen/DirectPenInputSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/spen/DirectPenInputSettings$10;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/spen/DirectPenInputSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/spen/DirectPenInputSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/spen/DirectPenInputSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/spen/DirectPenInputSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-object v0
.end method

.method private setPreferenceEnabled()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "input_language"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    const-string v3, "predictive_text"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private startTryIt()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.contacts.action.WRITINGBUDDY_SEARCH_INPUT_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/spen/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startWritingBuddyService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.writingbuddyservice"

    const-string v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DirectPenInputSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f070038

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v3, 0x7f1000c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/spen/DirectPenInputSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/DirectPenInputSettings$4;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/android/settings/spen/DirectPenInputSettings;->setHasOptionsMenu(Z)V

    const v8, 0x7f070037

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->addPreferencesFromResource(I)V

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "input_language"

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v8, "settings_more_information"

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_1
    const-string v8, "predictive_text"

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    move v4, v6

    :goto_2
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    new-instance v6, Lcom/android/settings/spen/DirectPenInputSettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/spen/DirectPenInputSettings$2;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v6, Lcom/android/settings/spen/DirectPenInputSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/spen/DirectPenInputSettings$3;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    return-void

    :cond_4
    move v5, v7

    goto :goto_0

    :cond_5
    const-string v8, "input_language"

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v8, "settings_more_information"

    invoke-virtual {p0, v8}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_6
    move v4, v7

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0e5b

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/spen/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v4, "writingbuddymanagerservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->startWritingBuddyService()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V

    const-string v4, "input_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Z)V
    .locals 5

    const v4, 0x7f0a1155

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1505

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1504

    new-instance v3, Lcom/android/settings/spen/DirectPenInputSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/DirectPenInputSettings$8;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spen/DirectPenInputSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/spen/DirectPenInputSettings$7;-><init>(Lcom/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/spen/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public turnOffTalkBack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    const/4 v0, 0x1

    return v0
.end method
