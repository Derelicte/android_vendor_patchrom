.class public Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;
.super Lcom/miui/supermarket/AppInfoViewInitializor;
.source "AppInfoCheckBoxViewInitializor.java"


# instance fields
.field mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;)V
    .locals 1
    .parameter "info"
    .parameter "view"
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/AppInfoViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    .line 15
    iput-object p4, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    .line 16
    return-void
.end method

.method private setUpdateIconForName(Landroid/view/View;Lcom/miui/supermarket/AppInfo;Z)V
    .locals 5
    .parameter "view"
    .parameter "info"
    .parameter "needUpdate"

    .prologue
    const/4 v2, 0x0

    .line 42
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 43
    .local v1, updateIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    const v3, 0x7f0a0030

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, nameText:Landroid/widget/TextView;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 45
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void

    .end local v0           #nameText:Landroid/widget/TextView;
    .end local v1           #updateIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v2

    .line 42
    goto :goto_0
.end method


# virtual methods
.method protected downloadIcon()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->downloadIconFromServer()V

    .line 39
    return-void
.end method

.method protected getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v0, v0, Lcom/miui/supermarket/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-super {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->initialize()V

    .line 22
    iget-object v4, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    iget-object v5, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    invoke-virtual {v4, v5}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v0

    .line 23
    .local v0, appInstalled:Z
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    iget-object v5, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    invoke-virtual {v4, v5}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isLocalVersionNewer(Lcom/miui/supermarket/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 24
    .local v1, newerVersionInstalled:Z
    :goto_0
    iget-object v5, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    move v4, v2

    :goto_1
    invoke-direct {p0, v5, v6, v4}, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->setUpdateIconForName(Landroid/view/View;Lcom/miui/supermarket/AppInfo;Z)V

    .line 26
    iget-object v4, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    iget-object v2, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v4, v4, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->setCheckBoxIcon(Landroid/view/View;Ljava/lang/String;Z)V

    .line 28
    return-void

    .end local v1           #newerVersionInstalled:Z
    :cond_0
    move v1, v3

    .line 23
    goto :goto_0

    .restart local v1       #newerVersionInstalled:Z
    :cond_1
    move v4, v3

    .line 24
    goto :goto_1

    :cond_2
    move v2, v3

    .line 26
    goto :goto_2
.end method
