.class public final enum Lcom/sec/epdg/IWlanEnum$PcscfConf;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PcscfConf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$PcscfConf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V4"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V6"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V4V6"

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$PcscfConf;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->$VALUES:[Lcom/sec/epdg/IWlanEnum$PcscfConf;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .locals 1

    const-class v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .locals 1

    sget-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->$VALUES:[Lcom/sec/epdg/IWlanEnum$PcscfConf;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$PcscfConf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$PcscfConf;

    return-object v0
.end method
