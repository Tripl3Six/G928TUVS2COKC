.class Lcom/android/settings/NewOneHandOperationSettings$1;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/NewOneHandOperationSettings;->changeColor(I)V

    return-void
.end method
