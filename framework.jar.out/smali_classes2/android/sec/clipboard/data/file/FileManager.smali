.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOXScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I

.field private final mSupportKOX:Z


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/clipboard/scrap"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "scrap.info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    iput p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    iput p4, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/clipboard/scrap"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "scrap.info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;II)V

    iput-object p5, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteDirectoryContent(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 2

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez p1, :cond_1

    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET personal mode DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET KNOX mode DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 7

    const/16 v6, 0xc3

    const/16 v5, 0x63

    const/16 v4, 0x9

    const/4 v1, 0x1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "add data..file system"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_4

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-le v2, v5, :cond_1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ge v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_3
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-le v2, v5, :cond_1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ge v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4

    const/16 v3, 0x9

    const/4 v1, 0x1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->checkScrapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->checkScrapMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastScrapDataIndex()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrapWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)V

    :cond_0
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_1
    :goto_0
    if-nez v3, :cond_5

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    goto :goto_1
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3

    const/16 v2, 0x9

    const/4 v0, 0x1

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    move v4, v2

    :goto_0
    if-ltz v4, :cond_2

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_3
    return v0
.end method

.method public removeClipboardDB()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    :cond_3
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    goto :goto_0
.end method

.method public removeScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)V

    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :goto_0
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_1
.end method

.method public scrapSize()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5

    const/16 v4, 0x9

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    :cond_1
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    :goto_3
    return-object v3

    :cond_2
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
