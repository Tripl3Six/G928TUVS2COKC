.class Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;
.super Lcom/ime/framework/input/InputModule$Timer;
.source "SwiftkeyPhonepadKoreanInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;


# direct methods
.method constructor <init>(Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-direct {p0}, Lcom/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-boolean v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->bSymbolMultitapKeyPressed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, -0x1

    iput v2, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-boolean v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-virtual {v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestion()V

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-virtual {v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;->this$0:Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    iget-object v1, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0
.end method
