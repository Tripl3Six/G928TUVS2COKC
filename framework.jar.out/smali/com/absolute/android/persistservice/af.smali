.class final Lcom/absolute/android/persistservice/af;
.super Landroid/os/FileObserver;
.source "SourceFile"


# static fields
.field private static final b:I = 0x2


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ab;

.field private c:Lcom/absolute/android/persistservice/ag;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ab;Lcom/absolute/android/persistservice/ag;)V
    .locals 2

    iput-object p1, p0, Lcom/absolute/android/persistservice/af;->a:Lcom/absolute/android/persistservice/ab;

    iget-object v0, p2, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/af;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/af;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/af;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/absolute/android/persistservice/af;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/af;)Lcom/absolute/android/persistservice/ag;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    return-object v0
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    iget-object v0, v0, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    iget-object v1, v1, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/absolute/android/persistservice/af;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistservice/af;->a:Lcom/absolute/android/persistservice/ab;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
