.class public final enum Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;
.super Ljava/lang/Enum;
.source "ResultsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/ResultsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CapitalizationHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field public static final enum FORCE_LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field public static final enum INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field public static final enum LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field public static final enum UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    const-string v1, "LOWER_CASE"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    const-string v1, "INITIAL_UPPER_CASE"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    const-string v1, "UPPER_CASE"

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    const-string v1, "FORCE_LOWER_CASE"

    invoke-direct {v0, v1, v5}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->FORCE_LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->FORCE_LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

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

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;
    .locals 1

    const-class v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0}, [Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    return-object v0
.end method
