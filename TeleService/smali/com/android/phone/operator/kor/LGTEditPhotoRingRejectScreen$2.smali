.class Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$2;
.super Ljava/lang/Object;
.source "LGTEditPhotoRingRejectScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$2;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$2;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->clickSaveBtn(Landroid/view/View;)V

    return-void
.end method
