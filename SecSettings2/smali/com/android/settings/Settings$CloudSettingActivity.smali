.class public Lcom/android/settings/Settings$CloudSettingActivity;
.super Lcom/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSettingActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a1166

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a1167

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$CloudSettingActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
