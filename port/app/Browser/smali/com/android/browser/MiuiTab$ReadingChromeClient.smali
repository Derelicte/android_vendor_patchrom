.class Lcom/android/browser/MiuiTab$ReadingChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MiuiTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingChromeClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebChromeClient;

.field final synthetic this$0:Lcom/android/browser/MiuiTab;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiTab;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter
    .parameter "client"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/browser/MiuiTab$ReadingChromeClient;->this$0:Lcom/android/browser/MiuiTab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/android/browser/MiuiTab$ReadingChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    .line 306
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "window"

    .prologue
    .line 318
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/browser/MiuiTab$ReadingChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 310
    return-void
.end method
