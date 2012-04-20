.class public Lcom/android/browser/BrowserHistoryPage;
.super Landroid/app/Fragment;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;,
        Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;,
        Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;,
        Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;,
        Lcom/android/browser/BrowserHistoryPage$HistoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

.field protected mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mChildList:Landroid/widget/ListView;

.field mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

.field mContextHeader:Lcom/android/browser/HistoryItem;

.field mDisableNewWindow:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mGroupList:Landroid/widget/ListView;

.field private mHistoryList:Landroid/widget/ExpandableListView;

.field mMostVisitsLimit:Ljava/lang/String;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field protected mRoot:Landroid/view/View;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 260
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$1;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 271
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$2;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 531
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/app/FragmentBreadCrumbs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 113
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method


# virtual methods
.method checkIfEmpty()V
    .locals 5

    .prologue
    const v4, 0x7f0d0055

    const v3, 0x1020004

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    #getter for: Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mMostVisited:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$000(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    #getter for: Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->mHistoryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->access$100(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "menuInfo"

    .prologue
    .line 343
    instance-of v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 344
    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 349
    :goto_0
    return-object v0

    .line 346
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v0, :cond_1

    .line 347
    check-cast p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .end local p1
    iget-object v0, p1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    goto :goto_0

    .line 349
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateSinglePane()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    .line 233
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mHistoryList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->registerForContextMenu(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method protected inflateTwoPane(Landroid/view/ViewStub;)V
    .locals 5
    .parameter "stub"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 240
    const v1, 0x7f04002e

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 242
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    .line 243
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 244
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 245
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 246
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 247
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;

    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 251
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v1, v2}, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    .line 252
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    .line 253
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildWrapper:Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserHistoryPage;->registerForContextMenu(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 257
    .local v0, prefs:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mChildList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    .line 398
    .local v2, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    if-nez v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v6

    .line 401
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v3

    .line 402
    .local v3, targetView:Landroid/view/View;
    instance-of v8, v3, Lcom/android/browser/HistoryItem;

    if-eqz v8, :cond_0

    move-object v1, v3

    .line 405
    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 406
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 409
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 441
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 411
    :sswitch_0
    iget-object v6, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    invoke-interface {v6, v5}, Lcom/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    move v6, v7

    .line 412
    goto :goto_0

    .line 414
    :sswitch_1
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    new-array v9, v7, [Ljava/lang/String;

    aput-object v5, v9, v6

    invoke-interface {v8, v9}, Lcom/android/browser/CombinedBookmarksCallbacks;->openInNewTab([Ljava/lang/String;)V

    move v6, v7

    .line 415
    goto :goto_0

    .line 417
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 418
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v0, v6, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v6, v7

    .line 423
    goto :goto_0

    .line 421
    :cond_2
    invoke-static {v0, v4, v5}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :sswitch_3
    const v6, 0x7f0c0068

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 427
    goto :goto_0

    .line 429
    :sswitch_4
    invoke-direct {p0, v5}, Lcom/android/browser/BrowserHistoryPage;->copy(Ljava/lang/CharSequence;)V

    move v6, v7

    .line 430
    goto :goto_0

    .line 432
    :sswitch_5
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    move v6, v7

    .line 433
    goto :goto_0

    .line 435
    :sswitch_6
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 436
    const v6, 0x7f0c0042

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 437
    goto :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x7f0d0024 -> :sswitch_0
        0x7f0d0025 -> :sswitch_1
        0x7f0d00b6 -> :sswitch_3
        0x7f0d00b7 -> :sswitch_4
        0x7f0d00b8 -> :sswitch_5
        0x7f0d00b9 -> :sswitch_6
        0x7f0d00ff -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->setHasOptionsMenu(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "disable_new_window"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 205
    .local v1, mvlimit:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/browser/CombinedBookmarksCallbacks;

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/browser/CombinedBookmarksCallbacks;

    iput-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mCallback:Lcom/android/browser/CombinedBookmarksCallbacks;

    .line 209
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 355
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v7

    .line 356
    .local v7, targetView:Landroid/view/View;
    instance-of v8, v7, Lcom/android/browser/HistoryItem;

    if-nez v8, :cond_0

    .line 393
    :goto_0
    return-void

    :cond_0
    move-object v0, v7

    .line 359
    check-cast v0, Lcom/android/browser/HistoryItem;

    .line 362
    .local v0, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 363
    .local v3, parent:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 364
    .local v1, inflater:Landroid/view/MenuInflater;
    const v8, 0x7f100006

    invoke-virtual {v1, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    if-nez v8, :cond_4

    .line 368
    new-instance v8, Lcom/android/browser/HistoryItem;

    invoke-direct {v8, v3, v10}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    .line 369
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8, v9}, Lcom/android/browser/HistoryItem;->setEnableScrolling(Z)V

    .line 373
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v0, v8}, Lcom/android/browser/HistoryItem;->copyTo(Lcom/android/browser/HistoryItem;)V

    .line 374
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 377
    iget-boolean v8, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    if-eqz v8, :cond_2

    .line 378
    const v8, 0x7f0d0025

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 382
    const v8, 0x7f0d00ff

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 383
    .local v2, item:Landroid/view/MenuItem;
    const v8, 0x7f0c003d

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 386
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 387
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v6, send:Landroid/content/Intent;
    const-string v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 390
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    const v8, 0x7f0d00b6

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v5, :cond_5

    move v8, v9

    :goto_2
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 370
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v6           #send:Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 371
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8}, Lcom/android/browser/HistoryItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/HistoryItem;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v6       #send:Landroid/content/Intent;
    :cond_5
    move v8, v10

    .line 390
    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 17
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v2, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 120
    .local v15, combinedBuilder:Landroid/net/Uri$Builder;
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 122
    :pswitch_0
    const-string v7, "date DESC"

    .line 123
    .local v7, sort:Ljava/lang/String;
    const-string v5, "visits > 0"

    .line 124
    .local v5, where:Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v1, loader:Landroid/content/CursorLoader;
    move-object/from16 v16, v1

    .line 136
    .end local v1           #loader:Landroid/content/CursorLoader;
    .end local v7           #sort:Ljava/lang/String;
    .local v16, loader:Ljava/lang/Object;
    :goto_0
    return-object v16

    .line 130
    .end local v5           #where:Ljava/lang/String;
    .end local v16           #loader:Ljava/lang/Object;
    :pswitch_1
    const-string v2, "limit"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/BrowserHistoryPage;->mMostVisitsLimit:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 133
    .local v10, uri:Landroid/net/Uri;
    const-string v5, "visits > 0"

    .line 134
    .restart local v5       #where:Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    sget-object v11, Lcom/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "visits DESC"

    move-object v8, v1

    move-object v12, v5

    invoke-direct/range {v8 .. v14}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #loader:Landroid/content/CursorLoader;
    move-object/from16 v16, v1

    .line 136
    .restart local v16       #loader:Ljava/lang/Object;
    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 297
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 214
    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    .line 215
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 216
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 217
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->inflateTwoPane(Landroid/view/ViewStub;)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 225
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 227
    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mRoot:Landroid/view/View;

    return-object v1

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->inflateSinglePane()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 290
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 292
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 169
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->selectGroup(I)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    .line 189
    :goto_0
    return-void

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->changeMostVisitedCursor(Landroid/database/Cursor;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->checkIfEmpty()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00fd

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->promptToClearHistory()V

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method promptToClearHistory()V
    .locals 7
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 303
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;

    invoke-direct {v1, v3}, Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;-><init>(Landroid/content/ContentResolver;)V

    .line 304
    .local v1, clear:Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c00a7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    new-instance v6, Lcom/android/browser/BrowserHistoryPage$3;

    invoke-direct {v6, p0, v1}, Lcom/android/browser/BrowserHistoryPage$3;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearHistoryTask;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 317
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 318
    return-void
.end method

.method selectGroup(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    int-to-long v4, p1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 149
    return-void
.end method
