.class public final enum Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
.super Ljava/lang/Enum;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageEditMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

.field public static final enum EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

.field public static final enum SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

.field public static final enum THEME_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    const-string v1, "EDIT_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    const-string v1, "THEME_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->THEME_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    const-string v1, "SCREENGRID_MODE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->THEME_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-object v0
.end method
