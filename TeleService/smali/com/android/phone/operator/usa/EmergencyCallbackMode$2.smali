.class Lcom/android/phone/operator/usa/EmergencyCallbackMode$2;
.super Ljava/lang/Object;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/EmergencyCallbackMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/EmergencyCallbackMode;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode$2;->this$0:Lcom/android/phone/operator/usa/EmergencyCallbackMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode$2;->this$0:Lcom/android/phone/operator/usa/EmergencyCallbackMode;

    # invokes: Lcom/android/phone/operator/usa/EmergencyCallbackMode;->exitEmergencyCallbackMode()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->access$100(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V

    return-void
.end method
