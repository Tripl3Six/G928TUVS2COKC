.class public Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "HexBinaryDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/util/HexBin;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "hexBinary"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;-><init>([B)V

    return-object v1
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->getLength()I

    move-result v0

    return v0
.end method
