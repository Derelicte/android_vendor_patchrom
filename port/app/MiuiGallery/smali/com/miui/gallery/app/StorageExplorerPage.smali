.class public Lcom/miui/gallery/app/StorageExplorerPage;
.super Lcom/miui/gallery/app/StorageExplorerPageBase;
.source "StorageExplorerPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;,
        Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mActionbBarMenu:Landroid/view/Menu;

.field private mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

.field private mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

.field private mCheckedFileCount:I

.field private mCheckedFolderCount:I

.field private mDropdownNavigation:Landroid/view/View;

.field private mFilterFlags:I

.field private mIsGetContent:Z

.field private mIsPickContent:Z

.field private mIsSetLockscreen:Z

.field private mIsSetWallpaper:Z

.field private mListView:Landroid/widget/EditableListView;

.field private mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

.field private mNavigationBar:Landroid/view/View;

.field private mNavigationBarText:Landroid/widget/TextView;

.field private mNavigationBarUpDownArrow:Landroid/widget/ImageView;

.field private mNavigationClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Ljava/lang/String;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCrop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;-><init>()V

    .line 114
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    .line 128
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$1;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const-string v0, "/mnt/sdcard"

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mRoot:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;

    .line 584
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$2;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 653
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$3;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationClick:Landroid/view/View$OnClickListener;

    .line 880
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/StorageExplorerPage;Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/app/StorageExplorerPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/StorageExplorerPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->onDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/StorageExplorerPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;III)V
    .locals 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 771
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 772
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;IIII)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconId"

    .prologue
    .line 775
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 777
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p5, :cond_0

    .line 778
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 780
    :cond_0
    return-void
.end method

