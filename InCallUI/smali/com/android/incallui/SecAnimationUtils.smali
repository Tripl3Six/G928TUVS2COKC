.class public Lcom/android/incallui/SecAnimationUtils;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecAnimationUtils$Scale;,
        Lcom/android/incallui/SecAnimationUtils$Change;,
        Lcom/android/incallui/SecAnimationUtils$Move;,
        Lcom/android/incallui/SecAnimationUtils$Fade;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/SecAnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SecAnimationUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/SecAnimationUtils;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
