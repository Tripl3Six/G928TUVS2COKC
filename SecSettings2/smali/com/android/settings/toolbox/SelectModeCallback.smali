.class public Lcom/android/settings/toolbox/SelectModeCallback;
.super Lcom/android/settings/common/ActionModeCallback;
.source "SelectModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;
    }
.end annotation


# instance fields
.field private listner:Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/toolbox/SelectModeCallback;->listner:Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/SelectModeCallback;->listner:Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;

    invoke-interface {v0}, Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;->save()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a04e2

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setOnDoneListner(Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/toolbox/SelectModeCallback;->listner:Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;

    return-void
.end method

.method public updateSelectionMenu(I)V
    .locals 5

    move v0, p1

    iget-object v2, p0, Lcom/android/settings/toolbox/SelectModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1e13

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/settings/toolbox/ToolboxList;->MAX_TOOLBOX_APPS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/toolbox/SelectModeCallback;->setTitle(Ljava/lang/String;)V

    return-void
.end method
