.class Lcom/android/phone/NetworkModeSpinner$7;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner;->displayDataPreferredSlotChangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$7;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$7;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->changeDataServiceForMultisim()V
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$600(Lcom/android/phone/NetworkModeSpinner;)V

    return-void
.end method
