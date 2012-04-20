.class Lcom/android/browser/MiuiTab$ReadingClient;
.super Landroid/webkit/WebViewClient;
.source "MiuiTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebViewClient;

.field private final mController:Lcom/android/browser/WebViewController;

.field final synthetic this$0:Lcom/android/browser/MiuiTab;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiTab;Landroid/webkit/WebViewClient;Lcom/android/browser/WebViewController;)V
    .locals 0
    .parameter
    .parameter "client"
    .parameter "controller"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/browser/MiuiTab$ReadingClient;->this$0:Lcom/android/browser/MiuiTab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    .line 243
    iput-object p3, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mController:Lcom/android/browser/WebViewController;

    .line 244
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 255
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 279
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->this$0:Lcom/android/browser/MiuiTab;

    iget-object v0, v0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->setReadingModeOn()V

    .line 251
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 247
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 264
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 294
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
