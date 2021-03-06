.class public Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;
.super Ljava/lang/Object;
.source "PersonalPageNotiManager.java"


# static fields
.field private static final NOTI_ID_PERSONAL_PAGE_MODE:I = 0x1

.field private static final PERSONAL_PAGE_NOTI_NONE:I = 0x0

.field private static final PERSONAL_PAGE_NOTI_OFF:I = 0x1

.field private static final PERSONAL_PAGE_NOTI_ON:I = 0x2

.field private static final PRIVATE_MODE_STATUSBAR_SLOT:Ljava/lang/String; = "private_mode"

.field public static final TAG:Ljava/lang/String; = "PersonalPageNotiManager"

.field private static final currentapiVersion:I

.field private static mSalesCode:Ljava/lang/String;

.field private static mStatusBarMgr:Landroid/app/StatusBarManager;

.field private static m_Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializePrivateModeNoti(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    sput-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    return-void
.end method

.method private static secretModeSetNotification(Landroid/app/NotificationManager;IIIIII)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-nez v5, :cond_0

    const-string v5, "PersonalPageNotiManager"

    const-string v6, "mContext is null, return"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string v5, "PersonalPageNotiManager"

    const-string v6, "notificationManager is null, return"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2
    if-lez p2, :cond_3

    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (Non Secure Storage)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (Non Secure Storage)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v5, "PersonalPageNotiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / Notification IndicatorState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_5

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    sget-object v5, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-static {v5, v8, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, p5, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setPrivateModeIndicator(Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-nez v7, :cond_0

    const-string v5, "PersonalPageNotiManager"

    const-string v7, "setPrivateModeIndicator: m_Context is null. "

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v7, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v5, "PersonalPageNotiManager"

    const-string v7, "setPrivateModeIndicator: notificationManager is null, return"

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    const/4 v6, 0x2

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v5, "PersonalPageNotiManager"

    const-string v7, "nIndicator is NONE"

    invoke-static {v5, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f050001

    const v3, 0x7f050002

    const v1, 0x7f02000e

    const v4, 0x7f050001

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->secretModeSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setPrivateModeNotification(Z)V
    .locals 5

    const-string v0, "VZW"

    sget-object v1, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->currentapiVersion:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v1, "private_mode"

    const v2, 0x7f02000f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v1, "private_mode"

    invoke-virtual {v0, v1, p0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v1, "private_mode"

    invoke-virtual {v0, v1, p0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v1, "private_mode"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeIndicator(Z)V

    goto :goto_0
.end method

.method public static showToastMessage(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastMessageForMode(Z)V
    .locals 4

    sget-object v2, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    check-cast v2, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-eqz p0, :cond_1

    const v2, 0x7f050003

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Non Secure Storage)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->isSupportSecureStorage()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const v2, 0x7f050004

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->m_Context:Landroid/content/Context;

    if-eqz p0, :cond_3

    const v2, 0x7f050002

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v2, 0x7f05000f

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method
