.class Lcom/android/phone/ims/IMSConferenceCallActivity$3;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCallUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I
    invoke-static {v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$400(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;
    invoke-static {v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$500(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isDELETABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v3, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$602(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$702(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$3;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->setScreenState(I)V
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$800(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V

    move v1, v2

    goto :goto_0
.end method
