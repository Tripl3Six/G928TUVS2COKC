.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;
.super Ljava/lang/Object;
.source "PersonalPageModePatternBackupPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->finish()V

    return-void
.end method