.method private canMultipleChoice()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsPickContent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBriefText(III)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 855
    if-lez p1, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0109

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    :cond_0
    if-lez p2, :cond_2

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 861
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d010a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    :cond_2
    if-lez p3, :cond_4

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 868
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0108

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 877
    iget v0, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFolderCount:I

    iget v1, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    iget v2, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getContentUri(Landroid/content/Context;Lcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "meta"

    .prologue
    const/4 v10, 0x1

    .line 197
    const-wide/16 v7, -0x1

    .line 198
    .local v7, id:J
    iget-object v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v9

    .line 199
    .local v9, isInternal:Z
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isVideo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    .local v10, type:I
    :goto_0
    const/4 v6, 0x0

    .line 203
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10, v9}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->getUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 215
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_4

    invoke-static {v10, v9, v7, v8}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->getUri(IZJ)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    return-object v0

    .line 199
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #type:I
    :cond_2
    const/4 v10, 0x2

    goto :goto_0

    .line 213
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v10       #type:I
    :catch_0
    move-exception v0

    .line 215
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 218
    :cond_4
    iget-object v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mRoot:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLeafPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, displayPath:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 638
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 639
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 641
    .end local v0           #displayPath:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayPath"

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mRoot:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedMetas()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v5}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 505
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 506
    .local v3, positions:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 507
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 506
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 512
    .local v2, position:I
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 513
    .local v1, item:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    .end local v0           #index:I
    .end local v1           #item:Lcom/miui/gallery/StorageExplorer/FileInfo;
    .end local v2           #position:I
    .end local v3           #positions:Landroid/util/SparseBooleanArray;
    :cond_2
    return-object v4
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, selectedMetas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 691
    :cond_0
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$4;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    .line 699
    .local v0, refresh:Ljava/lang/Runnable;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    const-string v1, "StorageExplorerPage"

    const-string v2, "should select some metas before deleting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    const v3, 0x7f0d00f8

    invoke-static {v1, v0, v2, p1, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "id"

    .prologue
    .line 523
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    :cond_0
    return-void

    .line 523
    .end local v0           #button:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setupListView()V
    .locals 3

    .prologue
    .line 248
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    const v1, 0x7f10000c

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setKeepExitModeIfNoItemChecked(Z)V

    .line 256
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->canMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 261
    :cond_0
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    return-void
.end method

.method private setupNaivgationBar()V
    .locals 2

    .prologue
    .line 233
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBar:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBar:Landroid/view/View;

    const v1, 0x7f0b0034

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->setupClick(Landroid/view/View;I)V

    .line 235
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarText:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    .line 237
    const/4 v0, 0x0

    const v1, 0x7f0b0035

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->setupClick(Landroid/view/View;I)V

    .line 238
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    .line 239
    return-void
.end method

.method private showDropdownNavigation(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020080

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    return-void

    .line 242
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 243
    :cond_1
    const v0, 0x7f02007f

    goto :goto_1
.end method

.method private switchEditMode()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0
.end method

.method private switchFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 480
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->increaseAlbumVisitCount(Ljava/lang/String;)V

    .line 481
    invoke-static {p1}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastVisitedFolderPath(Ljava/lang/String;)V

    .line 483
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iget v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setFilterFlags(I)V

    .line 485
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    .line 491
    return-void
.end method

.method private updateActionBarMenu()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 347
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    const-string v10, "mActionbBarMenu should not be null"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v10, 0x7f0b0090

    invoke-interface {v7, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 351
    .local v4, menuDelete:Landroid/view/MenuItem;
    iget v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    iget v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    add-int/2addr v7, v10

    if-lez v7, :cond_2

    move v7, v8

    :goto_1
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v10, 0x7f0b0081

    invoke-interface {v7, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 356
    .local v5, menuRecentAlbum:Landroid/view/MenuItem;
    iget v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    if-nez v7, :cond_6

    iget v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    if-lez v7, :cond_6

    .line 357
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    const/4 v0, 0x1

    .line 362
    .local v0, allAreRecentAlbums:Z
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v2

    .line 363
    .local v2, fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 364
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 365
    .local v1, dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    if-nez v1, :cond_3

    .line 366
    const-string v7, "should be DirInfo"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #allAreRecentAlbums:Z
    .end local v1           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v2           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v3           #index:I
    .end local v4           #menuDelete:Landroid/view/MenuItem;
    .end local v5           #menuRecentAlbum:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 347
    goto :goto_0

    .restart local v4       #menuDelete:Landroid/view/MenuItem;
    :cond_2
    move v7, v9

    .line 351
    goto :goto_1

    .line 369
    .restart local v0       #allAreRecentAlbums:Z
    .restart local v1       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .restart local v2       #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .restart local v3       #index:I
    .restart local v5       #menuRecentAlbum:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/DirInfo;->isRecentAlbum()Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 375
    .end local v1           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    :cond_4
    if-eqz v0, :cond_5

    .line 376
    const v7, 0x7f0d00ad

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 385
    .end local v0           #allAreRecentAlbums:Z
    .end local v2           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v3           #index:I
    :goto_3
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v10, 0x7f0b008f

    invoke-interface {v7, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 386
    .local v6, menuSharePhoto:Landroid/view/MenuItem;
    iget v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    if-lez v7, :cond_7

    iget v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    if-nez v7, :cond_7

    :goto_4
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    return-void

    .line 378
    .end local v6           #menuSharePhoto:Landroid/view/MenuItem;
    .restart local v0       #allAreRecentAlbums:Z
    .restart local v2       #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .restart local v3       #index:I
    :cond_5
    const v7, 0x7f0d00ac

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 381
    .end local v0           #allAreRecentAlbums:Z
    .end local v2           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v3           #index:I
    :cond_6
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .restart local v6       #menuSharePhoto:Landroid/view/MenuItem;
    :cond_7
    move v8, v9

    .line 386
    goto :goto_4
.end method

.method private updateActionBarText()V
    .locals 5

    .prologue
    .line 222
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 224
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->getLeafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, leafPath:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFolderCount()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getImageCount()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getVideoCount()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 447
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadRecentAlbumCache()V

    .line 449
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->quickHasStorage()Z

    move-result v2

    .line 451
    .local v2, sdCardReady:Z
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    if-eqz v2, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/EditableListView;->setVisibility(I)V

    .line 454
    const v3, 0x7f0b0001

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, navigationBar:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 456
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mRoot:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/StorageExplorerPage;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_3
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, emptyView:Landroid/view/View;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->isModified()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 464
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->loadAllMedias()V

    .line 465
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :goto_5
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 476
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateActionBarText()V

    .line 477
    return-void

    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #navigationBar:Landroid/view/View;
    :cond_0
    move v3, v5

    .line 451
    goto :goto_0

    :cond_1
    move v3, v4

    .line 452
    goto :goto_1

    .restart local v1       #navigationBar:Landroid/view/View;
    :cond_2
    move v3, v5

    .line 456
    goto :goto_2

    .line 459
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .restart local v0       #emptyView:Landroid/view/View;
    :cond_4
    move v5, v4

    .line 465
    goto :goto_4

    .line 467
    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    move v5, v4

    goto :goto_6
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationUpLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Ljava/lang/Integer;Z)V
    .locals 4
    .parameter "lastToggledIndex"
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 390
    if-eqz p1, :cond_2

    .line 391
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 392
    .local v0, delta:I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 393
    .local v1, info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    .line 409
    .end local v0           #delta:I
    .end local v1           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateActionBarMenu()V

    .line 410
    return-void

    .line 391
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 396
    .restart local v0       #delta:I
    .restart local v1       #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_1
    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    goto :goto_1

    .line 399
    .end local v0           #delta:I
    .end local v1           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->isAllChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileCount()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    .line 401
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    goto :goto_1

    .line 403
    :cond_3
    iput v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    .line 404
    iput v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    goto :goto_1
.end method

.method public onClick(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 560
    sparse-switch p1, :sswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 562
    :sswitch_0
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, menuTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00ac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 564
    .local v0, isSetRecentAlbum:Z
    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->setOrHideRecentAlbum(Z)V

    goto :goto_0

    .line 567
    .end local v0           #isSetRecentAlbum:Z
    .end local v1           #menuTitle:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationSend()V

    .line 568
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    goto :goto_0

    .line 573
    :sswitch_2
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v2, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 576
    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onNavigationBarClick()V

    goto :goto_0

    .line 579
    :sswitch_4
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationUpLevel()Z

    goto :goto_0

    .line 560
    :sswitch_data_0
    .sparse-switch
        0x7f0b0034 -> :sswitch_4
        0x7f0b0035 -> :sswitch_3
        0x7f0b0081 -> :sswitch_0
        0x7f0b008f -> :sswitch_1
        0x7f0b0090 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    .line 532
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 173
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mShouldCrop:Z

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iget v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    .line 177
    :cond_1
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastVisitedFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setFilterFlags(I)V

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->setupNaivgationBar()V

    .line 183
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->setupListView()V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v6

    .line 740
    .local v6, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    invoke-virtual {v6, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 741
    const/16 v0, 0x17

    invoke-virtual {v6, v0}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 743
    invoke-virtual {v6, v3}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 744
    invoke-direct {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 747
    const v0, 0x7f0d00f9

    invoke-interface {p1, v3, v3, v8, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v7

    .line 748
    .local v7, sortMenu:Landroid/view/SubMenu;
    const v0, 0x7f02005f

    invoke-interface {v7, v0}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 750
    const v0, 0x7f0d00fa

    invoke-direct {p0, v7, v8, v3, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 751
    const/4 v0, -0x1

    const v1, 0x7f0d00fb

    invoke-direct {p0, v7, v0, v8, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 752
    const v0, 0x7f0d00fc

    invoke-direct {p0, v7, v4, v4, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 753
    const/4 v0, -0x2

    const v1, 0x7f0d00fd

    invoke-direct {p0, v7, v0, v5, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 754
    const/4 v0, 0x4

    const v1, 0x7f0d0100

    invoke-direct {p0, v7, v5, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 755
    const/4 v0, -0x3

    const v1, 0x7f0d0101

    invoke-direct {p0, v7, v0, v2, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 757
    invoke-interface {v7, v3, v8, v8}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 759
    const/4 v3, 0x6

    const v4, 0x7f0d0107

    const v5, 0x7f02005c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 760
    const/4 v2, 0x6

    const/4 v3, 0x7

    const v4, 0x7f0d0112

    const v5, 0x7f02005e

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 761
    return v8
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onDestroy()V

    .line 443
    return-void
.end method

.method public onFileClick(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 804
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsGetContent:Z

    if-eqz v1, :cond_3

    .line 805
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mShouldCrop:Z

    if-eqz v1, :cond_2

    .line 807
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "TODO (MIUI): crop image"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 808
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->createCropImageIntent(Lcom/miui/gallery/StorageExplorer/BaseMeta;Z)Landroid/content/Intent;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 810
    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 850
    :goto_1
    return-void

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 816
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getContentUri(Landroid/content/Context;Lcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 817
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 818
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 820
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-eqz v1, :cond_4

    .line 821
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 822
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 823
    :cond_4
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-eqz v1, :cond_5

    .line 824
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 825
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 826
    :cond_5
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsPickContent:Z

    if-eqz v1, :cond_6

    .line 827
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 828
    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 829
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 830
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    goto :goto_1

    .line 832
    :cond_6
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v0

    if-nez v0, :cond_7

    .line 833
    new-instance v0, Lcom/miui/gallery/app/StateManager$PhotoPageData;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/StateManager$PhotoPageData;-><init>(Lcom/miui/gallery/app/StateManager;)V

    .line 834
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iput-object v1, v0, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 836
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->findIndexInFileInfo(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/app/StateManager$PhotoPageData;->indexHint:I

    .line 837
    iput-object p1, v0, Lcom/miui/gallery/app/StateManager$PhotoPageData;->fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 838
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/app/StateManager;->setPhotoPageData(Lcom/miui/gallery/app/StateManager$PhotoPageData;)V

    .line 840
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 841
    const-string v1, "from-storage-explorer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 844
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->playVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    .line 785
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 787
    if-nez v0, :cond_0

    .line 788
    const-string v0, "StorageExplorerPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist on position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 793
    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->onFileClick(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 710
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 711
    packed-switch v1, :pswitch_data_0

    .line 730
    :pswitch_0
    const/4 v0, 0x0

    .line 733
    :goto_0
    return v0

    .line 713
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    goto :goto_0

    .line 721
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 722
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->onSortChanged(I)V

    goto :goto_0

    .line 726
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onNavigationBarClick()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 593
    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 594
    invoke-direct {p0, v13}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    const v11, 0x7f0b003c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 598
    .local v4, list:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 600
    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v10}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/miui/gallery/app/StorageExplorerPage;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, displayPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 602
    .local v7, pos:I
    const/4 v3, 0x0

    .line 603
    .local v3, left:I
    :goto_1
    if-eq v7, v14, :cond_2

    .line 604
    const-string v10, "/"

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 605
    .local v1, end:I
    if-ne v1, v14, :cond_3

    .line 628
    .end local v1           #end:I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 629
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    goto :goto_0

    .line 608
    .restart local v1       #end:I
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04000e

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 609
    .local v6, listItem:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    const v10, 0x7f0b0028

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 612
    .local v2, img:Landroid/widget/ImageView;
    if-nez v3, :cond_4

    const v10, 0x7f020031

    :goto_2
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    const v10, 0x7f0b0027

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 616
    .local v5, listContent:Landroid/view/View;
    invoke-virtual {v5, v3, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 617
    add-int/lit8 v3, v3, 0x14

    .line 619
    const v10, 0x7f0b0029

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 620
    .local v9, text:Landroid/widget/TextView;
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, substring:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    add-int/lit8 v7, v1, 0x1

    .line 624
    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/miui/gallery/app/StorageExplorerPage;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 612
    .end local v5           #listContent:Landroid/view/View;
    .end local v8           #substring:Ljava/lang/String;
    .end local v9           #text:Landroid/widget/TextView;
    :cond_4
    const v10, 0x7f020030

    goto :goto_2
.end method

.method public onOperationSend()V
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 684
    return-void
.end method

.method public onOperationUpLevel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 666
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->quickHasStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getParentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x1

    .line 671
    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 767
    invoke-super {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 414
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onResume()V

    .line 415
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->setMaxTaskNum(I)V

    .line 416
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->setMaxTaskNum(I)V

    .line 417
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    .line 418
    return-void
.end method

.method public onSortChanged(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumSortBy(Ljava/lang/String;I)V

    .line 677
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setSortOrder(I)V

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 680
    :cond_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 496
    .local v0, target:Landroid/app/Activity;
    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 497
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 498
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 500
    :cond_0
    return-void

    .line 495
    .end local v0           #target:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onWindowFocusChanged(Z)V

    .line 423
    if-eqz p1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    .line 426
    :cond_0
    return-void
.end method

.method public setOrHideRecentAlbum(Z)V
    .locals 5
    .parameter "isSetRecentAlbum"

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    .line 538
    .local v0, fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    iget-object v4, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 541
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v2, filePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 543
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v1, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    .line 549
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 553
    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->setRecentAlbum(Ljava/util/ArrayList;)V

    .line 557
    :goto_1
    return-void

    .line 555
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->removeRecentAlbum(Ljava/util/ArrayList;)V

    goto :goto_1
.end method
