.class Lcom/ime/implement/setting/ConnectSetting$5;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ConnectSetting;->showTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ConnectSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ConnectSetting$5;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "ACDownloadManager"

    const-string v1, "[ACLanguageSettings-showTos] Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
