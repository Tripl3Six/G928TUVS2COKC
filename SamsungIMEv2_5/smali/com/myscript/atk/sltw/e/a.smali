.class public final Lcom/myscript/atk/sltw/e/a;
.super Ljava/lang/Object;
.source "CharBoxGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/e/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:[F

.field private e:F

.field private f:F

.field private g:[F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const v3, 0xf000

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/myscript/atk/sltw/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x42d20000    # 105.0f

    invoke-static {v0, p1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    invoke-static {p1}, Lcom/myscript/atk/sltw/b/a;->a(Landroid/util/DisplayMetrics;)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/e/a;->a([F)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/e/a;->a(I)V

    return-void
.end method

.method public static a(Ljava/text/Bidi;II)B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v0

    int-to-byte v0, v0

    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v0

    int-to-byte v0, v0

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Paint;)F
    .locals 2

    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Lcom/myscript/atk/sltw/e/a$a;F[Landroid/graphics/RectF;Ljava/util/List;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/e/a$a;",
            "F[",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)F"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    :cond_0
    iget-object v1, p1, Lcom/myscript/atk/sltw/e/a$a;->b:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, p3, v0

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/myscript/atk/sltw/e/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-virtual {p0, v1, v3}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/util/List;)[C

    move-result-object v6

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    array-length v3, v6

    invoke-virtual {v1, v6, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    iget-byte v1, p1, Lcom/myscript/atk/sltw/e/a$a;->c:B

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_5

    move v1, v0

    :goto_1
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    sub-float/2addr p2, v5

    :cond_2
    :goto_2
    array-length v3, v6

    if-ne v3, v9, :cond_3

    aget-char v3, v6, v2

    aget-char v4, v6, v0

    aget-char v7, v6, v8

    invoke-static {v3, v4, v7}, Lcom/myscript/atk/sltw/g/a;->a(CCC)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    array-length v3, v6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    aget-char v3, v6, v2

    aget-char v0, v6, v0

    aget-char v4, v6, v8

    aget-char v7, v6, v9

    invoke-static {v3, v0, v4, v7}, Lcom/myscript/atk/sltw/g/a;->a(CCCC)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    array-length v0, v6

    int-to-float v0, v0

    div-float v0, v5, v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    array-length v3, v6

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    :goto_3
    array-length v1, v6

    if-ge v2, v1, :cond_7

    new-instance v1, Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-direct {v1, v3, v4, v0, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-float v3, p2, v0

    iget v4, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget v3, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v3, v2

    aput-object v1, p3, v3

    sub-float/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    add-float/2addr p2, v5

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_0

    :cond_8
    move v3, v2

    move v4, v2

    :goto_4
    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v2

    :goto_5
    if-ge v0, v7, :cond_10

    add-int v8, v4, v0

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/myscript/atk/sltw/e/a;->a(C)Z

    move-result v8

    if-nez v8, :cond_9

    add-int/2addr v0, v4

    aget-char v0, v6, v0

    :goto_6
    if-nez v0, :cond_b

    if-lez v3, :cond_a

    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v3

    iget v8, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p3, v8

    aput-object v8, p3, v0

    :goto_7
    add-int/2addr v4, v7

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v3

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    aput-object v8, p3, v0

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v4, v7, v9}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    const/16 v8, 0xe33

    if-ne v0, v8, :cond_c

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    :goto_8
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_d

    sub-float v9, p2, v0

    iget v10, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    sub-float v0, p2, v0

    :goto_9
    iget v9, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v9, v3

    aput-object v8, p3, v9

    move p2, v0

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_8

    :cond_d
    iget v9, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    invoke-virtual {v8, p2, v9}, Landroid/graphics/RectF;->offset(FF)V

    add-float/2addr v0, p2

    goto :goto_9

    :cond_e
    move v0, v5

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1, p3, p4}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/sltw/e/a$a;[Landroid/graphics/RectF;Ljava/util/List;)F

    move-result v0

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_6
.end method

.method private a(Lcom/myscript/atk/sltw/e/a$a;[Landroid/graphics/RectF;Ljava/util/List;)F
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/e/a$a;",
            "[",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)F"
        }
    .end annotation

    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->b:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, p2, v0

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/util/List;)[C

    move-result-object v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    array-length v2, v5

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_6

    add-int v7, v2, v3

    aget-char v7, v5, v7

    invoke-static {v7}, Lcom/myscript/atk/sltw/e/a;->a(C)Z

    move-result v7

    if-nez v7, :cond_1

    add-int v0, v2, v3

    aget-char v0, v5, v0

    move v3, v0

    :goto_3
    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    :goto_4
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    if-nez v3, :cond_4

    if-lez v1, :cond_3

    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v1

    iget v3, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p2, v3

    aput-object v3, p2, v0

    :goto_5
    add-int/2addr v2, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/myscript/atk/sltw/f/a;

    new-instance v7, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    goto :goto_4

    :cond_3
    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    aput-object v3, p2, v0

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v2, v6, v9}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-direct {v3, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v8

    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v3, v7

    invoke-direct {v8, v7, v9, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p1, Lcom/myscript/atk/sltw/e/a$a;->d:I

    add-int/2addr v0, v1

    aput-object v8, p2, v0

    goto :goto_5

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v3, v0

    goto/16 :goto_3
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x202c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2066

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2067

    if-eq p0, v0, :cond_0

    const/16 v0, 0x200e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()C
    .locals 1

    const v0, 0xf000

    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/myscript/atk/sltw/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    const-string v4, "x"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->e:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->h:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/myscript/atk/sltw/e/a;->a(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/e/a;->c:Z

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/a;->m()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/e/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v1, v0, v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    aget v0, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, " .,\'\"-_^~\u4e00"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    aget v0, v2, v0

    :cond_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput v1, p0, Lcom/myscript/atk/sltw/e/a;->e:F

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->h:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/myscript/atk/sltw/e/a;->a(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    iput-boolean v3, p0, Lcom/myscript/atk/sltw/e/a;->c:Z

    return-void

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    aget v4, v4, v2

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, p2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    aget v1, v0, v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->g:[F

    aget v0, v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;[Landroid/graphics/RectF;[C[F[F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;[",
            "Landroid/graphics/RectF;",
            "[C[F[F)V"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-char v0, p3, v0

    const/4 v1, 0x1

    aget-char v1, p3, v1

    const/4 v2, 0x2

    aget-char v2, p3, v2

    invoke-static {v0, v1, v2}, Lcom/myscript/atk/sltw/g/a;->a(CCC)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    array-length v0, p3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-char v0, p3, v0

    const/4 v1, 0x1

    aget-char v1, p3, v1

    const/4 v2, 0x2

    aget-char v2, p3, v2

    const/4 v3, 0x3

    aget-char v3, p3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/myscript/atk/sltw/g/a;->a(CCCC)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_d

    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkRange;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    aput v2, p4, v1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    aput v0, p5, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    aget-object v0, p2, v1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    aput v0, p4, v1

    aget-object v0, p2, v1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    aput v0, p5, v1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2
    array-length v0, p2

    if-ge v1, v0, :cond_d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    aget-char v0, p3, v4

    if-nez v3, :cond_4

    array-length v5, p3

    sub-int/2addr v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_6

    aget-char v5, p3, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, p3, v6

    add-int/lit8 v8, v4, 0x2

    aget-char v8, p3, v8

    add-int/lit8 v9, v4, 0x3

    aget-char v9, p3, v9

    invoke-static {v5, v6, v8, v9}, Lcom/myscript/atk/sltw/g/a;->b(CCCC)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    :cond_4
    :goto_3
    if-nez v0, :cond_8

    if-lez v4, :cond_7

    add-int/lit8 v0, v4, -0x1

    aget v5, p4, v0

    add-int/lit8 v0, v4, -0x1

    aget v0, p5, v0

    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_c

    add-int v8, v4, v6

    aput v5, p4, v8

    add-int v8, v4, v6

    aput v0, p5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    aget-char v5, p3, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, p3, v6

    add-int/lit8 v8, v4, 0x2

    aget-char v8, p3, v8

    invoke-static {v5, v6, v8}, Lcom/myscript/atk/sltw/g/a;->b(CCC)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    array-length v5, p3

    sub-int/2addr v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    aget-char v5, p3, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, p3, v6

    add-int/lit8 v8, v4, 0x2

    aget-char v8, p3, v8

    invoke-static {v5, v6, v8}, Lcom/myscript/atk/sltw/g/a;->b(CCC)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    if-ne v3, v0, :cond_a

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v4, v7, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v4, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_9

    aget-object v2, p2, v1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    :cond_9
    sub-float v0, v2, v0

    move v5, v0

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_4

    :cond_a
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v4, v7, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v4, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    aget-object v5, p2, v1

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    goto :goto_4

    :cond_b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkRange;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4

    :cond_c
    add-int/2addr v4, v7

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    return-void
.end method

.method public final a([F)V
    .locals 2

    iput-object p1, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/a;->m()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/e/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)[C
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Segment;",
            ">;)[C"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/sltw/g/a;->a()Lcom/myscript/atk/sltw/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/a;->a(Ljava/lang/String;)[C

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    aget-char v0, v4, v1

    const v7, 0xf000

    if-ne v0, v7, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x21b3

    aput-char v0, v4, v1

    :cond_1
    :goto_1
    aget-char v0, v4, v1

    const/16 v7, 0x200c

    if-eq v0, v7, :cond_2

    const/16 v7, 0x200d

    if-eq v0, v7, :cond_2

    const/16 v7, 0x34f

    if-eq v0, v7, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/myscript/atk/sltw/e/a;->a(C)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v0, v3

    :goto_2
    if-nez v0, :cond_8

    move v0, v2

    :goto_3
    if-ge v0, v6, :cond_8

    if-nez v0, :cond_7

    add-int v7, v1, v0

    const v8, 0xfffd

    aput-char v8, v4, v7

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x21b2

    aput-char v0, v4, v1

    goto :goto_1

    :cond_4
    const/16 v7, 0x20

    if-ne v0, v7, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    add-int v7, v1, v0

    aput-char v2, v4, v7

    goto :goto_4

    :cond_8
    add-int v0, v1, v6

    move v1, v0

    goto :goto_0

    :cond_9
    return-object v4
.end method

.method public final a()[F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/styluscore/Segment;BIF[Lcom/myscript/atk/sltw/f/a;)[Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Candidate;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/myscript/atk/sltw/e/a$a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/a$a;-><init>(Lcom/myscript/atk/sltw/e/a;Ljava/util/List;Ljava/lang/String;BI)V

    iget-object v1, v0, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/graphics/RectF;

    if-nez p5, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, p4, v2, v1}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/sltw/e/a$a;F[Landroid/graphics/RectF;Ljava/util/List;)F

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Candidate;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public final a(Lcom/myscript/atk/styluscore/Segment;BILjava/lang/String;F[Lcom/myscript/atk/sltw/f/a;)[Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/myscript/atk/sltw/e/a$a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/a$a;-><init>(Lcom/myscript/atk/sltw/e/a;Ljava/util/List;Ljava/lang/String;BI)V

    iget-object v1, v0, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/graphics/RectF;

    if-nez p6, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, p5, v2, v1}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/sltw/e/a$a;F[Landroid/graphics/RectF;Ljava/util/List;)F

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Ljava/util/List;)[Landroid/graphics/RectF;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    new-instance v3, Ljava/text/Bidi;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/text/Bidi;->isMixed()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v4, :cond_8

    :cond_0
    new-instance v3, Ljava/text/Bidi;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    move-object v13, v3

    :goto_0
    if-nez p5, :cond_1

    invoke-static/range {p1 .. p2}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v9, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [B

    new-array v10, v14, [Lcom/myscript/atk/sltw/e/a$a;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move v11, v3

    move v12, v4

    :goto_2
    if-ge v11, v14, :cond_2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v13, v12, v3}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/text/Bidi;II)B

    move-result v7

    aput-byte v7, v15, v11

    new-instance v3, Lcom/myscript/atk/sltw/e/a$a;

    invoke-static {v4}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/myscript/atk/sltw/e/a$a;-><init>(Lcom/myscript/atk/sltw/e/a;Ljava/util/List;Ljava/lang/String;BI)V

    aput-object v3, v10, v11

    aget-object v3, v10, v11

    iget-object v3, v3, Lcom/myscript/atk/sltw/e/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v12, v3

    aget-object v3, v10, v11

    iget-object v3, v3, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v8, v3

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v12, v4

    goto :goto_2

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v15, v3, v10, v4, v14}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v3, :cond_3

    new-array v3, v14, [Lcom/myscript/atk/sltw/e/a$a;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v14, :cond_4

    add-int/lit8 v5, v14, -0x1

    sub-int/2addr v5, v4

    aget-object v5, v10, v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object v3, v10

    :cond_4
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_4
    array-length v6, v3

    if-ge v4, v6, :cond_5

    aget-object v6, v3, v4

    iget-object v6, v6, Lcom/myscript/atk/sltw/e/a$a;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    new-array v6, v5, [Landroid/graphics/RectF;

    const/4 v4, 0x0

    move v5, v4

    :goto_5
    array-length v4, v3

    if-ge v5, v4, :cond_7

    aget-object v4, v3, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v6, v2}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/sltw/e/a$a;F[Landroid/graphics/RectF;Ljava/util/List;)F

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v7, :cond_6

    sub-float v4, p3, v4

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 p3, v4

    goto :goto_5

    :cond_6
    add-float v4, v4, p3

    goto :goto_6

    :cond_7
    return-object v6

    :cond_8
    move-object v13, v3

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/e/a;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/e/a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/a;->d:[F

    array-length v1, v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    return v0
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/e/a;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->i:F

    goto :goto_0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->f:F

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->h:F

    return v0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/e/a;->e:F

    return v0
.end method

.method public final j()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    return v0
.end method
