.class Lcom/ime/implement/setting/PhraseSettings$2;
.super Ljava/lang/Object;
.source "PhraseSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/PhraseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/PhraseSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/PhraseSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    invoke-virtual {v1, p2}, Lcom/ime/implement/setting/PhraseSettings;->stateSetScrollView(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # invokes: Lcom/ime/implement/setting/PhraseSettings;->setEnableState(Z)V
    invoke-static {v1, p2}, Lcom/ime/implement/setting/PhraseSettings;->access$100(Lcom/ime/implement/setting/PhraseSettings;Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$200(Lcom/ime/implement/setting/PhraseSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_SHORTCUT_PHRASE"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$300(Lcom/ime/implement/setting/PhraseSettings;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$400(Lcom/ime/implement/setting/PhraseSettings;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$400(Lcom/ime/implement/setting/PhraseSettings;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S004"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$300(Lcom/ime/implement/setting/PhraseSettings;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/ime/implement/setting/PhraseSettings;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/PhraseSettings;->access$400(Lcom/ime/implement/setting/PhraseSettings;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S004"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
