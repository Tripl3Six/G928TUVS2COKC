.class Lcom/android/phone/GlobalDataRoamingAccess$2;
.super Ljava/lang/Object;
.source "GlobalDataRoamingAccess.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalDataRoamingAccess;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$2;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess$2;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # invokes: Lcom/android/phone/GlobalDataRoamingAccess;->negativeButtonClicked()V
    invoke-static {v0}, Lcom/android/phone/GlobalDataRoamingAccess;->access$100(Lcom/android/phone/GlobalDataRoamingAccess;)V

    return-void
.end method
