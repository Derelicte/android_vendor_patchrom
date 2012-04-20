.class public Lcom/android/browser/MiuiBrowserWebViewFactory;
.super Lcom/android/browser/BrowserWebViewFactory;
.source "MiuiBrowserWebViewFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected instantiateWebView(Landroid/util/AttributeSet;IZ)Landroid/webkit/WebView;
    .locals 2
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 14
    new-instance v0, Lcom/android/browser/MiuiBrowserWebView;

    iget-object v1, p0, Lcom/android/browser/MiuiBrowserWebViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/browser/MiuiBrowserWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-object v0
.end method
