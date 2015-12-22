.class public Lcom/android/settings/wifi/WifiShareProfile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private final DEVICE_PICKER_REQUEST:I

.field private P2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private SelectedP2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field currentApInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/AlertDialog;

.field private mCandidateAPs:Landroid/preference/PreferenceGroup;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mP2pConnectedOnSend:Z

.field private mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSessionKey:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private selectedApCount:I

.field selectedApIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSSID:Ljava/lang/String;

.field private wifiIsEnabled:Z

.field private wifiP2pConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    const-string v0, "0b1e96db05d64ea4"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$1;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x21b1

    iput v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->DEVICE_PICKER_REQUEST:I

    return-void
.end method

.method private EncryptData()I
    .locals 15

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiShareProfile;->StreamCrypt(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfile;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v11, 0x400

    new-array v0, v11, [B

    :goto_0
    if-eqz v7, :cond_4

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v7, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    move-object v6, v7

    :goto_1
    :try_start_3
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, -0x1

    if-eqz v8, :cond_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    return v10

    :cond_4
    if-eqz v8, :cond_5

    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move-object v3, v4

    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    move-object v3, v4

    move-object v6, v7

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v8, :cond_9

    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_c
    :goto_4
    throw v11

    :catch_3
    move-exception v5

    const-string v12, "WifiShareProfile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    goto :goto_4

    :catchall_1
    move-exception v11

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v11

    move-object v3, v4

    move-object v6, v7

    goto :goto_3

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v6, v7

    goto/16 :goto_1
.end method

.method private StreamCrypt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiShareProfile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->convertSelectedApIndexesIntoEncrypedFile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->startWifiP2pDevicePicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiShareProfile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiShareProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiShareProfile;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructCurrentApInfoMap()V
    .locals 20

    new-instance v13, Ljava/io/File;

    const-string v15, "/data/misc/wifi_share_profile/raw_conf.conf"

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/16 v15, 0xcd

    iput v15, v11, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v15, "OPTION"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v15, "PATH"

    const-string v16, "/data/misc/wifi_share_profile/raw_conf.conf"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v11}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_1

    const-string v15, "WifiShareProfile"

    const-string v16, "BACK UP !!!!!!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v7, :cond_16

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v15, "WifiShareProfile"

    const-string v16, "Failed to write networks"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v15, "\n"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tssid="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\tkey_mgmt="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\tauth_alg="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "\teap="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v15, "\tssid="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_9
    const-string v15, "\tpriority="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0xa

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_a
    const-string v15, "\tcaptive_portal="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tauthenticated="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tusable_internet="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "\tskip_internet_check="

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xa

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, "}"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tkey_mgmt=NONE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tauth_alg=OPEN SHARED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\teap="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_10

    :cond_c
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE OPEN or EAP NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_2
    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    move-object v6, v7

    :goto_3
    :try_start_4
    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_e

    const-string v15, "WifiShareProfile"

    const-string v16, "Exception while updating existing AP list"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_e
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_f
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v9

    const-string v15, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tshared=1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE SHARED NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    move-object v6, v7

    :goto_4
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_11
    if-eqz v6, :cond_12

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_12
    :goto_5
    throw v15

    :cond_13
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tvendor_spec_ssid=1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_14

    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE CARRIER DEFAULT NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\tverified_password=0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - (EXCLUDE NOT SHARABLE NETWORK!)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v1, v2, v12}, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v15, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "WifiShareProfile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "constructCurrentApInfoMap - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v9

    const-string v15, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto/16 :goto_1

    :catch_3
    move-exception v9

    const-string v16, "WifiShareProfile"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_1
    move-exception v15

    goto/16 :goto_4

    :catch_4
    move-exception v9

    goto/16 :goto_3

    :cond_16
    move-object v6, v7

    goto/16 :goto_1
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v6, 0xe

    const/16 v5, 0xc

    const/4 v3, 0x0

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    xor-int/lit16 v1, v1, 0x80

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "WifiShareProfile"

    const-string v6, "convertDevAddress - NumberFormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method private convertSelectedApIndexesIntoEncrypedFile()V
    .locals 12

    const/16 v11, 0xa

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v8, :cond_2

    const-string v9, "WifiShareProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertSelectedApIndexesIntoEncrypedFile - AP: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->updatedNetwork()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    :cond_5
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->EncryptData()I

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6
    return-void

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create file failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while closing encryptedFile. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private initPreferences()V
    .locals 10

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiShareProfile"

    const-string v2, "Wifi is turned off. Hide the APs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiShareProfile"

    const-string v2, "No available profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0a04dd

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget v5, v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private showAccessTimeoutAlertDialog(I)V
    .locals 5

    move v0, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a04e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0035

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$5;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0166

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$4;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiShareProfile$3;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$3;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startWifiP2pDevicePicker()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_DIRECT_DEVICE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x21b1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiShareProfile;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWifiP2pDeviceList()V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiShareProfile"

    const-string v6, "updateWifiP2pDeviceList - No devices found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiP2pDeviceList - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " peer(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       deviceName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xcc

    iput v5, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "deviceAddress"

    iget-object v6, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "filePath"

    const-string v6, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "senderName"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SSIDs"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "disconnectOnCompletion"

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE sent."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move-object v1, v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiShareProfile"

    const-string v6, "     HIT!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings.wifi.WifiShareProfileSelected"

    const-string v3, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.WifiShareProfileSelectedSSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a04de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->constructCurrentApInfoMap()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v1, 0x21b1

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    const-string v1, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$2;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "candidate_aps"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v2, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    instance-of v4, p2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-eqz v4, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiShareProfile;->showAccessTimeoutAlertDialog(I)V

    iget v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    sget-boolean v4, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "WifiShareProfile"

    const-string v5, "<selectedApIndexes>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "WifiShareProfile"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v3, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
