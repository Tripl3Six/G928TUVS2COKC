.class Lcom/android/phone/operator/usa/RoamingSettings$1;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/RoamingSettings;->domesticCdmaVoiceRoamingSettingTreeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/RoamingSettings$1;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$1;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->access$000(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    return-void
.end method
