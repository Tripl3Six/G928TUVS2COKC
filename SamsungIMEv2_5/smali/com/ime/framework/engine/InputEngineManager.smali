.class public interface abstract Lcom/ime/framework/engine/InputEngineManager;
.super Ljava/lang/Object;
.source "InputEngineManager.java"


# static fields
.field public static final HANGUL_CHUNJYIN_CHUN:I = 0x119e

.field public static final HANGUL_CHUNJYIN_DCHUN:I = 0x11a2

.field public static final HANGUL_NARAGUL_ADD_STROKE:I = 0x3130

.field public static final HANGUL_NARAGUL_DOUBLE_UP:I = 0x318f

.field public static final HANGUL_SKY2_A:I = 0x314f

.field public static final HANGUL_SKY2_AE:I = 0x3150

.field public static final HANGUL_SKY2_E:I = 0x3154

.field public static final HANGUL_SKY2_EO:I = 0x3153

.field public static final HANGUL_SKY2_I:I = 0x3163

.field public static final HANGUL_SKY2_O:I = 0x3157

.field public static final HANGUL_SKY2_U:I = 0x315c

.field public static final HANGUL_SKY2_YAE:I = 0x3152

.field public static final HANGUL_SKY2_YE:I = 0x3156

.field public static final HANGUL_XT9_CHUNJYIN_CHUN:I = 0x318d

.field public static final HANGUL_XT9_CHUNJYIN_DCHUN:I = 0x2025


