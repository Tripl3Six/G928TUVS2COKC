.class final Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;
.super Ljava/lang/Object;
.source "ContainerViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/ContainerViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Lcom/sec/daliviews/views/NativeViewBase;

.field public next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    sput v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    iput-object v1, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    return-void
.end method

.method public static obtain(Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;
    .locals 3

    sget-object v2, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;-><init>()V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p0, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    iput p1, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->pointerIdBits:I

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    iget-object v1, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    sput-object v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    sget v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    sget-object v1, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    sput-object p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycleBin:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    sget v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->sRecycledCount:I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->child:Lcom/sec/daliviews/views/NativeViewBase;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;->next:Lcom/sec/daliviews/views/ContainerViewBase$TouchTarget;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
