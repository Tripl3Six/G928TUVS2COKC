.class Lcom/android/incallui/SecTabletAnswerView$7;
.super Ljava/lang/Object;
.source "SecTabletAnswerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletAnswerView;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletAnswerView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletAnswerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerView$7;->this$0:Lcom/android/incallui/SecTabletAnswerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerView$7;->this$0:Lcom/android/incallui/SecTabletAnswerView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerView;->dismissWaitingCallPopup()V

    return-void
.end method
