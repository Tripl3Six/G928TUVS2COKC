.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    return-void
.end method
