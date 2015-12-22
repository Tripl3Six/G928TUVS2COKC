.class public Lcom/android/incallui/SecAnswerGlowPadFragment;
.super Lcom/android/incallui/SecAnswerFragment;
.source "SecAnswerGlowPadFragment.java"

# interfaces
.implements Lcom/android/incallui/GlowPadWrapper$AnswerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private mGlowpad:Lcom/android/incallui/GlowPadWrapper;

.field private final mSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponses:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecAnswerGlowPadFragment;)Lcom/android/incallui/GlowPadWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecAnswerGlowPadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCannedResponsePopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecAnswerGlowPadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecAnswerGlowPadFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private dismissCannedResponsePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponses:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dismissPendingDialogues()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCannedResponsePopup()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCustomMessagePopup()V

    :cond_1
    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/GlowPadWrapper;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const-string v0, "Creating view for answer fragment "

    invoke-static {p0, v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Created from activity"

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0, p0}, Lcom/android/incallui/GlowPadWrapper;->setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method public onDecline()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecAnswerFragment;->onDestroyView()V

    return-void
.end method

.method public onText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show answer UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    goto :goto_1
.end method

.method public showCustomMessageDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d016c

    new-instance v5, Lcom/android/incallui/SecAnswerGlowPadFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/android/incallui/SecAnswerGlowPadFragment$3;-><init>(Lcom/android/incallui/SecAnswerGlowPadFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d016b

    new-instance v5, Lcom/android/incallui/SecAnswerGlowPadFragment$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecAnswerGlowPadFragment$2;-><init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d016a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/incallui/SecAnswerGlowPadFragment$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecAnswerGlowPadFragment$4;-><init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v3, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v3, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public showMessageDialog()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    const v5, 0x1020014

    iget-object v6, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponses:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v2, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mSmsResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/SecAnswerGlowPadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecAnswerGlowPadFragment$1;-><init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showTargets(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    const v3, 0x7f0e0002

    const v2, 0x7f0e0003

    const v0, 0x7f0e0004

    const v1, 0x7f0200a8

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v4}, Lcom/android/incallui/GlowPadWrapper;->getTargetResourceId()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v4, v3}, Lcom/android/incallui/GlowPadWrapper;->setTargetResources(I)V

    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v4, v2}, Lcom/android/incallui/GlowPadWrapper;->setTargetDescriptionsResourceId(I)V

    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v4, v0}, Lcom/android/incallui/GlowPadWrapper;->setDirectionDescriptionsResourceId(I)V

    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v4, v1}, Lcom/android/incallui/GlowPadWrapper;->setHandleDrawable(I)V

    iget-object v4, p0, Lcom/android/incallui/SecAnswerGlowPadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/GlowPadWrapper;->reset(Z)V

    :cond_0
    return-void

    :pswitch_0
    const v3, 0x7f0e0005

    const v2, 0x7f0e0006

    const v0, 0x7f0e0007

    const v1, 0x7f0200a8

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0e0008

    const v2, 0x7f0e0009

    const v0, 0x7f0e000a

    const v1, 0x7f0200a9

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0e000b

    const v2, 0x7f0e000c

    const v0, 0x7f0e000d

    const v1, 0x7f0200a9

    goto :goto_0

    :pswitch_3
    const v3, 0x7f0e000e

    const v2, 0x7f0e000f

    const v0, 0x7f0e0010

    const v1, 0x7f0200a9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
