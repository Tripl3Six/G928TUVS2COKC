.class public Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9PhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 11

    const/16 v10, 0x43

    const/16 v9, 0x19

    const/4 v8, -0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v1, ""

    const-string v2, ""

    if-eqz v0, :cond_3

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    if-ne v4, v6, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isBeforeTraceInput()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    if-le v4, v6, :cond_9

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isBeforeTraceInput()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isRecapture()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processReCaptureForXT9(I)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v9}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processContactDecoding(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v9}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v9}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    :cond_c
    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_d

    if-eqz v1, :cond_d

    invoke-static {v1}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_d
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_e

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.chaton"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v0, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isRecapture()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_11
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->getDeleteCount()I

    move-result v4

    if-eq v4, v6, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_13
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_2
.end method

.method private processMultiTap(I[I)V
    .locals 13

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v10

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mLastKeyCode:I

    const/4 v1, 0x0

    aget v1, p2, v1

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_17

    const/4 v0, 0x1

    new-array v7, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    new-array v6, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v12

    if-eqz v12, :cond_9

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mLastKeyCode:I

    if-ne v0, p1, :cond_4

    const/4 v9, 0x1

    :goto_3
    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    if-nez v9, :cond_1

    :cond_6
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a
    if-eqz v10, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_c
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_d
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    invoke-interface {v0, v1, v2, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_f
    if-eqz v10, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_11
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_12
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v11, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearAction()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->resetPredictionWord()V

    :cond_14
    :goto_4
    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v1, 0x76690000

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processVietnameseTone(IZ)V

    :cond_15
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    if-nez v11, :cond_16

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_24

    :cond_16
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_2

    :cond_17
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1d

    if-eqz v10, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_19
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    :cond_1a
    :goto_5
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    if-eqz v8, :cond_1b

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mPosNextText:I

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_23

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    :goto_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processReCaptureForXT9(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    :cond_1b
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingToggleNumberInput()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :cond_1c
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearAction()V

    goto/16 :goto_4

    :cond_1d
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_1e
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    :cond_1f
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isRecapture()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mPosPrevText:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_20
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mPosPrevText:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mPosNextText:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->makeCompoingTextCursoroWrod()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_2

    :cond_21
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_2

    :cond_22
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    :cond_23
    int-to-char v0, p1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_6

    :cond_24
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processContactDecoding(Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 13

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->wordSeparatorPretreatment(I)Z

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x20

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_0
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    const/16 v9, 0x20

    if-ne p1, v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->getLastWordDividerIndex()I

    move-result v3

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v10, v11, v9}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v9, 0x1

    invoke-interface {v2, v0, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    const/4 v8, 0x1

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v0, :cond_8

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v0, v10}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v7

    if-lez v7, :cond_7

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_4
    :goto_0
    const/16 v9, 0xa

    if-ne p1, v9, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->sendEnterKeyHandle()V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_5
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_8
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    goto :goto_0

    :cond_9
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_a
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_1

    :cond_b
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x20

    if-ne p1, v9, :cond_e

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-boolean v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsKorMode:Z

    if-nez v9, :cond_c

    int-to-char v9, p1

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_2
    iget-boolean v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->doNextWordPrediction(Z)V

    :cond_d
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    goto :goto_1

    :cond_e
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    const/16 v9, 0x20

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    iget-boolean v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v6, :cond_10

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_10
    int-to-char v9, p1

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v9

    if-eqz v9, :cond_11

    const/16 v9, 0x20

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_11
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mPosNextText:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setPredictionWord(Z)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v7, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_8

    move v3, v4

    :goto_0
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v3, :cond_c

    :cond_4
    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x20

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    if-eq v4, v7, :cond_7

    :cond_6
    iput v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mStateCandidate:I

    :cond_7
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mLastKeyCode:I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-static {v5}, Lcom/ime/framework/repository/InputStatus;->setFlagPhonepadPopupNumberInput(Z)V

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_8
    move v3, v5

    goto :goto_0

    :cond_9
    if-eq v0, v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processMultiTap(I[I)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    aget p1, p2, v5

    goto :goto_1

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v4

    if-eqz v4, :cond_d

    int-to-char v4, p1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x19

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/common/InputManager;->isChnDomain(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->setComposingText()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    invoke-static {v3}, Lcom/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_6
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
