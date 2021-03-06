.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_ENC_KEY:Ljava/lang/String; = "/redata.bin"

.field private static final AT_HDCP_EXEC_PATH:Ljava/lang/String; = "/system/bin/insthk"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_EXEC_PATH:Ljava/lang/String; = "/system/bin/wvkprov"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_VERIFICATION_CMD:Ljava/lang/String; = "veriwvkey"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v2, 0x2c

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x2c

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .locals 3

    const-string v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/efs/cpk"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/efs"

    goto :goto_0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string v0, "HDCPTEST"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "0,0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "0,3"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "1,0"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "2,"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "3,3,"

    aput-object v17, v15, v16

    if-nez v11, :cond_1

    const-string v16, "HdcptestATCmd"

    const-string/jumbo v17, "processCmd: params is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "NG (INVALID_PARAM)"

    :cond_0
    :goto_0
    return-object v16

    :cond_1
    const-string v16, "/efs"

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "HdcptestATCmd"

    const-string v17, "efs partition is not mounted"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "NG (NO_EFS)"

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "/efs/cpk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v10, "/efs"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "NG_KEY"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_1
    move-exception v17

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :cond_4
    :try_start_3
    const-string v16, "/system/bin/insthk"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,0 is complete!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_3
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/4 v6, 0x0

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    const/4 v8, 0x0

    :cond_6
    :goto_5
    move-object/from16 v16, v12

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_8

    :try_start_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_9
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,3"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "/efs/wv.keys"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, "NG_KEY"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_a

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v6, 0x0

    :cond_a
    :goto_6
    if-eqz v8, :cond_0

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v17

    const/4 v6, 0x0

    goto :goto_6

    :catchall_2
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_3
    move-exception v17

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :cond_b
    :try_start_9
    const-string v16, "/system/bin/wvkprov"

    const-string/jumbo v17, "veriwvkey"

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_7
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,3 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_3

    :catch_4
    move-exception v5

    :goto_8
    :try_start_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (EXCEPTION)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-object v12

    if-eqz v6, :cond_c

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/4 v6, 0x0

    :cond_c
    :goto_9
    if-eqz v8, :cond_6

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_e

    :try_start_d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_f
    const/16 v16, 0x2

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=1,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "S000000000000000"

    const-string/jumbo v16, "ro.serialno"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_12

    move-object v3, v14

    :goto_a
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Serial Number : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v16, "HdcptestATCmd"

    const-string v17, "1,0 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_3

    :catchall_4
    move-exception v16

    :goto_b
    if-eqz v6, :cond_10

    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    const/4 v6, 0x0

    :cond_10
    :goto_c
    if-eqz v8, :cond_11

    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    const/4 v8, 0x0

    :cond_11
    :goto_d
    throw v16

    :cond_12
    :try_start_10
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_13
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_14
    const/16 v16, 0x3

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_16

    const-string v16, "NG (NO_DATA)"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v6, :cond_15

    :try_start_11
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/4 v6, 0x0

    :cond_15
    :goto_e
    if-eqz v8, :cond_0

    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v17

    const/4 v6, 0x0

    goto :goto_e

    :catchall_5
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_6
    move-exception v17

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_6
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :cond_16
    :try_start_13
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bArray size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v4

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/HdcptestATCmd;->getHdcp2XPath()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    const/16 v16, 0x0

    :try_start_15
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_17

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_f
    const-string v16, "HdcptestATCmd"

    const-string v17, "2,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_3

    :cond_17
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    move-result-object v12

    goto :goto_f

    :cond_18
    const/16 v16, 0x4

    :try_start_16
    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=3,3,Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x2

    aget-object v16, v11, v16

    if-eqz v16, :cond_19

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1b

    :cond_19
    const-string v16, "NG (NO_DATA)"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v6, :cond_1a

    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    const/4 v6, 0x0

    :cond_1a
    :goto_10
    if-eqz v8, :cond_0

    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_7
    move-exception v17

    const/4 v6, 0x0

    goto :goto_10

    :catchall_7
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_8
    move-exception v17

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_8
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :cond_1b
    :try_start_19
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Param size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "/system/bin/wvkprov"

    const/16 v17, 0x2

    aget-object v17, v11, v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1c

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_11
    const-string v16, "HdcptestATCmd"

    const-string v17, "3,3,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1c
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_1d

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_11

    :cond_1d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_11

    :cond_1e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (INVALID_PARAM)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-result-object v12

    goto/16 :goto_3

    :catch_9
    move-exception v16

    const/4 v6, 0x0

    goto/16 :goto_4

    :catchall_9
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_a
    move-exception v16

    const/4 v8, 0x0

    goto/16 :goto_5

    :catchall_a
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :catch_b
    move-exception v16

    const/4 v6, 0x0

    goto/16 :goto_9

    :catchall_b
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_c
    move-exception v16

    const/4 v8, 0x0

    goto/16 :goto_5

    :catchall_c
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :catch_d
    move-exception v17

    const/4 v6, 0x0

    goto/16 :goto_c

    :catchall_d
    move-exception v16

    const/4 v6, 0x0

    throw v16

    :catch_e
    move-exception v17

    const/4 v8, 0x0

    goto/16 :goto_d

    :catchall_e
    move-exception v16

    const/4 v8, 0x0

    throw v16

    :catchall_f
    move-exception v16

    move-object v8, v9

    goto/16 :goto_b

    :catchall_10
    move-exception v16

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_b

    :catch_f
    move-exception v5

    move-object v8, v9

    goto/16 :goto_8

    :catch_10
    move-exception v5

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_8
.end method
