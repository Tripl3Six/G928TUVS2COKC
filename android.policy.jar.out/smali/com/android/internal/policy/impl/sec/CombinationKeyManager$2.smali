.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method
