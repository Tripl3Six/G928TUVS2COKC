.class Lcom/android/settings/AssistantMenuPreferenceFragment$7;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$7;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$7;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    # getter for: Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;
    invoke-static {v1}, Lcom/android/settings/AssistantMenuPreferenceFragment;->access$700(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedItem(IZ)V

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$7;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1
.end method
