.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarFeedsListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COCKTAIL_BAR_FEED_UPDATED:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    return-object v0
.end method

.method public onFeedsUpdated(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
