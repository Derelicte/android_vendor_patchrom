.class public Lcom/android/browser/MiuiController;
.super Lcom/android/browser/Controller;
.source "MiuiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiController$DownloadAs;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mActionBarController:Lcom/android/browser/ActionBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/browser/MiuiController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "browser"
    .parameter "preloadCrashState"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;Z)V

    .line 47
    new-instance v0, Lcom/android/browser/ActionBarController;

    invoke-direct {v0, p1, p0}, Lcom/android/browser/ActionBarController;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/MiuiController;->mActionBarController:Lcom/android/browser/ActionBarController;

    .line 48
    return-void
.end method


# virtual methods
.method public addToBookmarks()V
    .locals 2

    .prologue
    .line 672
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiController;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 673
    .local v0, bookmarkIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 676
    :cond_0
    return-void
.end method

.method protected createTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/browser/MiuiTabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/MiuiTabControl;-><init>(Lcom/android/browser/Controller;)V

    return-object v0
.end method

.method public getActionBarController()Lcom/android/browser/ActionBarController;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mActionBarController:Lcom/android/browser/ActionBarController;

    return-object v0
.end method

.method public getMiuiHome()Lcom/android/browser/MiuiHome;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 569
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 570
    .local v1, current:Lcom/android/browser/Tab;
    if-nez v1, :cond_0

    .line 578
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 619
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    invoke-virtual {v1}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v3

    .line 587
    .local v3, parent:Lcom/android/browser/Tab;
    if-eqz v3, :cond_2

    .line 588
    invoke-virtual {p0, v3}, Lcom/android/browser/MiuiController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 590
    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/browser/Tab;->closeOnBack()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 593
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/browser/MiuiController;->closeCurrentTab(Z)V

    .line 616
    :cond_4
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 594
    :cond_5
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 595
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v1}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v2

    .line 596
    .local v2, currentPos:I
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 598
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_6

    .line 599
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/browser/MiuiController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 604
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiController;->closeTab(Lcom/android/browser/Tab;)V

    .line 606
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0182

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 601
    :cond_6
    iget-object v4, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/browser/MiuiController;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_1
.end method

