.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
