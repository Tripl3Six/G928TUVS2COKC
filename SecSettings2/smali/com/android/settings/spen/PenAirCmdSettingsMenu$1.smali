.class Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "PenAirCmdSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/PenAirCmdSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/PenAirCmdSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;->this$0:Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;->this$0:Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    # invokes: Lcom/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V
    invoke-static {v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->access$000(Lcom/android/settings/spen/PenAirCmdSettingsMenu;)V

    return-void
.end method