.method public hideMiuiHome(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideMiuiHome(Lcom/android/browser/Tab;)V

    .line 648
    return-void
.end method

.method public loadUrlFromMiuiHome(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiController;->hideMiuiHome(Lcom/android/browser/Tab;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/MiuiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 188
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/browser/TitleBar;

    if-eqz v11, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    move-object/from16 v0, p2

    instance-of v11, v0, Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    move-object/from16 v10, p2

    .line 194
    check-cast v10, Landroid/webkit/WebView;

    .line 195
    .local v10, webview:Landroid/webkit/WebView;
    invoke-virtual {v10}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    .line 196
    .local v7, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v7, :cond_0

    .line 200
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v9

    .line 201
    .local v9, type:I
    if-nez v9, :cond_2

    .line 202
    sget-object v11, Lcom/android/browser/MiuiController;->LOGTAG:Ljava/lang/String;

    const-string v12, "We should not show context menu when nothing is touched"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_2
    const/16 v11, 0x9

    if-eq v9, v11, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 215
    .local v4, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f100003

    move-object/from16 v0, p1

    invoke-virtual {v4, v11, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, extra:Ljava/lang/String;
    const v12, 0x7f0d00e7

    const/4 v11, 0x2

    if-ne v9, v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 221
    const v12, 0x7f0d00eb

    const/4 v11, 0x4

    if-ne v9, v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 223
    const v12, 0x7f0d00ee

    const/4 v11, 0x3

    if-ne v9, v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 225
    const v12, 0x7f0d00f6

    const/4 v11, 0x5

    if-eq v9, v11, :cond_3

    const/16 v11, 0x8

    if-ne v9, v11, :cond_b

    :cond_3
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 228
    const v12, 0x7f0d00f1

    const/4 v11, 0x7

    if-eq v9, v11, :cond_4

    const/16 v11, 0x8

    if-ne v9, v11, :cond_c

    :cond_4
    const/4 v11, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 231
    const/4 v11, 0x7

    if-eq v9, v11, :cond_5

    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    const/4 v11, 0x4

    if-eq v9, v11, :cond_5

    const/4 v11, 0x3

    if-ne v9, v11, :cond_d

    :cond_5
    const/4 v3, 0x1

    .line 235
    .local v3, hitText:Z
    :goto_6
    const v11, 0x7f0d00fb

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 236
    if-eqz v3, :cond_6

    .line 237
    const v11, 0x7f0d00fc

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v12, v10}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 241
    :cond_6
    packed-switch v9, :pswitch_data_0

    .line 371
    :pswitch_0
    sget-object v11, Lcom/android/browser/MiuiController;->LOGTAG:Ljava/lang/String;

    const-string v12, "We should not get here."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 219
    .end local v3           #hitText:Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 221
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 223
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 225
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 228
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 231
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 243
    .restart local v3       #hitText:Z
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 244
    const v11, 0x7f0d00e8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 247
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, addIntent:Landroid/content/Intent;
    const-string v11, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v11, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const v11, 0x7f0d00e9

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 252
    const v11, 0x7f0d00ea

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 258
    .end local v1           #addIntent:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 259
    const v11, 0x7f0d00ec

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mailto:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 262
    const v11, 0x7f0d00ed

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 268
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 269
    const v11, 0x7f0d00ef

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "geo:0,0?q="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 273
    const v11, 0x7f0d00f0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 280
    :pswitch_4
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v8

    .line 283
    .local v8, showNewTab:Z
    const v11, 0x7f0d00f2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 285
    .local v6, newTabItem:Landroid/view/MenuItem;
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    const v11, 0x7f0d00f3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 288
    .local v5, newTabBackgroundItem:Landroid/view/MenuItem;
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    if-eqz v8, :cond_e

    .line 290
    const/16 v11, 0x8

    if-ne v11, v9, :cond_10

    .line 291
    new-instance v11, Lcom/android/browser/MiuiController$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/browser/MiuiController$2;-><init>(Lcom/android/browser/MiuiController;Landroid/webkit/WebView;)V

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 306
    new-instance v11, Lcom/android/browser/MiuiController$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/browser/MiuiController$3;-><init>(Lcom/android/browser/MiuiController;Landroid/webkit/WebView;)V

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 344
    :cond_e
    :goto_8
    const/4 v11, 0x7

    if-eq v9, v11, :cond_7

    .line 349
    .end local v5           #newTabBackgroundItem:Landroid/view/MenuItem;
    .end local v6           #newTabItem:Landroid/view/MenuItem;
    .end local v8           #showNewTab:Z
    :pswitch_5
    const/4 v11, 0x5

    if-ne v9, v11, :cond_f

    .line 350
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 352
    :cond_f
    const v11, 0x7f0d00f9

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/MiuiController$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/browser/MiuiController$6;-><init>(Lcom/android/browser/MiuiController;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 360
    const v11, 0x7f0d00f7

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/Controller$Download;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v14

    invoke-direct {v12, v13, v2, v14}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 363
    const v11, 0x7f0d00f8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/MiuiController$DownloadAs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v14

    invoke-direct {v12, v13, v2, v14}, Lcom/android/browser/MiuiController$DownloadAs;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 365
    const v11, 0x7f0d00fa

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/browser/WallpaperHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13, v2}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 322
    .restart local v5       #newTabBackgroundItem:Landroid/view/MenuItem;
    .restart local v6       #newTabItem:Landroid/view/MenuItem;
    .restart local v8       #showNewTab:Z
    :cond_10
    new-instance v11, Lcom/android/browser/MiuiController$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/browser/MiuiController$4;-><init>(Lcom/android/browser/MiuiController;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 333
    new-instance v11, Lcom/android/browser/MiuiController$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/browser/MiuiController$5;-><init>(Lcom/android/browser/MiuiController;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_8

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "tab"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 170
    .local v6, w:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/MiuiDownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->goBackOnePageOrQuit()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 623
    packed-switch p1, :pswitch_data_0

    .line 632
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 625
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 626
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 627
    const-string v1, "content://com.android.browser.home/res/raw/miui_home"

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/MiuiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 628
    const/4 v1, 0x1

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 460
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 513
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/MiuiController;->mMenuIsDown:Z

    if-eqz v2, :cond_1

    .line 468
    iput-boolean v0, p0, Lcom/android/browser/MiuiController;->mMenuIsDown:Z

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 511
    invoke-super {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 476
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    const-string v2, "content://com.android.browser.home/res/raw/miui_home"

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/MiuiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 513
    goto :goto_0

    .line 480
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->addToBookmarks()V

    goto :goto_1

    .line 484
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_1

    .line 488
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_1

    .line 492
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_1

    .line 496
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0180

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0012

    new-instance v3, Lcom/android/browser/MiuiController$7;

    invoke-direct {v3, p0}, Lcom/android/browser/MiuiController$7;-><init>(Lcom/android/browser/MiuiController;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0011

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 474
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00c1 -> :sswitch_0
        0x7f0d00c2 -> :sswitch_1
        0x7f0d00cf -> :sswitch_5
        0x7f0d00d2 -> :sswitch_2
        0x7f0d00d3 -> :sswitch_3
        0x7f0d00d4 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/16 v3, 0x6c

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 136
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isFromDefaultBookmarks()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->didUserStopLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/MiuiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/MiuiController;->mActivityPaused:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiController;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/android/browser/MiuiController;->releaseWakeLock()V

    .line 163
    :cond_3
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 164
    return-void
.end method

.method public openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"
    .parameter "parent"

    .prologue
    .line 559
    invoke-super/range {p0 .. p5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 561
    .local v0, tab:Lcom/android/browser/Tab;
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0181

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 564
    :cond_0
    return-object v0
.end method

.method public showMiuiHome(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showMiuiHome(Lcom/android/browser/Tab;)V

    .line 643
    return-void
.end method

.method public showReader(Lcom/android/browser/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "show"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->showReader(Lcom/android/browser/Tab;Z)V

    .line 653
    return-void
.end method

.method protected startHandler()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/browser/MiuiController$1;

    invoke-direct {v0, p0}, Lcom/android/browser/MiuiController$1;-><init>(Lcom/android/browser/MiuiController;)V

    iput-object v0, p0, Lcom/android/browser/MiuiController;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 27
    .parameter "tab"
    .parameter "menu"

    .prologue
    .line 380
    const/4 v4, 0x0

    .line 381
    .local v4, canGoBack:Z
    const/4 v5, 0x0

    .line 382
    .local v5, canGoForward:Z
    const/4 v13, 0x0

    .line 383
    .local v13, isHome:Z
    const/4 v12, 0x0

    .line 384
    .local v12, isDesktopUa:Z
    const/4 v14, 0x0

    .line 385
    .local v14, isLive:Z
    const/16 v16, 0x0

    .line 386
    .local v16, isShowingMiuiHome:Z
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v4

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v12

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v25

    if-nez v25, :cond_4

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v25, p1

    .line 392
    check-cast v25, Lcom/android/browser/MiuiTab;

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v16

    .line 394
    :cond_0
    const v25, 0x7f0d00e2

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 395
    .local v3, back:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 397
    const v25, 0x7f0d00d7

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 398
    .local v11, home:Landroid/view/MenuItem;
    if-nez v13, :cond_5

    const/16 v25, 0x1

    :goto_1
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 400
    const v25, 0x7f0d00be

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 401
    .local v10, forward:Landroid/view/MenuItem;
    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiController;->isInLoad()Z

    move-result v25

    if-eqz v25, :cond_6

    const v25, 0x7f0d00e5

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 405
    .local v23, source:Landroid/view/MenuItem;
    const v25, 0x7f0d00bd

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 406
    .local v7, dest:Landroid/view/MenuItem;
    if-eqz v23, :cond_1

    if-eqz v7, :cond_1

    .line 407
    invoke-interface/range {v23 .. v23}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 408
    invoke-interface/range {v23 .. v23}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 410
    :cond_1
    const v26, 0x7f0d00bc

    if-eqz v14, :cond_7

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v25

    if-nez v25, :cond_2

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v25

    if-eqz v25, :cond_7

    :cond_2
    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 416
    .local v18, pm:Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/Intent;

    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v21, send:Landroid/content/Intent;
    const-string v25, "text/plain"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const/high16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 420
    .local v20, ri:Landroid/content/pm/ResolveInfo;
    const v25, 0x7f0d00c4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    if-eqz v20, :cond_8

    if-nez v16, :cond_8

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v15

    .line 423
    .local v15, isNavDump:Z
    const v25, 0x7f0d00d0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 424
    .local v17, nav:Landroid/view/MenuItem;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v22

    .line 428
    .local v22, showDebugSettings:Z
    const v25, 0x7f0d00d1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 429
    .local v6, counter:Landroid/view/MenuItem;
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 431
    const v25, 0x7f0d00d2

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 432
    .local v9, domTree:Landroid/view/MenuItem;
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 434
    const v25, 0x7f0d00d3

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 435
    .local v19, renderTree:Landroid/view/MenuItem;
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 436
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 437
    const v25, 0x7f0d00d4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 438
    .local v8, displayTree:Landroid/view/MenuItem;
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 440
    const v25, 0x7f0d00c6

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 441
    .local v24, uaSwitcher:Landroid/view/MenuItem;
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 442
    const v25, 0x7f0d00c3

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1, v14}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 443
    const v26, 0x7f0d00c8

    if-nez v14, :cond_9

    if-nez v16, :cond_9

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 444
    const v25, 0x7f0d00ca

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 446
    if-eqz v16, :cond_3

    .line 447
    const v25, 0x7f0d00bd

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 448
    const v25, 0x7f0d00c5

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    const v25, 0x7f0d00c4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    :cond_3
    const v25, 0x7f0d00c6

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    const v25, 0x7f0d00c7

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiController;->mUi:Lcom/android/browser/UI;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UI;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 456
    return-void

    .line 391
    .end local v3           #back:Landroid/view/MenuItem;
    .end local v6           #counter:Landroid/view/MenuItem;
    .end local v7           #dest:Landroid/view/MenuItem;
    .end local v8           #displayTree:Landroid/view/MenuItem;
    .end local v9           #domTree:Landroid/view/MenuItem;
    .end local v10           #forward:Landroid/view/MenuItem;
    .end local v11           #home:Landroid/view/MenuItem;
    .end local v15           #isNavDump:Z
    .end local v17           #nav:Landroid/view/MenuItem;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #renderTree:Landroid/view/MenuItem;
    .end local v20           #ri:Landroid/content/pm/ResolveInfo;
    .end local v21           #send:Landroid/content/Intent;
    .end local v22           #showDebugSettings:Z
    .end local v23           #source:Landroid/view/MenuItem;
    .end local v24           #uaSwitcher:Landroid/view/MenuItem;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 398
    .restart local v3       #back:Landroid/view/MenuItem;
    .restart local v11       #home:Landroid/view/MenuItem;
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 403
    .restart local v10       #forward:Landroid/view/MenuItem;
    :cond_6
    const v25, 0x7f0d00e6

    goto/16 :goto_2

    .line 410
    .restart local v7       #dest:Landroid/view/MenuItem;
    .restart local v23       #source:Landroid/view/MenuItem;
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 420
    .restart local v18       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v21       #send:Landroid/content/Intent;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 443
    .restart local v6       #counter:Landroid/view/MenuItem;
    .restart local v8       #displayTree:Landroid/view/MenuItem;
    .restart local v9       #domTree:Landroid/view/MenuItem;
    .restart local v15       #isNavDump:Z
    .restart local v17       #nav:Landroid/view/MenuItem;
    .restart local v19       #renderTree:Landroid/view/MenuItem;
    .restart local v22       #showDebugSettings:Z
    .restart local v24       #uaSwitcher:Landroid/view/MenuItem;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_5
.end method
