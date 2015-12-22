.class Lcom/android/server/FMRadioService$6;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EVENT_AUDIOFOCUS_GAIN:I = 0x1

.field public static final EVENT_AUDIOFOCUS_LOSS:I = -0x1

.field public static final EVENT_AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final EVENT_AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final INIT_TIRED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "mAudioFocusHandler:"


# instance fields
.field private TIREDTIME:I

.field private isTired:Z

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAudioFocusHandler:mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called + isTired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============TIREDTIME = ==== ||| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ||||| ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAudioFocusHandler:TIME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/FMRadioService;->responedFocusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V
    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->access$2000(Lcom/android/server/FMRadioService;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService$6;->removeMessages(I)V

    iget v0, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAudioFocusHandler:Fired  TIME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
