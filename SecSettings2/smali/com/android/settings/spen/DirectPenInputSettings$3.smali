.class Lcom/android/settings/spen/DirectPenInputSettings$3;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/DirectPenInputSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/spen/DirectPenInputSettings;->access$400(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v4, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
