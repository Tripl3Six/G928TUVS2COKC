.class public abstract Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.super Lcom/ime/framework/input/AbstractInputModule;
.source "AbstractXt9InputModule.java"


# static fields
.field public static mNumCandidate:Ljava/lang/StringBuilder;


# instance fields
.field protected mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

.field protected mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

.field protected mBackupCandidate:Ljava/lang/StringBuilder;

.field protected final mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeleteCount:I

.field protected mDirtyComposing:Z

.field protected mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field protected mIgnorePredictionWord:Z

.field protected mInputLanguage:I

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mIsBeforeTraceInput:Z

.field protected mIsDisableAddwordbyCSC:Z

.field protected mIsDisableAddwordbyCheckLDB:Z

.field protected mIsKorMode:Z

.field protected mIsMultiTapSymbol:Z

.field protected mIsPredictionOn:Z

.field protected mIsRecapturingProcessed:Z

.field protected mIsTraceOn:Z

.field protected mLastKeyCode:I

.field protected mMultitap:Lcom/ime/framework/input/InputModule$Timer;

.field protected mPickSuggestionIndex:I

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

.field protected mStateCandidate:I

.field private mTimeoutComposingLength:I

.field protected mTimmerHandler:Landroid/os/Handler;

.field protected mToast:Landroid/widget/Toast;

.field protected mTrace:Lcom/ime/framework/trace/KeyboardTrace;

.field protected mWordSequenceData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field protected mXt9Version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mNumCandidate:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputModule;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    iput v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsMultiTapSymbol:Z

    new-instance v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule$1;-><init>(Lcom/ime/framework/input/xt9/AbstractXt9InputModule;)V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    new-instance v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule$2;-><init>(Lcom/ime/framework/input/xt9/AbstractXt9InputModule;)V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    :cond_0
    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-static {}, Lcom/ime/framework/input/autospace/AutoSpaceController;->newInstance()Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsKorMode:Z

    :cond_1
    return-void
.end method

.method private checkXT9WordWrappingRule(C)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "\'-#_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWordOfContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->checkXT9WordWrappingRule(C)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p3, v5

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->checkXT9WordWrappingRule(C)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    invoke-virtual {p2, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasPrevNextButton()Z
    .locals 2

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAddwordbyCheckLDB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    return-void
.end method

.method private setComposingTextforAutoReplacement()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/SuggestionSpan;

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v1, v0, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected autoPeriod(I)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x20

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_AUTO_PERIOD"

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eq p1, v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v13, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v7}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1, v11, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-interface {v1, v13, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v13, :cond_4

    if-ne v2, v12, :cond_0

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    if-ne v4, v10, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    :cond_4
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    if-ne v4, v10, :cond_7

    if-ne v6, v10, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v7}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x68690000

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x626e0000

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x6e650000

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x61730000

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x70610000

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x6f720000

    if-ne v7, v8, :cond_9

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u0964 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v1, v12, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->predictionWord()Z

    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_8
    if-ne v6, v10, :cond_c

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u3002"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x75720000

    if-ne v7, v8, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u06d4 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, ". "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_d
    if-ne v4, v10, :cond_0

    if-ne v6, v10, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0
.end method

.method public buildSuggestions()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->updateSelectList()I

    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    return-void
.end method

.method public clearAction()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    return-void
.end method

.method protected clearCandidateList()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mWordSequenceData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mWordSequenceData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public closing()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    return-void
.end method

.method public commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mWordSequenceData:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mWordSequenceData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v4, v7}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    const-string v3, ""

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v2

    :cond_3
    iget v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v4, v5}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v0, p1, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_8

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_9
    :goto_0
    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    return-void

    :cond_a
    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    return-void
.end method

.method protected convertComposingIToUpperCase()V
    .locals 6

    const/16 v5, 0x69

    const/16 v4, 0x49

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v1, 0x656e0000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v1, 0x656e4742

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v1, 0x656e5553

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-static {v2, v4}, Lcom/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    iput-boolean v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {v2, v5}, Lcom/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    iput-boolean v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    goto :goto_0
.end method

.method protected doNextWordPrediction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->doNextWordPredictionForXt9(Z)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    return-void
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public finishAndInitByCursorMove()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->endMultitapTimer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_3
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_0
.end method

