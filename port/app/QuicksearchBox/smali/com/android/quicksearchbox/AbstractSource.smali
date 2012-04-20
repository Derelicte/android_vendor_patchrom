.class public abstract Lcom/android/quicksearchbox/AbstractSource;
.super Ljava/lang/Object;
.source "AbstractSource.java"

# interfaces
.implements Lcom/android/quicksearchbox/Source;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconLoader:Lcom/android/quicksearchbox/IconLoader;

.field private final mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoader"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/quicksearchbox/AbstractSource;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/quicksearchbox/AbstractSource;->mUiThread:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lcom/android/quicksearchbox/AbstractSource;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 50
    return-void
.end method

.method public static createSourceSearchIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 85
    if-nez p0, :cond_1

    .line 86
    const-string v1, "QSB.AbstractSource"

    const-string v2, "Tried to create search intent with no target activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    const-string v1, "user_query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/quicksearchbox/AbstractSource;->createSourceSearchIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractSource;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/quicksearchbox/Source;

    if-eqz v1, :cond_0

    .line 115
    check-cast p1, Lcom/android/quicksearchbox/Source;

    .end local p1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getRoot()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    .line 116
    .local v0, s:Lcom/android/quicksearchbox/Source;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    .end local v0           #s:Lcom/android/quicksearchbox/Source;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 1
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getIconLoader()Lcom/android/quicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v0

    return-object v0
.end method

.method protected getIconLoader()Lcom/android/quicksearchbox/IconLoader;
    .locals 6

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSource;->mIconLoader:Lcom/android/quicksearchbox/IconLoader;

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getIconPackage()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, iconPackage:Ljava/lang/String;
    new-instance v1, Lcom/android/quicksearchbox/CachingIconLoader;

    new-instance v2, Lcom/android/quicksearchbox/PackageIconLoader;

    iget-object v3, p0, Lcom/android/quicksearchbox/AbstractSource;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/quicksearchbox/AbstractSource;->mUiThread:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/quicksearchbox/AbstractSource;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/quicksearchbox/PackageIconLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/CachingIconLoader;-><init>(Lcom/android/quicksearchbox/IconLoader;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/AbstractSource;->mIconLoader:Lcom/android/quicksearchbox/IconLoader;

    .line 62
    .end local v0           #iconPackage:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSource;->mIconLoader:Lcom/android/quicksearchbox/IconLoader;

    return-object v1
.end method

.method protected abstract getIconPackage()Ljava/lang/String;
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getIconLoader()Lcom/android/quicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/android/quicksearchbox/Source;
    .locals 0

    .prologue
    .line 109
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getVersionCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