# virtual methods
.method public abstract DLMAddWord([CS)S
.end method

.method public abstract HiraganaToromaji(Ljava/lang/String;)[B
.end method

.method public abstract VOHWRCommitAndInit(I)V
.end method

.method public abstract VOHWRSetChangeMode(II)V
.end method

.method public abstract VOHWRSetInsertMode(II)V
.end method

.method public abstract VOHWRaddTextToHWRPanel(Ljava/lang/CharSequence;)Z
.end method

.method public abstract VOHWRappendText(Ljava/lang/CharSequence;)V
.end method

.method public abstract addMyWord(Ljava/lang/CharSequence;)I
.end method

.method public abstract addStringToTouchHistory(Ljava/lang/String;)V
.end method

.method public abstract breakContext()V
.end method

.method public abstract breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract cancelTrace()Z
.end method

.method public abstract checkChineseSequence()V
.end method

.method public abstract checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
.end method

.method public abstract checkJapaneseSequence()Z
.end method

.method public abstract clearContext()I
.end method

.method public abstract clearContextForHwKeyboard()V
.end method

.method public abstract clearInkContext()I
.end method

.method public abstract convetCangjieSpell()Ljava/lang/CharSequence;
.end method

.method public abstract createInputEngineArray(I)Z
.end method

.method public abstract deleteChar(II)V
.end method

.method public abstract deleteLastStringToTouchHistory()V
.end method

.method public abstract deleteWordFromLDB([CS)S
.end method

.method public abstract doNextWordPredictionForXt9(Z)I
.end method

.method public abstract doNoteWordDoneForXt9(I)I
.end method

.method public abstract doNoteWordDoneForXt9WithoutIndex(I)I
.end method

.method public abstract doRecaptureForXt9(Ljava/lang/String;SZ)I
.end method

.method public abstract doResetMultitap()I
.end method

.method public abstract exportChineseUdbToFile(Ljava/lang/String;)V
.end method

.method public abstract exportEnglishDlmToFile(Ljava/lang/String;)V
.end method

.method public abstract exportKoreanDlmToFile(Ljava/lang/String;)V
.end method

.method public abstract findWordFromDLM([CS)Z
.end method

.method public abstract findWordInUDB(Ljava/lang/CharSequence;)I
.end method

.method public abstract freeResources()I
.end method

.method public abstract fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveIndex([I)I
.end method

.method public abstract getAvailableLanguages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBestCandidate()Ljava/lang/CharSequence;
.end method

.method public abstract getChar(C)I
.end method

.method public abstract getCharSequence(Ljava/lang/StringBuilder;)I
.end method

.method public abstract getCharSequence(Ljava/lang/StringBuilder;I)I
.end method

.method public abstract getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I
.end method

.method public abstract getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getContextAwareUniqueID()Ljava/lang/String;
.end method

.method public abstract getCurrentEngineIndex()I
.end method

.method public abstract getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getCurrentWord()Ljava/lang/String;
.end method

.method public abstract getEngAddedWordList(I)Ljava/lang/StringBuilder;
.end method

.method public abstract getExactCharSequence(Ljava/lang/StringBuilder;)I
.end method

.method public abstract getHwrSuggestion(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getInputEngine(I)Lcom/ime/framework/engine/InputEngine;
.end method

.method public abstract getInputLanguageId()S
.end method

.method public abstract getInputSequenceCount()I
.end method

.method public abstract getInputTransResult()Ljava/lang/CharSequence;
.end method

.method public abstract getInstallableLanguages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyPositionByTap(II)I
.end method

.method public abstract getKeyPositions([Landroid/graphics/Rect;)I
.end method

.method public abstract getKorAddedWordList(I)Ljava/lang/StringBuilder;
.end method

.method public abstract getMultiTapSequence(I)Ljava/lang/StringBuilder;
.end method

.method public abstract getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getPhoneticSpellings(S)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getPredictWordForHwr(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSelectedXt9PhraseLength()I
.end method

.method public abstract getSimplifiedFromTraditional(C)C
.end method

.method public abstract getSuggestion(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getSuggestion(Ljava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getSuggestion(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public abstract getSuggestionActiveIndex()I
.end method

.method public abstract getSuggestionCount()I
.end method

.method public abstract getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
.end method

.method public abstract getTraditionalFromSimplified(C)C
.end method

.method public abstract getVerbatim()Ljava/lang/String;
.end method

.method public abstract getWordInfoSequence()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXt9AutoReplacementCondition()Z
.end method

.method public abstract getXt9LanguageId(I)I
.end method

.method public abstract getXt9Version()I
.end method

.method public abstract halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasInputSequence()Z
.end method

.method public abstract hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract importChineseUDBFromFile(Ljava/lang/String;)V
.end method

.method public abstract importEnglishDlmFromFile(Ljava/lang/String;)V
.end method

.method public abstract importKoreanDlmFromFile(Ljava/lang/String;)V
.end method

.method public abstract initHwrPanel(Landroid/widget/FrameLayout;I)V
.end method

.method public abstract inputCharSequence(Ljava/lang/CharSequence;)I
.end method

.method public abstract inputKey(I)I
.end method

.method public abstract inputKey(ILandroid/graphics/PointF;)I
.end method

.method public abstract inputKeyForHwKeyboard(I)I
.end method

.method public abstract inputKeyWithoutBuild(I)I
.end method

.method public abstract inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
.end method

.method public abstract inputString(Ljava/lang/StringBuilder;)I
.end method

.method public abstract inputStrokeData(III)Z
.end method

.method public abstract isAutoAcceptBeforeStoredTrace([Z[Z)S
.end method

.method public abstract isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
.end method

.method public abstract isContainInLanguageDB(Ljava/lang/String;)Z
.end method

.method public abstract isEmojiLMLoaded()Z
.end method

.method public abstract isNumericCharacter(I)Z
.end method

.method public abstract isSentenceTermPunct(I)Z
.end method

.method public abstract isSentenceTermPunct(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isTextCharacter(I)Z
.end method

.method public abstract isTextCharacterForHwKeyboard(I)Z
.end method

.method public abstract isTreatedAsLetter(I)Z
.end method

.method public abstract joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract joinHangul(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract joinNaragul(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract learnSequence(Ljava/lang/String;)V
.end method

.method public abstract learnTempSuggestion(Ljava/lang/String;)V
.end method

.method public abstract moveTrace(FFJ)V
.end method

.method public abstract onHwrPanelLongPressed(ILjava/lang/String;)I
.end method

.method public abstract prepareNormalPredictByXT9(Ljava/lang/CharSequence;)V
.end method

.method public abstract printSwiftkeyVersion(Ljava/io/PrintWriter;)V
.end method

.method public abstract processStoredTrace(B)S
.end method

.method public abstract processTrace([Landroid/graphics/PointF;I[JBZ)S
.end method

.method public abstract processWhenPickSuggestionManually(I)I
.end method

.method public abstract recognize(IZ)I
.end method

.method public abstract reflashSelectList()I
.end method

.method public abstract refreshContextBuffer(Z)I
.end method

.method public abstract refreshContextBuffer(ZZ)I
.end method

.method public abstract release()V
.end method

.method public abstract releaseTrace(FFJ)V
.end method

.method public abstract removeCurrentTermFromTemporaryModel()V
.end method

.method public abstract removeTerm(I)V
.end method

.method public abstract removeTerm(Ljava/lang/String;)V
.end method

.method public abstract replaceKey(ILandroid/graphics/PointF;)I
.end method

.method public abstract resetDLMData()S
.end method

.method public abstract resetTextFieldState()V
.end method

.method public abstract romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setActiveWordStatusChangable(Z)V
.end method

.method public abstract setChineseFuzzyPinyin()V
.end method

.method public abstract setChinesePhoneticIndex(I)V
.end method

.method public abstract setContextAwareUniqueID(Ljava/lang/String;)V
.end method

.method public abstract setCurrentEngineIndex(I)V
.end method

.method public abstract setEmojiPredictionEnabled(Z)V
.end method

.method public abstract setFieldSpecificType(I)V
.end method

.method public abstract setHWInputEngineIndex(I)V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method

.method public abstract setHwrPanelRect(IIII)V
.end method

.method public abstract setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z
.end method

.method public abstract setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z
.end method

.method public abstract setIntentionalEvent(Ljava/lang/String;)V
.end method

.method public abstract setIsPrivateImeOptionsCSC(Z)V
.end method

.method public abstract setKeyboard(Lcom/ime/framework/view/Keyboard;)V
.end method

.method public abstract setKeyboardSize(II)V
.end method

.method public abstract setOnInputStrokeCallback(Lcom/ime/framework/engine/dhwr/AddStroke;)V
.end method

.method public abstract setOptionsByState()I
.end method

.method public abstract setParameterForCapsLockState(Z)V
.end method

.method public abstract setSuggestionActiveIndex(I)V
.end method

.method public abstract setVerbatim(Ljava/lang/String;)V
.end method

.method public abstract setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setXt9AutoReplacementCondition(Z)V
.end method

.method public abstract splitHangul(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract startTrace(FFJ)V
.end method

.method public abstract trimSwiftkeyMemory()V
.end method

.method public abstract updateAcuteAccentState(Z)V
.end method

.method public abstract updateEngine()I
.end method

.method public abstract updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateLdbList()V
.end method

.method public abstract updateLdbListDelete(I)V
.end method

.method public abstract updateSelectList()I
.end method

.method public abstract updateShiftState()V
.end method

.method public abstract wordSelected(ILjava/lang/CharSequence;)I
.end method

.method public abstract writeDBdataToFileOnFinishInput()V
.end method

.method public abstract writeWordToDLM([CIIZZ)S
.end method