.method public finishComposing(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->resetTimeoutComposingLength()V

    iput-boolean v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsMultiTapSymbol:Z

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    iput-boolean v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    return-void
.end method

.method public finishComposingWithoutInit()V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method protected getCurrentChineseModeMaxLength()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a685457

    if-ne v1, v2, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a68434e

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v2, 0x7a680000

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v0, 0x1f

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_3

    const/16 v0, 0x18

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getCurrentLanguageID()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    return v0
.end method

.method public getDeleteCount()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    return v0
.end method

.method protected getEditorClass()I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    :cond_0
    return v0
.end method

.method public getLastWordDividerIndex()I
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0xa

    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/16 v9, 0x40

    invoke-interface {v0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2

    sget-boolean v9, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "ERROR : getTextBeforeCursor retuen null !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v5, :cond_3

    const/4 v1, 0x0

    :goto_1
    move v8, v1

    goto :goto_0

    :cond_3
    if-ne v3, v10, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_7

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_5

    if-ltz v3, :cond_5

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-ne v3, v10, :cond_6

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v8, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method public getStateCandidate()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    return v0
.end method

.method public getTimeoutComposingLength()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimeoutComposingLength:I

    return v0
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "ADDWORD_BACKUP_CADIDATE"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " + Add \"%s\" to my word list"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getXt9Version()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    return v0
.end method

.method public increaseDeleteCount()V
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->hasPrevNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesDelayed(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public initComposingBuffer()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-direct {p0, v3}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4, v3}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4, v3}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public initDeleteCount()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    invoke-interface {v1, v2, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_AddWordType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    const-string v1, "Prompt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v2, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    iget v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "AUTO_SPACE"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->init(IZ)V

    return-void
.end method

.method public inputDisplayedRecognitionString()V
    .locals 0

    return-void
.end method

.method protected isAvailablePrediction()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isBeforeTraceInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsBeforeTraceInput:Z

    return v0
.end method

.method public isItCloudOrContactIndex(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedToAddUDB(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-direct {p0, v3}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    goto :goto_0
.end method

.method public isPredictionWord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecapture()Z
    .locals 9

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v6, v7, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\'-#_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\'-#_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    :cond_5
    if-eqz v1, :cond_0

    move v4, v5

    goto/16 :goto_0
.end method

.method public isThaiAcceptable()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v4

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v1, ""

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isThaiAcceptable(Z)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v6

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v0

    const-string v3, ""

    invoke-interface {v1, v8, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method protected isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    return v0
.end method

.method public makeCompoingTextCursoroWrod()V
    .locals 7

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    if-eqz v5, :cond_2

    :cond_0
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v5, v6

    :cond_1
    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    sub-int v4, v0, v5

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    add-int v1, v0, v5

    invoke-interface {v3, v4, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :cond_2
    return-void
.end method

.method protected nomalizerFormNFC()V
    .locals 3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return-void
.end method

.method public onCharacterKeyForHwKeyboard(I[I)V
    .locals 1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContextForHwKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacterForHwKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->processKeyForHwKeyboard(I[I)V

    :goto_0
    iput p1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->processSymbolicKey(I[I)V

    goto :goto_0
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDownUpHandle(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-array v3, v3, [I

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->isSentenceTermPunct(I)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    const/16 v18, 0x0

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    if-eqz v13, :cond_1

    if-eqz v14, :cond_1

    if-eqz v5, :cond_1

    if-ltz p1, :cond_0

    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v4, v5, p1

    invoke-interface {v12, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v26

    const/high16 v27, 0x74680000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v3

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez v18, :cond_24

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    if-nez v3, :cond_11

    new-instance v26, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v26 .. v26}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v0, v11, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v26, v0

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v27, v0

    add-int v8, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    move/from16 v26, v0

    add-int v10, v8, v26

    if-gt v8, v10, :cond_d

    move/from16 v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    invoke-interface {v12, v0, v10}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    if-eqz p2, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_f

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    :goto_3
    const/16 v26, 0x1

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v22

    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/4 v15, 0x1

    :cond_4
    :goto_4
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v26

    if-eqz v26, :cond_6

    if-nez v17, :cond_6

    const/4 v9, 0x1

    :cond_6
    const/16 v26, 0x1

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v21

    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v26

    if-eqz v26, :cond_7

    if-eqz v21, :cond_7

    const-string v26, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    const/16 v26, 0x1

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v26

    if-nez v26, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursorbeforeModified()I

    move-result v7

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_9

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor(I)I

    move-result v7

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v0, v1, v7}, Lcom/ime/framework/engine/InputEngineManager;->deleteChar(II)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->updateSuggestionDelay()V

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_b
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setBeforeTraceInput(Z)V

    goto/16 :goto_0

    :cond_c
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v3, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_f
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_3

    :cond_10
    const-string v26, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    if-nez v3, :cond_12

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_5

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v3, v0, :cond_5

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_5

    :cond_13
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    move/from16 v24, v0

    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v26

    if-lez v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    move/from16 v26, v0

    if-nez v26, :cond_14

    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :goto_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_14
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v3, v0, :cond_1f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v26

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x20

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :goto_9
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    move/from16 v26, v0

    if-lez v26, :cond_20

    if-eqz v12, :cond_20

    const/16 v26, 0x40

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_a
    if-nez v6, :cond_15

    const-string v6, ""

    :cond_15
    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_22

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v20, v26, -0x1

    :goto_b
    if-ltz v20, :cond_16

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v26

    if-nez v26, :cond_21

    const-string v26, "\'-#_"

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    :cond_16
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v20

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v26

    const/high16 v27, 0x74680000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    :goto_d
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v3, v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->replaceSpaceToSymbol()V

    :cond_17
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    if-eqz v9, :cond_18

    if-nez v19, :cond_18

    const-string v26, " "

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v15, :cond_18

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_18
    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v26

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v26

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_9

    :cond_20
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    :cond_21
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_b

    :cond_22
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    goto/16 :goto_c

    :cond_23
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    goto/16 :goto_6
.end method

.method public predictionWord()Z
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v8

    iput-boolean v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v6}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v6}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v8

    if-nez v8, :cond_2

    if-ne v1, v7, :cond_4

    :cond_2
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v6}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v9, 0x19

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    iput v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    iput v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    iput v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move v6, v7

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "\'-#_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v11, :cond_9

    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "\'-#_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v11, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->processPredictionWordXT9()Z

    move-result v8

    if-eqz v8, :cond_b

    move v6, v7

    goto/16 :goto_0

    :cond_b
    iput v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 10

    const/16 v8, 0x27

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v8, 0x64

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    iput v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    iput v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    iput v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move v7, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0

    :cond_5
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->processPredictionWordXT9()Z

    move-result v5

    if-eqz v5, :cond_a

    move v7, v6

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_9

    :cond_8
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_6

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public previewTrace(IZ)V
    .locals 13

    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    :cond_0
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    iget v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    :cond_1
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v8, :cond_b

    new-array v1, v11, [Z

    new-array v0, v11, [Z

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v7

    if-eqz v7, :cond_3

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAutoAcceptBeforeStoredTrace : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v3, :cond_9

    aget-boolean v8, v0, v10

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v6

    const/16 v8, -0xff

    if-eq v6, v8, :cond_5

    int-to-char v8, v6

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_5
    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-boolean v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v10, v8}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    invoke-interface {v2, v5, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v9, -0x5

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto/16 :goto_1

    :cond_9
    aget-boolean v8, v0, v10

    if-eqz v8, :cond_4

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    :cond_a
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_d
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getIsNumInputmodeBy123Key()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getIsNumInputMode()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_e
    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v9, 0x19

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_0
.end method

.method public processCloudDecoding(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudDBInstance()Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->updateSpellViewCloudIcon(Z)V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->reset()V

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->decoding(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processContactDecoding(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->startThread(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected processKeyForHwKeyboard(I[I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKeyForHwKeyboard(I)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    goto :goto_0
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_4

    aget v5, p2, v0

    if-ne p1, v5, :cond_3

    move v4, v0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v5, p2, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move v3, v0

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_5
    if-le v3, v7, :cond_0

    if-nez v4, :cond_6

    iget v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    add-int/lit8 v6, v3, -0x1

    aget v6, p2, v6

    if-ne v5, v6, :cond_8

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v6, 0x5dc

    invoke-virtual {p0, v5, v6}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    iput-boolean v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsMultiTapSymbol:Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_2
.end method

.method protected processPredictionWordXT9()Z
    .locals 9

    const/16 v8, 0x40

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [I

    if-eqz v2, :cond_1

    invoke-interface {v2, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-direct {p0, v1, v0, v3}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->getWordOfContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v6, :cond_2

    iput v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    :goto_1
    return v5

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v8, 0x19

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    aget v5, v3, v5

    iput v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    iput v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move v5, v6

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    goto :goto_1
.end method

.method protected processReCaptureForXT9(I)V
    .locals 13

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    if-eqz v1, :cond_5

    const/16 v9, 0x40

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "\'-#_"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    :cond_1
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v1, :cond_8

    const/16 v9, 0x40

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "\'-#_"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_4

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b

    :cond_4
    const/4 v9, -0x5

    if-ne p1, v9, :cond_b

    const/16 v9, 0x43

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    :goto_6
    return-void

    :cond_5
    const-string v5, ""

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_7
    const-string v7, ""

    goto :goto_2

    :cond_8
    const-string v4, ""

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const-string v6, ""

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->trim()V

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_e

    :cond_c
    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v10, 0x19

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_d
    :goto_7
    const/4 v9, 0x1

    iput v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_6

    :cond_e
    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v11

    int-to-short v11, v11

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    :cond_f
    iget-object v9, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v10, 0x19

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_7
.end method

.method public processRecaptureXT9()V
    .locals 1

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    return-void
.end method

.method protected abstract processSymbolicKey(I[I)V
.end method

.method public processVietnameseTone(IZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v4, 0x76690000

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v3

    invoke-static {v3}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, v5, :cond_1

    const/16 v3, 0x30

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v4, -0x5

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto :goto_0
.end method

.method public removeTerm(I)V
    .locals 0

    return-void
.end method

.method protected replaceSpaceToSymbol()V
    .locals 12

    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v8, :cond_0

    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_4

    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public resetPredictionWord()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    return-void
.end method

.method public resetTimeoutComposingLength()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setTimeoutComposingLength(I)V

    return-void
.end method

.method protected selectWordInList(I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-boolean v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_0
.end method

.method protected sendEnterKeyHandle()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isEnterForWebNavigation()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    :cond_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    return-void
.end method

.method public setBeforeTraceInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsBeforeTraceInput:Z

    return-void
.end method

.method public setComposingText()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v1, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v4

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/ime/framework/common/InputSequenceCheck;->getVietnameseLeadingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/ime/framework/common/InputSequenceCheck;->isVietnameseAcceptable(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->nomalizerFormNFC()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    goto :goto_0
.end method

.method public setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->nomalizerFormNFC()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public setDeleteCount(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initDeleteCount()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->increaseDeleteCount()V

    goto :goto_0
.end method

.method public setPredictionWord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    return-void
.end method

.method public setTimeoutComposingLength(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimeoutComposingLength:I

    return-void
.end method

.method protected showDefaultSymbolCandidate()V
    .locals 2

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    return-void
.end method

.method protected showMaxInputNumberToast()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d03b7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected swapPunctuation(I)V
    .locals 12

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v8, :cond_0

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v1, v11, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingTextforAutoReplacement()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getWordInfoSequence()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setWordCandidateData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_TRACE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->updateEngine()I

    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 0

    return-void
.end method

.method public wordSeparatorPretreatment(I)Z
    .locals 9

    const/16 v8, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, v8, :cond_1

    iget v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-array v0, v5, [I

    aput v4, v0, v4

    int-to-char v6, p1

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->isEnableAutoCorrection(C)Z

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v8, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v7, v0, v4

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v7, v0, v4

    invoke-interface {v6, v1, v7}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lcom/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrectionByTrace(Ljava/lang/CharSequence;Landroid/view/inputmethod/InputConnection;)Z

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v4, v0, v4

    invoke-interface {v6, v4}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_4
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v7, v0, v4

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    aget v6, v0, v4

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v4

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    :cond_6
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v4, v0, v4

    invoke-interface {v6, v4}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_7
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v7, v0, v4

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v7, v0, v4

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getBestCandidate()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosPrevText:I

    iget v6, p0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mPosNextText:I

    invoke-static {v1, v4, v6, v2}, Lcom/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrection(Ljava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)Z

    goto :goto_1
.end method
