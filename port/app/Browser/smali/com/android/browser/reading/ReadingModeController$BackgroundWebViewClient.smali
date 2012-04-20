.class Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/reading/ReadingModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mCanceled:Z
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$300(Lcom/android/browser/reading/ReadingModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {}, Lcom/android/browser/reading/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background view loaded the page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mLoadOriginalPage:Z
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$700(Lcom/android/browser/reading/ReadingModeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$800(Lcom/android/browser/reading/ReadingModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/reading/ReadingModeController;->mLoadOriginalPage:Z
    invoke-static {v0, v1}, Lcom/android/browser/reading/ReadingModeController;->access$702(Lcom/android/browser/reading/ReadingModeController;Z)Z

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    iget-object v0, v0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v2}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v3}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v3

    iget-object v3, v3, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v4}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v4

    iget-object v4, v4, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v5}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v5

    iget-object v5, v5, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    invoke-static {v6}, Lcom/android/browser/reading/ReadingModeController;->access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v6

    iget-object v6, v6, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/reading/ReadingModePageDataProvider;->doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
