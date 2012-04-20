.class Lcom/android/browser/Controller$4;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 495
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    sget-object v2, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v0, v2}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 499
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 501
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "src"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 502
    .local v8, src:Ljava/lang/String;
    const-string v0, ""

    if-ne v1, v0, :cond_1

    move-object v1, v8

    .line 503
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 507
    .local v6, focusNodeMap:Ljava/util/HashMap;
    const-string v0, "webview"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/WebView;

    .line 509
    .local v11, view:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, v11, :cond_0

    .line 512
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 514
    :sswitch_2
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :sswitch_3
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v8}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :sswitch_4
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v7

    .line 521
    .local v7, parent:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v2, v1, v7, v0, v3}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 525
    .end local v7           #parent:Lcom/android/browser/Tab;
    :sswitch_5
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :sswitch_6
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 538
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #focusNodeMap:Ljava/util/HashMap;
    .end local v8           #src:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #view:Landroid/webkit/WebView;
    :sswitch_7
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :sswitch_8
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->stopLoading()V

    goto/16 :goto_0

    .line 546
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 551
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 556
    :sswitch_a
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/browser/Tab;

    .line 557
    .local v9, tab:Lcom/android/browser/Tab;
    if-eqz v9, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v9}, Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_0
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch

    .line 512
    :sswitch_data_1
    .sparse-switch
        0x7f0d0024 -> :sswitch_2
        0x7f0d00f2 -> :sswitch_4
        0x7f0d00f4 -> :sswitch_6
        0x7f0d00f5 -> :sswitch_5
        0x7f0d00f7 -> :sswitch_6
        0x7f0d00f9 -> :sswitch_3
    .end sparse-switch
.end method
