.class public Lcom/android/browser/MiuiBrowserWebView;
.super Lcom/android/browser/BrowserWebView;
.source "MiuiBrowserWebView.java"


# instance fields
.field private mIsDestroyed:Z

.field private mOwnerTab:Lcom/android/browser/Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserWebView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/browser/BrowserWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/browser/BrowserWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 21
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/browser/BrowserWebView;->destroy()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/MiuiBrowserWebView;->mIsDestroyed:Z

    .line 35
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/browser/MiuiBrowserWebView;->mIsDestroyed:Z

    return v0
.end method

.method public onReadingModeDataReady(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiBrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserWebView;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiBrowserWebView;->mOwnerTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setOwner(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/browser/MiuiBrowserWebView;->mOwnerTab:Lcom/android/browser/Tab;

    .line 43
    return-void
.end method
