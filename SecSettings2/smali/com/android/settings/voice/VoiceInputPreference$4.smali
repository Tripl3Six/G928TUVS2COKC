.class Lcom/android/settings/voice/VoiceInputPreference$4;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voice/VoiceInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/VoiceInputPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    # getter for: Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIconContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/voice/VoiceInputPreference;->access$100(Lcom/android/settings/voice/VoiceInputPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    # invokes: Lcom/android/settings/voice/VoiceInputPreference;->launchSettings()V
    invoke-static {v1}, Lcom/android/settings/voice/VoiceInputPreference;->access$000(Lcom/android/settings/voice/VoiceInputPreference;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
