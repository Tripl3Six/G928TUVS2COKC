.class public Landroid/support/v4/media/session/MediaSessionCompatApi14;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    }
.end annotation


# static fields
.field private static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field private static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field private static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field private static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field private static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field private static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field private static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field private static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field private static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field private static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field private static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field private static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field private static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field private static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field private static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field static final RCC_PLAYSTATE_NONE:I = 0x0

.field static final STATE_BUFFERING:I = 0x6

.field static final STATE_CONNECTING:I = 0x8

.field static final STATE_ERROR:I = 0x7

.field static final STATE_FAST_FORWARDING:I = 0x4

.field static final STATE_NONE:I = 0x0

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_REWINDING:I = 0x5

.field static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field static final STATE_STOPPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 4

    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_0
    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_1
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_2
    const-string v0, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_3
    const-string v0, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_4
    const-string v0, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_5
    const-string v0, "android.media.metadata.DATE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    const-string v1, "android.media.metadata.DATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_6
    const-string v0, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_7
    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_8
    const-string v0, "android.media.metadata.GENRE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    const-string v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_9
    const-string v0, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_a
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_b
    const-string v0, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_c
    const-string v0, "android.media.metadata.WRITER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xb

    const-string v1, "android.media.metadata.WRITER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_d
    const-string v0, "android.media.metadata.YEAR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    const-string v1, "android.media.metadata.YEAR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_e
    return-void
.end method

.method public static createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getRccStateFromState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    check-cast p0, Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void
.end method

.method public static setState(Ljava/lang/Object;I)V
    .locals 1

    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method
