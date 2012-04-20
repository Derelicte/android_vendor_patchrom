.class Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;
.super Lcom/android/browser/Tab$MainWebViewClient;
.source "MiuiTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiMainWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiTab;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiTab;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    invoke-direct {p0, p1}, Lcom/android/browser/Tab$MainWebViewClient;-><init>(Lcom/android/browser/Tab;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    #calls: Lcom/android/browser/MiuiTab;->isReadingModeEnabled()Z
    invoke-static {v0}, Lcom/android/browser/MiuiTab;->access$300(Lcom/android/browser/MiuiTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v0, v0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    new-instance v1, Lcom/android/browser/reading/ReadingModeController;

    iget-object v2, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v2, v2, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v3, v3, Lcom/android/browser/MiuiTab;->mMainView:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3}, Lcom/android/browser/reading/ReadingModeController;-><init>(Lcom/android/browser/WebViewFactory;Landroid/webkit/WebView;)V

    iput-object v1, v0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v0, v0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->queryReadingHTML()V

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/browser/Tab$MainWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/browser/MiuiTab;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted() url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    const-string v0, "content://com.android.browser.home/res/raw/miui_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/browser/MiuiTab;->setShowingMiuiHome(Z)V
    invoke-static {v1, v0}, Lcom/android/browser/MiuiTab;->access$100(Lcom/android/browser/MiuiTab;Z)V

    .line 65
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-boolean v0, v0, Lcom/android/browser/MiuiTab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    #getter for: Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z
    invoke-static {v0}, Lcom/android/browser/MiuiTab;->access$200(Lcom/android/browser/MiuiTab;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v0, v0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->showMiuiHome(Lcom/android/browser/Tab;)V

    .line 73
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/Tab$MainWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v0, v0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;->this$0:Lcom/android/browser/MiuiTab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->hideMiuiHome(Lcom/android/browser/Tab;)V

    goto :goto_1
.end method
