.class Lcom/sec/android/app/launcher/views/EditTextView$13;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/EditTextView;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/EditTextView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iput p2, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$maxSize:I

    iput-object p3, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$maxSize:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    if-gtz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$maxSize:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->showToast(Landroid/content/Context;I)V

    const-string v2, ""

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sub-int v3, p3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$maxSize:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->showToast(Landroid/content/Context;I)V

    const-string v2, ""

    goto :goto_0

    :cond_3
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$13;->val$maxSize:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->showToast(Landroid/content/Context;I)V

    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    goto :goto_0
.end method
