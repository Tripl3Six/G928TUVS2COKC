.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;ILcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iput p2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const-string v6, "text_layout onClick"

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2800(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$position:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$position:I

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v5, v6, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_1
    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-lez v5, :cond_2

    move v5, v4

    :goto_2
    iput v5, v6, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100029

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-eqz v5, :cond_3

    :goto_3
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3000(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "photoring_unknown_mode"

    iget-object v5, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v3, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1702(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->callMatchCriteriaToEditNum()V
    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
