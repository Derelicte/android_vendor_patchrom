.class Lcom/android/browser/MiuiController$1;
.super Landroid/os/Handler;
.source "MiuiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiController;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiController;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 55
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 57
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    sget-object v2, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v0, v2}, Lcom/android/browser/MiuiController;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 61
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 63
    .local v11, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "src"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 64
    .local v9, src:Ljava/lang/String;
    const-string v4, ""

    if-ne v1, v4, :cond_1

    move-object v1, v9

    .line 65
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 69
    .local v6, focusNodeMap:Ljava/util/HashMap;
    const-string v4, "webview"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 71
    .local v12, view:Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v4}, Lcom/android/browser/MiuiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-ne v4, v12, :cond_0

    .line 74
    iget v4, p1, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 76
    :sswitch_2
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiController;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :sswitch_3
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v0, v9}, Lcom/android/browser/MiuiController;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :sswitch_4
    iget-object v2, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v2, v2, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v7

    .line 83
    .local v7, parent:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v4, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v4, v4, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {v2, v1, v7, v0, v3}, Lcom/android/browser/MiuiController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto :goto_0

    .line 87
    .end local v7           #parent:Lcom/android/browser/Tab;
    :sswitch_5
    iget-object v2, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v2, v2, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 88
    .local v8, parent2:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v2, v1, v8, v0, v3}, Lcom/android/browser/MiuiController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 91
    .end local v8           #parent2:Lcom/android/browser/Tab;
    :sswitch_6
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiController;->copy(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :sswitch_7
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/MiuiDownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 104
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #focusNodeMap:Ljava/util/HashMap;
    .end local v9           #src:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #view:Landroid/webkit/WebView;
    :sswitch_8
    iget-object v2, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/browser/MiuiController;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v0}, Lcom/android/browser/MiuiController;->stopLoading()V

    goto/16 :goto_0

    .line 112
    :sswitch_a
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 122
    :sswitch_b
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/browser/Tab;

    .line 123
    .local v10, tab:Lcom/android/browser/Tab;
    if-eqz v10, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/browser/MiuiController$1;->this$0:Lcom/android/browser/MiuiController;

    invoke-virtual {v0, v10}, Lcom/android/browser/MiuiController;->updateScreenshot(Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0xc9 -> :sswitch_0
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_9
    .end sparse-switch

    .line 74
    :sswitch_data_1
    .sparse-switch
        0x7f0d0024 -> :sswitch_2
        0x7f0d00f2 -> :sswitch_4
        0x7f0d00f3 -> :sswitch_5
        0x7f0d00f4 -> :sswitch_7
        0x7f0d00f5 -> :sswitch_6
        0x7f0d00f7 -> :sswitch_7
        0x7f0d00f9 -> :sswitch_3
    .end sparse-switch
.end method
