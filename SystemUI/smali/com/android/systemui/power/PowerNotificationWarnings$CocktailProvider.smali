.class public Lcom/android/systemui/power/PowerNotificationWarnings$CocktailProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    return-void
.end method
