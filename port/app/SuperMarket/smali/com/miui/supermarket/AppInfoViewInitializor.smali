.class public Lcom/miui/supermarket/AppInfoViewInitializor;
.super Ljava/lang/Object;
.source "AppInfoViewInitializor.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInfo:Lcom/miui/supermarket/AppInfo;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "view"
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mView:Landroid/view/View;

    .line 16
    iput-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    .line 17
    iput-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mView:Landroid/view/View;

    .line 21
    iput-object p1, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    .line 22
    iput-object p3, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected downloadIcon()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->isAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->downloadLocalIcon()V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->downloadIconFromServer()V

    goto :goto_0
.end method

.method protected downloadIconFromServer()V
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 51
    .local v1, iconImage:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v0, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v2, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v3, v3, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    const v4, 0x1080093

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/supermarket/util/IconUtil;->sendFetchImageMessage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 53
    return-void
.end method

.method protected downloadLocalIcon()V
    .locals 4

    .prologue
    .line 56
    iget-object v3, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v2, v3, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 57
    .local v2, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, imageResult:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/miui/supermarket/util/IconUtil;->isAppIconCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-static {v2}, Lcom/miui/supermarket/util/IconUtil;->getCachedAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    return-void

    .line 62
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v2, v1}, Lcom/miui/supermarket/util/IconUtil;->cacheAppIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getDescView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mView:Landroid/view/View;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    const v1, 0x7f060074

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v4, v4, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    iget v4, v4, Lcom/miui/supermarket/AppInfo$CommentStatistics;->comment:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIconImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mView:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v0, v0, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method protected getNameView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mView:Landroid/view/View;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected initDescription()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getDescView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method protected initName()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->downloadIcon()V

    .line 27
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->initName()V

    .line 28
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->initDescription()V

    .line 29
    return-void
.end method

.method protected isAppInstalled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/supermarket/AppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v2, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
