.class Lcom/android/packageinstaller/UninstallerActivity$4;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/UninstallerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity$4;->this$0:Lcom/android/packageinstaller/UninstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity$4;->this$0:Lcom/android/packageinstaller/UninstallerActivity;

    # invokes: Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V
    invoke-static {v0}, Lcom/android/packageinstaller/UninstallerActivity;->access$000(Lcom/android/packageinstaller/UninstallerActivity;)V

    return-void
.end method
