.class public Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public category_id:I

.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public menu_path:Ljava/lang/String;

.field public menu_type:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public targetCls:Ljava/lang/String;

.field public targetPkg:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    iput p6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    iput-object p7, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    iput p12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    iput-object p13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    iput p14, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->category_id:I

    iput-object p15, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    return-void
.end method
