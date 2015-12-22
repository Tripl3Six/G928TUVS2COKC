.class public Lcom/android/phone/callsettings/CallSettingsProvider;
.super Landroid/content/ContentProvider;
.source "CallSettingsProvider.java"


# instance fields
.field private autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

.field autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

.field autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

.field autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

.field deleteprefix_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcall:Lcom/android/phone/callsettings/IpCallDB;

.field private ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

.field ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

.field ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

.field private photoring:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

.field photoring_db:Landroid/database/sqlite/SQLiteDatabase;

.field private registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

.field registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

.field private rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

.field rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->deleteprefix_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private appendRowId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getDisplayMode()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "display_mode"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "CallSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "display_mode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "CallSettingsProvider"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "CallSettingsProvider"

    const-string v2, "OMG, method is null!!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "reject_call_with_message_icon_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "getDisplayMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDisplayMode()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "CallSettingsProvider"

    const-string v2, "call() is used by IconMode only. You can add your code here."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v3, v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v8, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg_icon_mode"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg_icon_mode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_8
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_a
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_sim2"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_sim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "photoring_reject_num"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "photoring_reject_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0x11 -> :sswitch_a
        0x12 -> :sswitch_a
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x17 -> :sswitch_b
        0x18 -> :sswitch_b
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDatabase(Landroid/net/Uri;)Z
    .locals 4
    .param p1    # Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :sswitch_1
    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RegisterUssdDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCallCdmaDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCallDBSim2;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    :try_start_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0x11 -> :sswitch_8
        0x12 -> :sswitch_8
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_9
        0x18 -> :sswitch_9
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.android.phone.callsettings"

    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.com.android.phone.callsettings"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-object v5

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v5, v4

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v6, "reject_match"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v0, 0x0

    const-string v6, "reject_match"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_num"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_num"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string v6, "reject_match"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v0, 0x0

    const-string v6, "reject_match"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_videocall_num"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_3
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    const-string v6, "reject_match"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    const/4 v0, 0x0

    const-string v6, "reject_match"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_outgoingcall_num"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_4
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_8

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    :try_start_1
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_msg"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_9
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_msg"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_5
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x13

    if-eq v6, v7, :cond_a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "reject_msg_icon_mode"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_6
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_b

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "register_ussd"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_7
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "register_reply_msg"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERREPLYMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_8
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_d

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "ip_call"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_9
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_e

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "ip_call_cdma"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_a
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_f

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "ip_call_sim2"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_SIM2_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    :sswitch_b
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_10

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    iget-object v6, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "photoring_reject_num"

    invoke-virtual {v6, v7, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0x11 -> :sswitch_a
        0x12 -> :sswitch_a
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x17 -> :sswitch_b
        0x18 -> :sswitch_b
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_num"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_num/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_videocall_num"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_videocall_num/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_outgoingcall_num"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_outgoingcall_num/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg_list"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg_list/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg_icon_mode"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "reject_msg_icon_mode/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "register_ussd"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "register_ussd/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "register_reply_msg"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "register_reply_msg/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call_sim2"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call_sim2/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call_cdma"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "ip_call_cdma/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "delete_prefix"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "delete_prefix/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "photoring_reject_num"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.callsettings"

    const-string v2, "photoring_reject_num/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AutoRejectDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    new-instance v0, Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RegisterUssdDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    new-instance v0, Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/IpCallDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    new-instance v0, Lcom/android/phone/callsettings/IpCallDBSim2;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/IpCallDBSim2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallSim2:Lcom/android/phone/callsettings/IpCallDBSim2;

    new-instance v0, Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/IpCallCdmaDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    new-instance v0, Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring:Lcom/android/phone/operator/kor/LGTPhotoRingDB;

    const/4 v0, 0x0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "LOWMEMORY"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1    # Landroid/net/Uri;
    .param p2    # [Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    :sswitch_0
    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v10, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    move-object v2, v10

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_videocall_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_outgoingcall_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsCommon;->getRejectMessageCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg_icon_mode"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsCommon;->getRejectMessageIconModeCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_9
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_ussd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_reply_msg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_b
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_cdma"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_b
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_d
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_sim2"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v13}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "photoring_reject_num"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_a
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_8
        0x11 -> :sswitch_b
        0x12 -> :sswitch_b
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_c
        0x18 -> :sswitch_c
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_num"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_num"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v8, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_num"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_num"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_videocall_num"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_videocall_num"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_outgoingcall_num"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_outgoingcall_num"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_msg"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_msg"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_msg_icon_mode"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "reject_msg_icon_mode"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "register_ussd"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "register_ussd"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "register_reply_msg"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "register_reply_msg"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_7
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call_cdma"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call_cdma"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_9
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call_sim2"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_sim2_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ip_call_sim2"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_a
    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_b
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "photoring_reject_num"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->photoring_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "photoring_reject_num"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x17 -> :sswitch_b
        0x18 -> :sswitch_b
        0x19 -> :sswitch_a
        0x1a -> :sswitch_a
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
