.class Lcom/android/browser/Tab$MainWebViewClient$8;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$MainWebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$MainWebViewClient;

.field final synthetic val$handler:Landroid/webkit/ClientCertRequestHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$MainWebViewClient;Landroid/webkit/ClientCertRequestHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/browser/Tab$MainWebViewClient$8;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    iput-object p2, p0, Lcom/android/browser/Tab$MainWebViewClient$8;->val$handler:Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3
    .parameter "alias"

    .prologue
    .line 876
    if-nez p1, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/browser/Tab$MainWebViewClient$8;->val$handler:Landroid/webkit/ClientCertRequestHandler;

    invoke-virtual {v0}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 881
    :goto_0
    return-void

    .line 880
    :cond_0
    new-instance v0, Lcom/android/browser/KeyChainLookup;

    iget-object v1, p0, Lcom/android/browser/Tab$MainWebViewClient$8;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    iget-object v1, v1, Lcom/android/browser/Tab$MainWebViewClient;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/browser/Tab$MainWebViewClient$8;->val$handler:Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/browser/KeyChainLookup;-><init>(Landroid/content/Context;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/KeyChainLookup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
