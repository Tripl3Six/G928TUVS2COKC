.class Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask$1;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;->doInBackground([Landroid/content/Context;)Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;

.field final synthetic val$soundID:I


# direct methods
.method constructor <init>(Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask$1;->this$0:Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask;

    iput p2, p0, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask$1;->val$soundID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/incallui/rcs/RcsShareUI$soundPoolTask$1;->val$soundID:I

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play beep :"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
