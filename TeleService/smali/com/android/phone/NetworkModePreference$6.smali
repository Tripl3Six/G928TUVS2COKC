.class Lcom/android/phone/NetworkModePreference$6;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->displayDataPreferredSlotChangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$6;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$6;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->changeDataServiceForMultisim()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$600(Lcom/android/phone/NetworkModePreference;)V

    return-void
.end method
