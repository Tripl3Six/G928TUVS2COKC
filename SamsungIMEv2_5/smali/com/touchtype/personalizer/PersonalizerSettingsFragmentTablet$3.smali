.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragmentTablet.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$3;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # invokes: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showPrivacyPolicyRestrictionDialog()V
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$500(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
