.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;
.implements Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;,
        Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;,
        Lcom/android/browser/AddBookmarkPage$BookmarkAccount;,
        Lcom/android/browser/AddBookmarkPage$AccountsLoader;,
        Lcom/android/browser/AddBookmarkPage$CustomListView;,
        Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;,
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;,
        Lcom/android/browser/AddBookmarkPage$FolderAdapter;,
        Lcom/android/browser/AddBookmarkPage$Folder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final LOADER_ID_ACCOUNTS:I

.field private final LOADER_ID_EDIT_INFO:I

.field private final LOADER_ID_FOLDER_CONTENTS:I

.field private final LOGTAG:Ljava/lang/String;

.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/browser/AddBookmarkPage$BookmarkAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

.field private mAddNewFolder:Landroid/view/View;

.field private mAddSeparator:Landroid/view/View;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCrumbHolder:Landroid/view/View;

.field private mCrumbs:Lcom/android/browser/BreadCrumbView;

.field private mCurrentFolder:J

.field private mDefaultView:Landroid/view/View;

.field private mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEditingExisting:Z

.field private mEditingFolder:Z

.field private mFakeTitle:Landroid/widget/TextView;

.field private mFakeTitleHolder:Landroid/view/View;

.field private mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

.field private mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

.field private mFolderCancel:Landroid/view/View;

.field private mFolderNamer:Landroid/widget/EditText;

.field private mFolderNamerHolder:Landroid/view/View;

.field private mFolderSelector:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private mIsFolderNamerShowing:Z

.field private mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mRemoveLink:Landroid/view/View;

.field private mRootFolder:J

.field private mSaveToHomeScreen:Z

.field private mTitle:Landroid/widget/EditText;

.field private mTopLevelLabel:Landroid/widget/TextView;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_ACCOUNTS:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_FOLDER_CONTENTS:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/AddBookmarkPage;->LOADER_ID_EDIT_INFO:I

    .line 388
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1066
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/AddBookmarkPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/AddBookmarkPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/AddBookmarkPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/browser/AddBookmarkPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/AddBookmarkPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/AddBookmarkPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    return-wide v0
.end method

.method private addFolderToCurrent(Ljava/lang/String;)J
    .locals 7
    .parameter "name"

    .prologue
    .line 347
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v5, "folder"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v2

    .line 353
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 354
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v2           #data:Ljava/lang/Object;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 358
    .local v0, currentFolder:J
    :goto_0
    const-string v5, "parent"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 361
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 362
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 364
    :goto_1
    return-wide v5

    .line 356
    .end local v0           #currentFolder:J
    .end local v3           #uri:Landroid/net/Uri;
    .restart local v2       #data:Ljava/lang/Object;
    :cond_0
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v0       #currentFolder:J
    goto :goto_0

    .line 364
    .end local v2           #data:Ljava/lang/Object;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    const-wide/16 v5, -0x1

    goto :goto_1
.end method

.method private completeOrCancelFolderNaming(Z)V
    .locals 6
    .parameter "cancel"

    .prologue
    const/4 v5, 0x0

    .line 333
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/AddBookmarkPage;->addFolderToCurrent(Ljava/lang/String;)J

    move-result-wide v0

    .line 336
    .local v0, id:J
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 338
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 339
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v4}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 343
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 836
    :cond_0
    return-void
.end method

.method private descendInto(Ljava/lang/String;J)V
    .locals 2
    .parameter "foldername"
    .parameter "id"

    .prologue
    .line 382
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$Folder;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 386
    :cond_0
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 144
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getUriForFolder(J)Landroid/net/Uri;
    .locals 4
    .parameter "folder"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    .line 150
    .local v0, account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    iget-wide v1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 151
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Landroid/provider/BrowserContract$Bookmarks;->buildFolderUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private onCurrentFolderFound()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 727
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 728
    .local v0, manager:Landroid/app/LoaderManager;
    iget-wide v3, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 732
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 743
    :cond_0
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 744
    return-void

    .line 732
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 734
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    .line 735
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1
.end method

.method private onRootFolderFound(J)V
    .locals 2
    .parameter "root"

    .prologue
    .line 711
    iput-wide p1, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .line 712
    iget-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v0, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 713
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 714
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V

    .line 715
    return-void
.end method

