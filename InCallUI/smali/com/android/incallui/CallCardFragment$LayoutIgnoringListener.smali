.class final Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutIgnoringListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p6}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p1, p8}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p1, p7}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p1, p9}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
