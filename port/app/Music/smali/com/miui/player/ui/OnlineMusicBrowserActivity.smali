.class public Lcom/miui/player/ui/OnlineMusicBrowserActivity;
.super Lcom/miui/player/ui/OnlineMusicBaseActivity;
.source "OnlineMusicBrowserActivity.java"


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f030020

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 16
    const-string v0, "category_name"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "list_url"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method protected prepareForLoading(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mCategoryName:Ljava/lang/String;

    .line 44
    const-string v0, "list_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mUrl:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mCategoryName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowserActivity;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