.method private setShowBookmarkIcon(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, v1

    .line 179
    goto :goto_0
.end method

.method private setShowFolderNamer(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eq p1, v0, :cond_0

    .line 550
    iput-boolean p1, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    .line 551
    if-eqz p1, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addFooterView(Landroid/view/View;)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 564
    :cond_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private setupTopCrumb()V
    .locals 6

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->clear()V

    .line 719
    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Lcom/android/browser/AddBookmarkPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v4, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    invoke-direct {v3, v0, v4, v5}, Lcom/android/browser/AddBookmarkPage$Folder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    .line 723
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTopLevelLabel:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 724
    return-void
.end method

.method private showRemoveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    .line 705
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    return-void
.end method

.method private switchToDefaultView(Z)V
    .locals 9
    .parameter "changedFolder"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    if-eqz p1, :cond_3

    .line 206
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v5}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 208
    check-cast v1, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 209
    .local v1, folder:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v5, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iput-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 210
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 214
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    .line 245
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #data:Ljava/lang/Object;
    .restart local v1       #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_1
    move v3, v4

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-object v4, v1, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #folder:Lcom/android/browser/AddBookmarkPage$Folder;
    :cond_3
    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v5, :cond_4

    .line 223
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v4, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    .line 225
    :cond_4
    iget-wide v5, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 226
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v6, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/browser/addbookmark/FolderSpinner;->setSelectionIgnoringSelectionChange(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    .line 228
    :cond_6
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v3}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v0

    .line 229
    .restart local v0       #data:Ljava/lang/Object;
    if-eqz v0, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/android/browser/AddBookmarkPage$Folder;

    iget-wide v5, v3, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_7

    .line 233
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    check-cast v0, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v0           #data:Ljava/lang/Object;
    iget-object v4, v0, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    .restart local v0       #data:Ljava/lang/Object;
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->setupTopCrumb()V

    .line 238
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 239
    .local v2, manager:Landroid/app/LoaderManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method private switchToFolderSelector()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v0, v2}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setSelection(I)V

    .line 371
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 379
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 250
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 252
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_1

    .line 253
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 257
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->save()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    if-ne p1, v4, :cond_6

    .line 263
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v4, :cond_4

    .line 264
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 266
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->switchToDefaultView(Z)V

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    if-ne p1, v4, :cond_7

    .line 271
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    goto :goto_0

    .line 272
    :cond_7
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    if-ne p1, v4, :cond_8

    .line 273
    invoke-direct {p0, v6}, Lcom/android/browser/AddBookmarkPage;->setShowFolderNamer(Z)V

    .line 274
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    const v5, 0x7f0c002d

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(I)V

    .line 275
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 276
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 281
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 282
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 283
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mRemoveLink:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 284
    iget-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-nez v4, :cond_9

    .line 285
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Remove button should not be shown for new bookmarks"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 288
    :cond_9
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 289
    .local v0, id:J
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 290
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 291
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4, p0, v3}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 599
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 600
    invoke-virtual {p0, v8}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 602
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 604
    const v7, 0x7f040011

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 606
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 608
    .local v6, window:Landroid/view/Window;
    const/4 v4, 0x0

    .line 609
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 611
    .local v5, url:Ljava/lang/String;
    const v7, 0x7f0d002a

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    .line 613
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 614
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "bookmark"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 615
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 616
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "is_folder"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    .line 617
    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 618
    iput-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 619
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;

    const v10, 0x7f0c0039

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 620
    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v7, :cond_3

    .line 621
    const v7, 0x7f0d002f

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "title"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 634
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #url:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 635
    .restart local v5       #url:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "touch_icon_url"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 636
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "parent"

    const-wide/16 v11, -0x1

    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 639
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    const v7, 0x7f0d0005

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 640
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 642
    const v7, 0x7f0d0031

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 643
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 645
    const v7, 0x7f0d0038

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 646
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    const v7, 0x7f0d0037

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 649
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    const v7, 0x7f0d0033

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/addbookmark/FolderSpinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    .line 652
    new-instance v10, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    iget-boolean v7, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    invoke-direct {v10, p0, v7}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    .line 653
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    iget-object v10, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v7, v10}, Lcom/android/browser/addbookmark/FolderSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 654
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolder:Lcom/android/browser/addbookmark/FolderSpinner;

    invoke-virtual {v7, p0}, Lcom/android/browser/addbookmark/FolderSpinner;->setOnSetSelectionListener(Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;)V

    .line 656
    const v7, 0x7f0d002d

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mDefaultView:Landroid/view/View;

    .line 657
    const v7, 0x7f0d0034

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSelector:Landroid/view/View;

    .line 659
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f040021

    invoke-virtual {v7, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    .line 660
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d005a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    .line 661
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 662
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamerHolder:Landroid/view/View;

    const v10, 0x7f0d005b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    .line 663
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFolderCancel:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    const v7, 0x7f0d0028

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    .line 666
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddNewFolder:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    const v7, 0x7f0d0027

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAddSeparator:Landroid/view/View;

    .line 669
    const v7, 0x7f0d0023

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/BreadCrumbView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    .line 670
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 671
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v7, p0}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 673
    const v7, 0x7f0d0015

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbHolder:Landroid/view/View;

    .line 674
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 676
    new-instance v7, Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-direct {v7, p0, p0}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    .line 677
    const v7, 0x7f0d0035

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/browser/AddBookmarkPage$CustomListView;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    .line 678
    const v7, 0x7f0d0036

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 679
    .local v1, empty:Landroid/view/View;
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, v1}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setEmptyView(Landroid/view/View;)V

    .line 680
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 681
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    invoke-virtual {v7, p0}, Lcom/android/browser/AddBookmarkPage$CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 682
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mListView:Lcom/android/browser/AddBookmarkPage$CustomListView;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Lcom/android/browser/AddBookmarkPage$CustomListView;->addEditText(Landroid/widget/EditText;)V

    .line 684
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v7, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 686
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 688
    const v7, 0x7f0d0032

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    .line 689
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 690
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 693
    const v7, 0x7f0d0029

    invoke-virtual {p0, v7}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mFakeTitleHolder:Landroid/view/View;

    .line 695
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 696
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 699
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9, v13, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 700
    return-void

    .line 623
    .end local v1           #empty:Landroid/view/View;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V

    goto/16 :goto_0

    .line 626
    :cond_4
    iget-object v7, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v10, "gravity"

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 627
    .local v2, gravity:I
    if-eq v2, v11, :cond_0

    .line 628
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 629
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 630
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #gravity:I
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v7, v9

    .line 652
    goto/16 :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
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
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 457
    packed-switch p1, :pswitch_data_0

    .line 487
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Asking for nonexistant loader!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 459
    :pswitch_0
    new-instance v0, Lcom/android/browser/AddBookmarkPage$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 480
    :goto_0
    return-object v0

    .line 461
    :pswitch_1
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "title"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string v1, "folder"

    aput-object v1, v3, v0

    .line 466
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "folder != 0"

    .line 467
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 468
    .local v5, whereArgs:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    new-array v5, v6, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 474
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCrumbs:Lcom/android/browser/BreadCrumbView;

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->getTopData()Ljava/lang/Object;

    move-result-object v9

    .line 475
    .local v9, data:Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 476
    check-cast v9, Lcom/android/browser/AddBookmarkPage$Folder;

    .end local v9           #data:Ljava/lang/Object;
    iget-wide v7, v9, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 480
    .local v7, currentFolder:J
    :goto_1
    new-instance v0, Landroid/content/CursorLoader;

    invoke-direct {p0, v7, v8}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "_id ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    .end local v7           #currentFolder:J
    .restart local v9       #data:Ljava/lang/Object;
    :cond_1
    iget-wide v7, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    .restart local v7       #currentFolder:J
    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderNamer:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 543
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 545
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5}, Lcom/android/browser/AddBookmarkPage;->descendInto(Ljava/lang/String;J)V

    .line 546
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 967
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    if-ne v2, p1, :cond_0

    .line 968
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    .line 969
    .local v0, root:J
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 970
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 971
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->clearRecentFolder()V

    .line 974
    .end local v0           #root:J
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "cursor"
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
    .line 493
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 496
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 510
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAdapter:Lcom/android/browser/AddBookmarkPage$FolderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage$FolderAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSetSelection(J)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    long-to-int v0, p1

    .line 301
    .local v0, intId:I
    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 304
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 308
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->switchToFolderSelector()V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    invoke-virtual {v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->recentFolderId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    .line 315
    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    .line 319
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 320
    .local v1, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .locals 7
    .parameter "view"
    .parameter "level"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 160
    if-nez p3, :cond_0

    .line 172
    :goto_0
    return-void

    :cond_0
    move-object v2, p3

    .line 161
    check-cast v2, Lcom/android/browser/AddBookmarkPage$Folder;

    .line 162
    .local v2, folderData:Lcom/android/browser/AddBookmarkPage$Folder;
    iget-wide v0, v2, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 163
    .local v0, folder:J
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 164
    .local v4, manager:Landroid/app/LoaderManager;
    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/CursorLoader;

    .line 166
    .local v3, loader:Landroid/content/CursorLoader;
    invoke-direct {p0, v0, v1}, Lcom/android/browser/AddBookmarkPage;->getUriForFolder(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 167
    invoke-virtual {v3}, Landroid/content/CursorLoader;->forceLoad()V

    .line 168
    iget-boolean v6, p0, Lcom/android/browser/AddBookmarkPage;->mIsFolderNamerShowing:Z

    if-eqz v6, :cond_1

    .line 169
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->completeOrCancelFolderNaming(Z)V

    .line 171
    :cond_1
    if-ne p2, v5, :cond_2

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/browser/AddBookmarkPage;->setShowBookmarkIcon(Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method save()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    invoke-direct {p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 844
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 846
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 848
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 849
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 850
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 851
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v8, :cond_5

    .line 852
    :cond_0
    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v2, 0x7f0c0043

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 855
    :cond_1
    if-eqz v1, :cond_2

    .line 856
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0044

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 961
    :cond_2
    :goto_2
    return v3

    :cond_3
    move v0, v3

    .line 848
    goto :goto_0

    :cond_4
    move v1, v3

    .line 849
    goto :goto_1

    .line 861
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 862
    iget-boolean v1, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v1, :cond_11

    .line 867
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "javascript:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 868
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-static {v0}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 874
    if-eqz v1, :cond_6

    .line 875
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0046

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 890
    :catch_0
    move-exception v0

    .line 891
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v1, 0x7f0c0045

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 880
    :cond_6
    :try_start_1
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 884
    :try_start_2
    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 885
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 881
    :catch_1
    move-exception v0

    .line 882
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_7
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_8
    move-object v4, v0

    .line 896
    :goto_3
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v0, :cond_9

    .line 897
    iput-boolean v3, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 900
    :cond_9
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 902
    iget-boolean v0, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    if-eqz v0, :cond_c

    .line 903
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 904
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 905
    const-string v5, "title"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v5, "parent"

    iget-wide v8, p0, Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 907
    iget-boolean v5, p0, Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z

    if-nez v5, :cond_a

    .line 908
    const-string v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    if-nez v7, :cond_a

    .line 910
    const-string v4, "thumbnail"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 913
    :cond_a
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 914
    new-instance v4, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;-><init>(Landroid/content/Context;J)V

    new-array v0, v2, [Landroid/content/ContentValues;

    aput-object v1, v0, v3

    invoke-virtual {v4, v0}, Lcom/android/browser/AddBookmarkPage$UpdateBookmarkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 916
    :cond_b
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    :goto_4
    move v3, v2

    .line 961
    goto/16 :goto_2

    .line 920
    :cond_c
    if-eqz v7, :cond_d

    .line 921
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 923
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v8, "favicon"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 930
    :goto_5
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 931
    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v9, "url"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v9, "favicon"

    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 935
    iget-boolean v9, p0, Lcom/android/browser/AddBookmarkPage;->mSaveToHomeScreen:Z

    if-eqz v9, :cond_f

    .line 936
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    if-eqz v7, :cond_e

    .line 937
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 939
    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 940
    new-instance v1, Lcom/android/browser/DownloadTouchIcon;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v6, "user_agent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v0, v5}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V

    .line 942
    new-array v0, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-virtual {v1, v0}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 958
    :goto_6
    invoke-virtual {p0, v10}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 959
    const-string v0, "bookmarkview"

    invoke-static {v4, v0}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v1, v5

    move-object v0, v5

    .line 927
    goto :goto_5

    .line 944
    :cond_e
    invoke-static {p0, v4, v6, v5, v1}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/AddBookmarkPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .line 948
    :cond_f
    const-string v1, "thumbnail"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 949
    const-string v0, "remove_thumbnail"

    if-nez v7, :cond_10

    move v3, v2

    :cond_10
    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    const-string v0, "touch_icon_url"

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 953
    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 955
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, v0}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 956
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_6

    :cond_11
    move-object v4, v0

    goto/16 :goto_3
.end method

.method setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;

    .line 445
    .local v0, account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountType:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 448
    iget-wide v2, v0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    invoke-direct {p0, v2, v3}, Lcom/android/browser/AddBookmarkPage;->onRootFolderFound(J)V

    .line 452
    .end local v0           #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_0
    return-void

    .line 443
    .restart local v0       #account:Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
