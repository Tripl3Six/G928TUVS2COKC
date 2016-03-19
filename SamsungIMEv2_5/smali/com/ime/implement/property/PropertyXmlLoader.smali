.class public Lcom/ime/implement/property/PropertyXmlLoader;
.super Lcom/ime/framework/util/AbstractPropertyXmlLoader;
.source "PropertyXmlLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/util/AbstractPropertyXmlLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f050078

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f05012f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRepositoryXmlParserChn()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepositoryXmlParserKor()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepositoryXmlParserTablet()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepositoryXmlParserTabletChn()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepositoryXmlParserTabletKor()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/property/PropertyXmlLoader;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
