.class public Lcom/android/quicksearchbox/AppsCorpus;
.super Lcom/android/quicksearchbox/SingleSourceCorpus;
.source "AppsCorpus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Source;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "appsSource"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SingleSourceCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Source;)V

    .line 43
    return-void
.end method

.method private createAppSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 7
    .parameter "query"
    .parameter "appData"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090002

    invoke-static {v4, v5}, Lcom/android/quicksearchbox/AppsCorpus;->getComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 94
    .local v2, name:Landroid/content/ComponentName;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 102
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-static {v2, p1, p2}, Lcom/android/quicksearchbox/AbstractSource;->createSourceSearchIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 98
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 101
    const-string v4, "QSB.AppsCorpus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find app search activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 102
    goto :goto_0
.end method

.method private static getComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 2
    .parameter "context"
    .parameter "res"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, nameStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/AppsCorpus;->createAppSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, appSearchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 82
    .end local v0           #appSearchIntent:Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0       #appSearchIntent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/SingleSourceCorpus;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorpusIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "apps"

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AppsCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
