.class Lcom/android/settings/personalvibration/PersonalVibration$2$1;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/personalvibration/PersonalVibration$2;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$2$1;->this$1:Lcom/android/settings/personalvibration/PersonalVibration$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$2$1;->this$1:Lcom/android/settings/personalvibration/PersonalVibration$2;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration$2;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/PersonalVibration;->finish()V

    return-void
.end method
