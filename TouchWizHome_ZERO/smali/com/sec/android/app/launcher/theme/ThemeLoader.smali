.class public Lcom/sec/android/app/launcher/theme/ThemeLoader;
.super Lcom/sec/android/app/launcher/theme/ThemeLoaderBase;
.source "ThemeLoader.java"


# static fields
.field private static final CSC_FILE_THEME_APP_LIST:Ljava/lang/String; = "/system/csc/theme_app_list.xml"

.field private static final TAG:Ljava/lang/String; = "ThemeLoaderBase"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_ICONID:Ljava/lang/String; = "iconId"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "ThemeApp"

.field private static final TAG_THEME_APP_LIST:Ljava/lang/String; = "ThemeAppList"

.field public static final TYPE_THEME:I = 0x0

.field private static final XML_APP_LIST:Ljava/lang/String; = "theme_app_list"

.field private static final mEachThemePackages:[Ljava/lang/String;

.field private static mPackageIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileReader:Ljava/io/BufferedReader;

.field private mPackageIconLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".appicon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mEachThemePackages:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoaderBase;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z

    return-void
.end method

.method private getCscResource(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v5, "ThemeLoaderBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Theme app list path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    :cond_0
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    goto :goto_1

    :catchall_0
    move-exception v5

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    throw v5
.end method


# virtual methods
.method protected getCurrentResourcePackage()V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v10, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v7

    if-ne v3, v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".common"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v7

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v7

    if-eq v3, v7, :cond_0

    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v7

    if-eq v3, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    new-array v4, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v11

    new-array v0, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    aput-object v7, v0, v11

    const-string v7, "android.app.epm.PluginManager"

    invoke-static {v7, v4, v0, v10}, Lcom/sec/android/app/launcher/utils/Reflection;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "android.app.epm.PluginManager"

    const-string v8, "getCurrentThemePackage"

    invoke-static {v7, v8, v10}, Lcom/sec/android/app/launcher/utils/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v7, 0x0

    invoke-static {v5, v2, v7}, Lcom/sec/android/app/launcher/utils/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_3
    if-eqz v6, :cond_6

    const-string v7, "ThemeLoaderBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ThemeLoader::getCurrentResourcePackage() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mEachThemePackages:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    const/4 v8, 0x2

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mEachThemePackages:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v7, "ThemeLoaderBase"

    const-string v8, "ThemeLoader::getCurrentResourcePackage() : null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v8, v8, v12

    iget-object v9, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto :goto_2
.end method

.method public getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadHomeThemeAppList()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadThemeAppList()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadHomeThemeAppList()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/app/launcher/theme/ThemeLoader;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ThemeLoaderBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIconBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadThemeAppList()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPackageIconBitmapStartsWith(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadHomeThemeAppList()V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    sget-boolean v3, Lcom/sec/android/app/launcher/theme/ThemeLoader;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "ThemeLoaderBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageIconBitmapStartsWith "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadThemeAppList()V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public loadHomeThemeAppList()V
    .locals 15

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/4 v9, 0x0

    const-string v12, "/system/csc/theme_app_list.xml"

    invoke-direct {p0, v12}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getCscResource(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v12, "ThemeAppList"

    invoke-static {v9, v12}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_6

    :cond_1
    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_5

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v12, Lcom/sec/android/app/launcher/theme/ThemeLoader;->DBG:Z

    if-eqz v12, :cond_2

    const-string v12, "ThemeLoaderBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parsing... ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v12, "className"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v2, v1

    :cond_3
    const-string v12, "iconId"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v7, v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string v12, "ThemeApp"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v12, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    if-eqz v12, :cond_8

    :try_start_1
    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_2
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    const-string v12, "ThemeLoaderBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception during parsing theme app list"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    if-eqz v12, :cond_8

    :try_start_3
    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v4

    :try_start_4
    const-string v12, "ThemeLoaderBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception during parsing theme app list"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    if-eqz v12, :cond_8

    :try_start_5
    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v4

    :try_start_6
    const-string v12, "ThemeLoaderBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception during parsing theme app list"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    if-eqz v12, :cond_8

    :try_start_7
    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v12

    iget-object v13, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    if-eqz v13, :cond_9

    :try_start_8
    iget-object v13, p0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->fileReader:Ljava/io/BufferedReader;

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_9
    :goto_3
    throw v12

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public loadThemeAppList()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v14, "theme_app_list"

    const-string v15, "xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mThemePackages:[Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->DEFAULT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v17

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v4, :cond_7

    :cond_3
    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v14, "ThemeApp"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v12

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_6

    invoke-interface {v9, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v14, "className"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v3, v2

    :cond_4
    const-string v14, "iconId"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v7, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    sget-object v14, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/launcher/theme/ThemeLoader;->mPackageIconLoaded:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v14, "ThemeLoaderBase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception during parsing theme app list XmlPullParserException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v14, "ThemeLoaderBase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception during parsing theme app list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
