.class Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;
.super Ljava/lang/Object;
.source "WidgetsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

.field final synthetic val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->access$000(Lcom/sec/android/app/launcher/activities/WidgetsFragment;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onNativeInit()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;->val$listener:Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;->onInitialized()V

    :cond_0
    return-void
.end method
