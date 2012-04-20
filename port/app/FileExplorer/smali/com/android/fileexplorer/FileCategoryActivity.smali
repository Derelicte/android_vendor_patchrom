.class public Lcom/android/fileexplorer/FileCategoryActivity;
.super Landroid/app/Fragment;
.source "FileCategoryActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;
.implements Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;
.implements Lcom/android/fileexplorer/IFileInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileCategoryActivity$5;,
        Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;,
        Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;
    }
.end annotation


# static fields
.field private static button2Category:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field private handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

.field private mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

.field private mConfigurationChanged:Z

.field private mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

.field private mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

.field private mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileViewActivity:Lcom/android/fileexplorer/FileViewActivity;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mRootView:Landroid/view/View;

.field private mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f09001c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f09001e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f090020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f090022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f090024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f090026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f090028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f09002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 63
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mConfigurationChanged:Z

    .line 240
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$1;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 602
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$4;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FileListCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FavoriteList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/fileexplorer/FileCategoryActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/fileexplorer/FileCategoryActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/fileexplorer/FileCategoryActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->updateUI()V

    return-void
.end method

.method private copyFileInFileView(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 448
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewActivity:Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewActivity;->copyFile(Ljava/util/ArrayList;)V

    .line 450
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method private static getCategoryCountId(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I
    .locals 2
    .parameter "fc"

    .prologue
    .line 465
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 484
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 467
    :pswitch_0
    const v0, 0x7f09001d

    goto :goto_0

    .line 469
    :pswitch_1
    const v0, 0x7f09001f

    goto :goto_0

    .line 471
    :pswitch_2
    const v0, 0x7f090021

    goto :goto_0

    .line 473
    :pswitch_3
    const v0, 0x7f090023

    goto :goto_0

    .line 475
    :pswitch_4
    const v0, 0x7f090025

    goto :goto_0

    .line 477
    :pswitch_5
    const v0, 0x7f090027

    goto :goto_0

    .line 479
    :pswitch_6
    const v0, 0x7f090029

    goto :goto_0

    .line 481
    :pswitch_7
    const v0, 0x7f09002b

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileCategoryHelper;->setCurCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    .line 270
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategoryNameResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 275
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne p1, v0, :cond_1

    .line 276
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_1
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_0
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 445
    return-void
.end method

.method private registerScannerReceiver()V
    .locals 3

    .prologue
    .line 119
    new-instance v1, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryActivity$1;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method private setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 2
    .parameter "f"
    .parameter "size"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/CategoryBar;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/fileexplorer/CategoryBar;->setCategoryValue(IJ)Z

    .line 536
    return-void
.end method

.method private setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 3
    .parameter "fc"
    .parameter "count"

    .prologue
    .line 255
    invoke-static {p1}, Lcom/android/fileexplorer/FileCategoryActivity;->getCategoryCountId(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I

    move-result v0

    .line 256
    .local v0, id:I
    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 4
    .parameter "fc"
    .parameter "size"

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, txtId:I
    const/4 v0, 0x0

    .line 490
    .local v0, resId:I
    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 525
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_1
    return-void

    .line 492
    :pswitch_1
    const v1, 0x7f09002f

    .line 493
    const v0, 0x7f060007

    .line 494
    goto :goto_0

    .line 496
    :pswitch_2
    const v1, 0x7f090030

    .line 497
    const v0, 0x7f06000b

    .line 498
    goto :goto_0

    .line 500
    :pswitch_3
    const v1, 0x7f090031

    .line 501
    const v0, 0x7f060009

    .line 502
    goto :goto_0

    .line 504
    :pswitch_4
    const v1, 0x7f090032

    .line 505
    const v0, 0x7f06000a

    .line 506
    goto :goto_0

    .line 508
    :pswitch_5
    const v1, 0x7f090033

    .line 509
    const v0, 0x7f060005

    .line 510
    goto :goto_0

    .line 512
    :pswitch_6
    const v1, 0x7f090034

    .line 513
    const v0, 0x7f06000c

    .line 514
    goto :goto_0

    .line 516
    :pswitch_7
    const v1, 0x7f090035

    .line 517
    const v0, 0x7f060004

    .line 518
    goto :goto_0

    .line 520
    :pswitch_8
    const v1, 0x7f090036

    .line 521
    const v0, 0x7f060008

    goto :goto_0

    .line 528
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private setTextView(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "t"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private setupCategoryInfo()V
    .locals 5

    .prologue
    .line 129
    new-instance v2, Lcom/android/fileexplorer/FileCategoryHelper;

    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    .line 131
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/CategoryBar;

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    .line 132
    const/16 v2, 0x8

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 139
    .local v1, imgs:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/CategoryBar;->addCategory(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_1
    return-void

    .line 132
    :array_0
    .array-data 0x4
        0xet 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private setupClick()V
    .locals 1

    .prologue
    .line 288
    const v0, 0x7f09001c

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 289
    const v0, 0x7f09001e

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 290
    const v0, 0x7f090020

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 291
    const v0, 0x7f090022

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 292
    const v0, 0x7f090024

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 293
    const v0, 0x7f090026

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 294
    const v0, 0x7f090028

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 295
    const v0, 0x7f09002a

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 296
    return-void
.end method

.method private setupClick(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, button:Landroid/view/View;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method private showEmptyView(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 230
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void

    .line 230
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V
    .locals 7
    .parameter "p"

    .prologue
    const v6, 0x7f090019

    const v5, 0x7f090014

    const v4, 0x7f09000e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v2, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 195
    invoke-direct {p0, v5, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 196
    invoke-direct {p0, v4, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 197
    const v2, 0x7f09001a

    invoke-direct {p0, v2, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 198
    const v2, 0x7f09003d

    invoke-direct {p0, v2, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 199
    invoke-direct {p0, v6, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 200
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/FavoriteList;->show(Z)V

    .line 201
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    .line 203
    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    const v2, 0x7f09001a

    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 206
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mConfigurationChanged:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->reInstantiateCategoryTab()V

    .line 208
    iput-boolean v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mConfigurationChanged:Z

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0, v4, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 213
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/FavoriteList;->show(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 217
    :pswitch_2
    invoke-direct {p0, v4, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 218
    invoke-direct {p0, v5, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 219
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 222
    :pswitch_3
    invoke-direct {p0, v6, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showView(IZ)V
    .locals 2
    .parameter "id"
    .parameter "show"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 236
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    return-void

    .line 236
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private startMoveToFileView(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 454
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewActivity:Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewActivity;->moveToFile(Ljava/util/ArrayList;)V

    .line 456
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 560
    invoke-static {}, Lcom/android/fileexplorer/Util;->isSDCardReady()Z

    move-result v0

    .line 561
    .local v0, sdCardReady:Z
    if-eqz v0, :cond_3

    .line 562
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v1, v2, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 564
    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshCategoryInfo()V

    .line 570
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 572
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewActivity:Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewActivity;->refresh()V

    .line 577
    :goto_1
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v1, v2, :cond_0

    .line 566
    :cond_2
    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 575
    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_1
.end method


# virtual methods
.method public addSingleFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshList()V

    .line 421
    return-void
.end method

.method public getAllFiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getAllFiles()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationChanged()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mConfigurationChanged:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileListCursorAdapter;->getFileItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayPath"

    .prologue
    .line 403
    const-string v0, ""

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isHomePage()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyFileChanged()V
    .locals 4

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 585
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    .line 586
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/fileexplorer/FileCategoryActivity$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileCategoryActivity$3;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBack()Z
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v0, v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    .line 95
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    sget v2, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileViewActivity;

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewActivity:Lcom/android/fileexplorer/FileViewActivity;

    .line 97
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    .line 98
    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 99
    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub;-><init>(Lcom/android/fileexplorer/IFileInteractionListener;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 100
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v2, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->View:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    .line 101
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setRootPath(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/android/fileexplorer/FileIconHelper;

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/FileIconHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    .line 103
    new-instance v2, Lcom/android/fileexplorer/FavoriteList;

    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    const v4, 0x7f090015

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct {v2, v3, v1, p0, v4}, Lcom/android/fileexplorer/FavoriteList;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;Lcom/android/fileexplorer/FileIconHelper;)V

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    .line 104
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FavoriteList;->initList()V

    .line 105
    new-instance v1, Lcom/android/fileexplorer/FileListCursorAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v5, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/fileexplorer/FileListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 108
    .local v0, fileListView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick()V

    .line 111
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupCategoryInfo()V

    .line 112
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->updateUI()V

    .line 113
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->registerScannerReceiver()V

    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$2;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 540
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    :cond_0
    return-void
.end method

.method public onFavoriteDatabaseChanged()V
    .locals 3

    .prologue
    .line 617
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 618
    return-void
.end method

.method public onNavigation(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 408
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public onOperation(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->addContextMenuSelectedItem()V

    .line 375
    sparse-switch p1, :sswitch_data_0

    .line 393
    :goto_0
    return v0

    .line 378
    :sswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->copyFileInFileView(Ljava/util/ArrayList;)V

    .line 379
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 393
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :sswitch_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->startMoveToFileView(Ljava/util/ArrayList;)V

    .line 384
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_1

    .line 387
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setHasOptionsMenu(Z)V

    .line 388
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_1

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x68 -> :sswitch_0
        0x6a -> :sswitch_1
        0x7f09003f -> :sswitch_0
        0x7f090040 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPick(Lcom/android/fileexplorer/FileInfo;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 365
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-eq v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 324
    :cond_0
    return-void
.end method

.method public onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
    .locals 6
    .parameter "path"
    .parameter "sort"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    iget-object v4, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v4}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v1

    .line 328
    .local v1, curCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    sget-object v4, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v1, v4, :cond_1

    :cond_0
    move v3, v2

    .line 335
    :goto_0
    return v3

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {p2}, Lcom/android/fileexplorer/FileSortHelper;->getSortMethod()Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/fileexplorer/FileCategoryHelper;->query(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Landroid/database/Cursor;

    move-result-object v0

    .line 332
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    .line 333
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public refreshCategoryInfo()V
    .locals 17

    .prologue
    .line 149
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSDCardInfo()Lcom/android/fileexplorer/Util$SDCardInfo;

    move-result-object v8

    .line 150
    .local v8, sdCardInfo:Lcom/android/fileexplorer/Util$SDCardInfo;
    if-eqz v8, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    iget-wide v12, v8, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    invoke-virtual {v11, v12, v13}, Lcom/android/fileexplorer/CategoryBar;->setFullValue(J)V

    .line 152
    const v11, 0x7f09002c

    const v12, 0x7f060043

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v15, v8, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    invoke-static/range {v15 .. v16}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 153
    const v11, 0x7f09002d

    const v12, 0x7f060042

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v15, v8, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J

    invoke-static/range {v15 .. v16}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v11}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshCategoryInfo()V

    .line 159
    const-wide/16 v9, 0x0

    .line 160
    .local v9, size:J
    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .local v1, arr$:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 161
    .local v3, fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v11}, Lcom/android/fileexplorer/FileCategoryHelper;->getCategoryInfos()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .line 162
    .local v2, categoryInfo:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    iget-wide v11, v2, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->count:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 165
    sget-object v11, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v3, v11, :cond_1

    .line 160
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-wide v11, v2, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 169
    iget-wide v11, v2, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 170
    iget-wide v11, v2, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    add-long/2addr v9, v11

    goto :goto_1

    .line 173
    .end local v2           #categoryInfo:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    .end local v3           #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    :cond_2
    if-eqz v8, :cond_3

    .line 174
    iget-wide v11, v8, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    iget-wide v13, v8, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J

    sub-long/2addr v11, v13

    sub-long v6, v11, v9

    .line 175
    .local v6, otherSize:J
    sget-object v11, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6, v7}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 176
    sget-object v11, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6, v7}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 179
    .end local v6           #otherSize:J
    :cond_3
    sget-object v11, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v12}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    invoke-virtual {v11}, Lcom/android/fileexplorer/CategoryBar;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    invoke-virtual {v11}, Lcom/android/fileexplorer/CategoryBar;->startAnimation()V

    .line 184
    :cond_4
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method public setConfigurationChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mConfigurationChanged:Z

    .line 79
    return-void
.end method

.method public shouldHideMenu(I)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 414
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    const/16 v0, 0x75

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshList()V

    .line 441
    return-void
.end method
