.class public Lcom/android/fileexplorer/FileViewActivity;
.super Landroid/app/Fragment;
.source "FileViewActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;
.implements Lcom/android/fileexplorer/IFileInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;,
        Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackspaceExit:Z

.field private mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

.field private mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileListView:Landroid/widget/ListView;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mPreviousPath:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mScrollPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/android/fileexplorer/FileViewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewActivity$1;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileViewActivity;)Lcom/android/fileexplorer/FileViewInteractionHub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileViewActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private computeScrollPosition(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, pos:I
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 218
    .local v0, firstVisiblePosition:I
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v5, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->path:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iput v0, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->pos:I

    .line 221
    const-string v5, "FileViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeScrollPosition: update item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stack count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move v4, v0

    .line 248
    .end local v0           #firstVisiblePosition:I
    :cond_0
    :goto_0
    const-string v5, "FileViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeScrollPosition: result pos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stack count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    .line 250
    return v4

    .line 225
    .restart local v0       #firstVisiblePosition:I
    :cond_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v0}, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;-><init>(Lcom/android/fileexplorer/FileViewActivity;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v5, "FileViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeScrollPosition: add item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stack count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0           #firstVisiblePosition:I
    :cond_2
    const/4 v2, 0x0

    .line 232
    .local v2, isLast:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 233
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v5, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->path:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 238
    :cond_3
    if-lez v1, :cond_4

    .line 239
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget v4, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->pos:I

    .line 242
    :cond_4
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, j:I
    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_0

    if-ltz v3, :cond_0

    .line 243
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 232
    .end local v3           #j:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showEmptyView(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 308
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_0
    return-void

    .line 308
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 292
    invoke-static {}, Lcom/android/fileexplorer/Util;->isSDCardReady()Z

    move-result v2

    .line 293
    .local v2, sdCardReady:Z
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v6, 0x7f090019

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, noSdView:Landroid/view/View;
    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v6, 0x7f09000e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, navigationBar:Landroid/view/View;
    if-eqz v2, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 300
    if-eqz v2, :cond_0

    .line 301
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 303
    :cond_0
    return-void

    .end local v0           #navigationBar:Landroid/view/View;
    :cond_1
    move v3, v5

    .line 294
    goto :goto_0

    .restart local v0       #navigationBar:Landroid/view/View;
    :cond_2
    move v3, v4

    .line 297
    goto :goto_1

    :cond_3
    move v5, v4

    .line 298
    goto :goto_2
.end method


# virtual methods
.method public addSingleFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->onDataChanged()V

    .line 455
    return-void
.end method

.method public copyFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy(Ljava/util/ArrayList;)V

    .line 397
    return-void
.end method

.method public getAllFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getAllFiles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->getAllFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const v3, 0x7f060044

    .line 357
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, root:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    :goto_0
    return-object v2

    .line 362
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, pos:I
    if-nez v0, :cond_1

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 369
    .end local v0           #pos:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 434
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "displayPath"

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, root:Ljava/lang/String;
    const v2, 0x7f060044

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    .end local v1           #root:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 378
    .restart local v1       #root:Ljava/lang/String;
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, ret:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 382
    goto :goto_0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public moveToFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->moveFileFrom(Ljava/util/ArrayList;)V

    .line 407
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mBackspaceExit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/fileexplorer/Util;->isSDCardReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/FileViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    .line 87
    const v2, 0x7f030005

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    .line 88
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v2

    const-string v3, "FileView"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/ActivitiesManager;->registerActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 90
    new-instance v2, Lcom/android/fileexplorer/FileCategoryHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    .line 91
    new-instance v2, Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;-><init>(Lcom/android/fileexplorer/IFileInteractionListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 93
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, action:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    .line 98
    const-string v2, "pick_folder"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 99
    .local v14, pickFolder:Z
    if-nez v14, :cond_5

    .line 100
    const-string v2, "ext_filter"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, exts:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v2, v11}, Lcom/android/fileexplorer/FileCategoryHelper;->setCustomCategory([Ljava/lang/String;)V

    .line 130
    .end local v11           #exts:[Ljava/lang/String;
    .end local v14           #pickFolder:Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    .line 131
    new-instance v2, Lcom/android/fileexplorer/FileIconHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/FileIconHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    .line 132
    new-instance v2, Lcom/android/fileexplorer/FileListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030003

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/FileListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 135
    const-string v2, "key_base_sd"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 136
    .local v9, baseSd:Z
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, sdDir:Ljava/lang/String;
    const-string v2, "root_directory"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, rootDir:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 140
    if-eqz v9, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    move-object/from16 v15, v16

    .line 146
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2, v15}, Lcom/android/fileexplorer/FileViewInteractionHub;->setRootPath(Ljava/lang/String;)V

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, currentDir:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 150
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_3

    .line 151
    if-eqz v9, :cond_9

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    move-object/from16 v10, v16

    .line 156
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2, v10}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 159
    :cond_3
    if-eqz v17, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_4
    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mBackspaceExit:Z

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 166
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v13, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "file"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/FileViewActivity;->updateUI()V

    .line 173
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/FileViewActivity;->setHasOptionsMenu(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    return-object v2

    .line 105
    .end local v9           #baseSd:Z
    .end local v10           #currentDir:Ljava/lang/String;
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #rootDir:Ljava/lang/String;
    .end local v16           #sdDir:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .restart local v14       #pickFolder:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileCategoryHelper;->setCustomCategory([Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/FileViewActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/fileexplorer/FileViewActivity$2;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mRootView:Landroid/view/View;

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/FileViewActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/fileexplorer/FileViewActivity$3;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 127
    .end local v14           #pickFolder:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->View:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    goto/16 :goto_0

    .line 144
    .restart local v9       #baseSd:Z
    .restart local v15       #rootDir:Ljava/lang/String;
    .restart local v16       #sdDir:Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    move-object/from16 v15, v16

    :goto_4
    goto/16 :goto_1

    :cond_8
    const-string v15, "/"

    goto :goto_4

    .line 154
    .restart local v10       #currentDir:Ljava/lang/String;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 159
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/android/fileexplorer/FileViewActivity$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewActivity$5;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 180
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method public onNavigation(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public onOperation(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public onPick(Lcom/android/fileexplorer/FileInfo;)V
    .locals 4
    .parameter "f"

    .prologue
    .line 336
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 337
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 338
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 186
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 187
    return-void
.end method

.method public onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
    .locals 12
    .parameter "path"
    .parameter "sort"

    .prologue
    .line 253
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 255
    :cond_0
    const/4 v10, 0x0

    .line 288
    :goto_0
    return v10

    .line 257
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewActivity;->computeScrollPosition(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, pos:I
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 259
    .local v4, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    .line 262
    .local v8, listFiles:[Ljava/io/File;
    if-nez v8, :cond_2

    .line 263
    const/4 v10, 0x1

    goto :goto_0

    .line 265
    :cond_2
    move-object v1, v8

    .local v1, arr$:[Ljava/io/File;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, v1, v5

    .line 267
    .local v2, child:Ljava/io/File;
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->isFileSelected(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 265
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, absolutePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->shouldShowFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 272
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v10

    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v11

    invoke-static {v2, v10, v11}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;

    move-result-object v6

    .line 274
    .local v6, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    if-eqz v6, :cond_3

    .line 275
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    .end local v0           #absolutePath:Ljava/lang/String;
    .end local v2           #child:Ljava/io/File;
    .end local v6           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/FileViewActivity;->sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V

    .line 281
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-direct {p0, v10}, Lcom/android/fileexplorer/FileViewActivity;->showEmptyView(Z)V

    .line 282
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    new-instance v11, Lcom/android/fileexplorer/FileViewActivity$4;

    invoke-direct {v11, p0, v9}, Lcom/android/fileexplorer/FileViewActivity$4;-><init>(Lcom/android/fileexplorer/FileViewActivity;I)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 288
    const/4 v10, 0x1

    goto :goto_0

    .line 281
    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 403
    :cond_0
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public setPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideMenu(I)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 2
    .parameter "sort"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileSortHelper;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->onDataChanged()V

    .line 444
    return-void
.end method
