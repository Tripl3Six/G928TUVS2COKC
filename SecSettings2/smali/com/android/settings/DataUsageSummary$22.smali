.class Lcom/android/settings/DataUsageSummary$22;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
