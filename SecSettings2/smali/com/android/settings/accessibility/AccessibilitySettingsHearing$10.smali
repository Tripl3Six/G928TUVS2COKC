.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    const-string v2, "tactileassist"

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TactileAssist;

    # setter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1002(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/TactileAssist;)Landroid/os/TactileAssist;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/TactileAssist;->setEnable(Z)Z

    :cond_0
    return-void
.end method
