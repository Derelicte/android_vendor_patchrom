.class public Lcom/android/browser/MiuiBrowserHistoryPage;
.super Lcom/android/browser/BrowserHistoryPage;
.source "MiuiBrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;
    }
.end annotation


# instance fields
.field private mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/browser/BrowserHistoryPage;-><init>()V

    .line 51
    new-instance v0, Lcom/android/browser/MiuiBrowserHistoryPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/MiuiBrowserHistoryPage$1;-><init>(Lcom/android/browser/MiuiBrowserHistoryPage;)V

    iput-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 106
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 82
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, targetView:Landroid/view/View;
    instance-of v5, v1, Lcom/android/browser/HistoryItem;

    if-eqz v5, :cond_0

    .line 90
    check-cast v1, Lcom/android/browser/HistoryItem;

    .end local v1           #targetView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, url:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/browser/BrowserHistoryPage;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 93
    :sswitch_0
    iget-object v3, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    invoke-interface {v3, v2}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    move v3, v4

    .line 94
    goto :goto_0

    .line 96
    :sswitch_1
    iget-object v5, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v3

    invoke-interface {v5, v6}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openInNewTab([Ljava/lang/String;)V

    move v3, v4

    .line 97
    goto :goto_0

    .line 99
    :sswitch_2
    iget-object v5, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v3

    invoke-interface {v5, v3, v6}, Lcom/android/browser/MiuiCombinedBookmarksCallbacks;->openInNewTab(Z[Ljava/lang/String;)V

    move v3, v4

    .line 100
    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x7f0d0024 -> :sswitch_0
        0x7f0d0025 -> :sswitch_1
        0x7f0d00b3 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/browser/BrowserHistoryPage;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/browser/BrowserActivity;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mMiuiCallback:Lcom/android/browser/MiuiCombinedBookmarksCallbacks;

    .line 31
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 68
    invoke-virtual {p0, p3}, Lcom/android/browser/MiuiBrowserHistoryPage;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/browser/HistoryItem;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mDisableNewWindow:Z

    if-eqz v0, :cond_1

    .line 73
    const v0, 0x7f0d00b3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/BrowserHistoryPage;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 35
    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mRoot:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;-><init>(Lcom/android/browser/MiuiBrowserHistoryPage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 37
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 38
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiBrowserHistoryPage;->inflateTwoPane(Landroid/view/ViewStub;)V

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 46
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 48
    iget-object v1, p0, Lcom/android/browser/MiuiBrowserHistoryPage;->mRoot:Landroid/view/View;

    return-object v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage;->inflateSinglePane()V

    goto :goto_0
.end method
