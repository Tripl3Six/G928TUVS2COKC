.class public Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"


# instance fields
.field private p0:F

.field private p1:F

.field private p2:F

.field private p3:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p0:F

    iput p2, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p1:F

    iput p3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p2:F

    iput p4, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p3:F

    return-void
.end method


# virtual methods
.method public q(F)F
    .locals 6

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p1:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p2:F

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p0:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p0:F

    mul-float/2addr v2, v4

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p1:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p2:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p3:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p1:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p0:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p2:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/visualeffect/fingerscan/catmullrom/CatmullRomSpline;->p3:F

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
