.class public Lcom/android/settings/location/AGPSFunctionSwitchList;
.super Landroid/app/Activity;
.source "AGPSFunctionSwitchList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mRadioButton1:Landroid/widget/RadioButton;

.field mRadioButton2:Landroid/widget/RadioButton;

.field mRadioButton3:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->finish()V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_on_for_home_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_on_for_all_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    :pswitch_2
    const-string v0, "AGPSFunctionSwitch"

    const-string v1, "agps_off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100038
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : Settings AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f100038

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    const v1, 0x7f100039

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    const v1, 0x7f10003a

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : Settings. AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f100038

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    const v1, 0x7f100039

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    const v1, 0x7f10003a

    invoke-virtual {p0, v1}, Lcom/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
