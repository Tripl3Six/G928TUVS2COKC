.class public Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$AppOrder;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOrder"
.end annotation


# static fields
.field public static final AppOrder_AllColumns:[Ljava/lang/String;

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NEWCUE:Ljava/lang/String; = "newCue"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SYSTEM_APP:Ljava/lang/String; = "isSystemApp"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final USERID:Ljava/lang/String; = "profileId"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "containerId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pos"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isSystemApp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$AppOrder;->AppOrder_AllColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
