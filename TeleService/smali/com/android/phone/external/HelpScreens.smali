.class public Lcom/android/phone/external/HelpScreens;
.super Landroid/app/Activity;
.source "HelpScreens.java"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/external/HelpScreens;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/external/HelpScreens;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private forwardIntent()V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/external/HelpScreens;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/external/HelpScreens;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/external/HelpScreens;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "UseRing"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_2

    const-string v3, "UseRing"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v3, p0, Lcom/android/phone/external/HelpScreens;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/external/HelpScreens;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/external/HelpScreens;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMetaData()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/external/HelpScreens;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/external/HelpScreens;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/external/HelpScreens;->mPackageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/external/HelpScreens;->mClassName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/external/HelpScreens;->getMetaData()V

    invoke-direct {p0}, Lcom/android/phone/external/HelpScreens;->forwardIntent()V

    invoke-virtual {p0}, Lcom/android/phone/external/HelpScreens;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
