.class public Lcom/android/fileexplorer/FileViewInteractionHub;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileViewInteractionHub$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buttonClick:Landroid/view/View$OnClickListener;

.field private mCheckedFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmOperationBar:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

.field private mCurrentPath:Ljava/lang/String;

.field private mDropdownNavigation:Landroid/view/View;

.field private mFileListView:Landroid/widget/ListView;

.field private mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

.field private mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

.field private mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

.field private mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListViewContextMenuSelectedItem:I

.field private mNavigationBar:Landroid/view/View;

.field private mNavigationBarText:Landroid/widget/TextView;

.field private mNavigationBarUpDownArrow:Landroid/widget/ImageView;

.field private mRoot:Ljava/lang/String;

.field private mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

.field private menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private navigationClick:Landroid/view/View$OnClickListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/fileexplorer/FileViewInteractionHub;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/fileexplorer/IFileInteractionListener;)V
    .locals 1
    .parameter "fileViewListener"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$2;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$3;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->navigationClick:Landroid/view/View$OnClickListener;

    .line 638
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$8;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$8;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 717
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$10;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$10;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 76
    sget-boolean v0, Lcom/android/fileexplorer/FileViewInteractionHub;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    .line 78
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setup()V

    .line 79
    new-instance v0, Lcom/android/fileexplorer/FileOperationHelper;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileOperationHelper;-><init>(Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    .line 80
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/FileSortHelper;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/fileexplorer/FileViewInteractionHub;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationReferesh()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationShowSysFiles()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationFavorite()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationPaste()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->doCreateFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileViewInteractionHub;->doRename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/FileOperationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;III)V
    .locals 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 842
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 843
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;IIII)V
    .locals 3
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconRes"

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1, p2}, Lcom/android/fileexplorer/IFileInteractionListener;->shouldHideMenu(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 848
    .local v0, item:Landroid/view/MenuItem;
    if-lez p5, :cond_0

    .line 849
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 852
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 423
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 424
    return-void
.end method

.method private doCreateFolder(Ljava/lang/String;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/android/fileexplorer/FileOperationHelper;->CreateFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->addSingleFile(Lcom/android/fileexplorer/FileInfo;)V

    .line 377
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private doOperationDelete(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 574
    .local p1, selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 575
    .local v1, selectedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v4, 0x7f060031

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000d

    new-instance v4, Lcom/android/fileexplorer/FileViewInteractionHub$7;

    invoke-direct {v4, p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub$7;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060002

    new-instance v4, Lcom/android/fileexplorer/FileViewInteractionHub$6;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$6;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 590
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 591
    return-void
.end method

.method private doRename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "f"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 526
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    :goto_0
    return v0

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/fileexplorer/FileOperationHelper;->Rename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    iput-object p2, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 538
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "name"

    .prologue
    .line 958
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSelectingFiles()Z
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFileSystemChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 550
    const-string v2, "FileViewInteractionHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "directory changed, send broadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 552
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 554
    const-string v2, "FileViewInteractionHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file changed, send broadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onOperationFavorite()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 233
    .local v0, path:Ljava/lang/String;
    iget v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 237
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationFavorite(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private onOperationFavorite(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 241
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v0

    .line 242
    .local v0, databaseHelper:Lcom/android/fileexplorer/FavoriteDatabaseHelper;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, stringId:I
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->delete(Ljava/lang/String;)V

    .line 246
    const v1, 0x7f060041

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 254
    .end local v1           #stringId:I
    :cond_0
    return-void

    .line 248
    .restart local v1       #stringId:I
    :cond_1
    invoke-static {p1}, Lcom/android/fileexplorer/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;)J

    .line 249
    const/high16 v1, 0x7f06

    goto :goto_0
.end method

.method private onOperationPaste()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->Paste(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method private onOperationReferesh()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 228
    return-void
.end method

.method private onOperationShowSysFiles()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/Settings;->setShowDotAndHiddenFiles(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupNaivgationBar()V

    .line 157
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupFileListView()V

    .line 158
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupOperationPane()V

    .line 159
    return-void
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "id"

    .prologue
    .line 181
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    return-void

    .line 181
    .end local v0           #button:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1, p2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setupFileListView()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v1, 0x7f090014

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    .line 681
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub$9;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$9;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 689
    return-void
.end method

.method private setupNaivgationBar()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f09000e

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBar:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f090011

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarText:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f090012

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    .line 165
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f09000f

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, clickable:Landroid/view/View;
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f090017

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    .line 170
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBar:Landroid/view/View;

    const v2, 0x7f090013

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 171
    return-void
.end method

.method private setupOperationPane()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v1, 0x7f090037

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v1, 0x7f090038

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v1, 0x7f090039

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 178
    return-void
.end method

.method private showConfirmOperationBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showDropdownNavigation(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x3020007

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    return-void

    .line 1030
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 1031
    :cond_1
    const v0, 0x3020005

    goto :goto_1
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 91
    return-void
.end method

.method private updateConfirmButtons()V
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 468
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 459
    .local v0, confirmButton:Landroid/widget/Button;
    const v1, 0x7f060038

    .line 460
    .local v1, text:I
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    const v1, 0x7f06003e

    .line 467
    :cond_1
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 461
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 463
    :cond_3
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileOperationHelper;->canMove(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 860
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f06002b

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 862
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    sget-object v2, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 864
    const/16 v0, 0x75

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 865
    if-eqz v1, :cond_0

    .line 866
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f060034

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 870
    :cond_0
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_1

    .line 872
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 873
    if-eqz v1, :cond_1

    .line 874
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f060040

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 879
    :cond_1
    return-void

    .line 860
    :cond_2
    const v0, 0x7f06003d

    goto :goto_0

    .line 862
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 866
    :cond_4
    const v0, 0x7f06003f

    goto :goto_2

    .line 874
    :cond_5
    const v0, 0x7f060033

    goto :goto_3
.end method

.method private updateNavigationPane()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 471
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v4, 0x7f090013

    invoke-interface {v2, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    .line 472
    .local v1, upLevel:Landroid/view/View;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v4, 0x7f090012

    invoke-interface {v2, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    .line 475
    .local v0, arrow:Landroid/view/View;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    return-void

    .end local v0           #arrow:Landroid/view/View;
    :cond_1
    move v2, v3

    .line 472
    goto :goto_0
.end method

.method private viewFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 4
    .parameter "lFileInfo"

    .prologue
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/fileexplorer/IntentBuilder;->viewFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "FileViewInteractionHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to view file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addContextMenuSelectedItem()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    .line 108
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    .line 110
    .local v0, fileInfo:Lcom/android/fileexplorer/FileInfo;
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v0           #fileInfo:Lcom/android/fileexplorer/FileInfo;
    .end local v1           #pos:I
    :cond_0
    return-void
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->canPaste()Z

    move-result v0

    return v0
.end method

.method public canShowCheckBox()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 3

    .prologue
    .line 986
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 987
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 988
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    if-eqz v0, :cond_0

    .line 991
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    goto :goto_0

    .line 993
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 994
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 996
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/android/fileexplorer/FileViewInteractionHub$Mode;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedFileList()Ljava/util/ArrayList;
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
    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFileSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->isFileSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInSelection()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedAll()Z
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFileFrom(Ljava/util/ArrayList;)V
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
    .line 1022
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->StartMove(Ljava/util/ArrayList;)V

    .line 1023
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateConfirmButtons()V

    .line 1026
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 1027
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationUpLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCheckItem(Lcom/android/fileexplorer/FileInfo;Landroid/view/View;)Z
    .locals 2
    .parameter "f"
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-nez v1, :cond_0

    .line 969
    :cond_2
    iget-boolean v0, p1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v0, :cond_3

    .line 970
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 811
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 816
    const/16 v2, 0x10

    const v4, 0x7f06003d

    const v5, 0x7f020041

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 819
    const v0, 0x7f06001f

    invoke-interface {p1, v3, v7, v6, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const v1, 0x7f020043

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 821
    const/16 v1, 0xb

    const v2, 0x7f060021

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 822
    const/16 v1, 0xc

    const v2, 0x7f060022

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 823
    const/16 v1, 0xd

    const/4 v2, 0x2

    const v4, 0x7f060020

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 824
    const/16 v1, 0xe

    const v2, 0x7f060023

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 825
    invoke-interface {v0, v3, v6, v6}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 826
    invoke-interface {v0, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 830
    const/16 v2, 0x64

    const v4, 0x7f06002e

    const v5, 0x7f020040

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 832
    const/16 v2, 0x65

    const/4 v3, 0x4

    const v4, 0x7f060033

    const v5, 0x7f02003f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 834
    const/16 v2, 0x75

    const/4 v3, 0x5

    const v4, 0x7f06003f

    const v5, 0x7f020042

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 836
    const/16 v2, 0xf

    const/4 v3, 0x6

    const v4, 0x7f06003a

    const v5, 0x3020138

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 838
    return v6
.end method

.method public onFileChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->notifyFileSystemChanged(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$1;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0, p3}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v2

    .line 895
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 897
    if-nez v2, :cond_0

    .line 898
    const-string v0, "FileViewInteractionHub"

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

    .line 938
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 903
    iget-boolean v3, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 904
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v4

    .line 905
    const v0, 0x7f090008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 906
    if-eqz v3, :cond_2

    .line 907
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    const v5, 0x3020132

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 913
    :goto_1
    if-eqz v4, :cond_1

    .line 914
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 917
    :cond_1
    :goto_2
    if-nez v3, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 919
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/android/fileexplorer/Util;->updateActionModeTitle(Landroid/view/ActionMode;Landroid/content/Context;I)V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    const v5, 0x3020131

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 915
    :cond_3
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 917
    goto :goto_3

    .line 923
    :cond_5
    iget-boolean v0, v2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-nez v0, :cond_7

    .line 924
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    sget-object v1, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-ne v0, v1, :cond_6

    .line 925
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onPick(Lcom/android/fileexplorer/FileInfo;)V

    goto :goto_0

    .line 927
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->viewFile(Lcom/android/fileexplorer/FileInfo;)V

    goto :goto_0

    .line 932
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_8

    .line 935
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 937
    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto/16 :goto_0
.end method

.method protected onNavigationBarClick()V
    .locals 14

    .prologue
    .line 302
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 303
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    const v12, 0x7f090018

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 306
    .local v4, list:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    const/4 v7, 0x0

    .line 308
    .local v7, pos:I
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v12, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/android/fileexplorer/IFileInteractionListener;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, displayPath:Ljava/lang/String;
    const/4 v8, 0x1

    .line 310
    .local v8, root:Z
    const/4 v3, 0x0

    .line 311
    .local v3, left:I
    :goto_1
    const/4 v11, -0x1

    if-eq v7, v11, :cond_2

    .line 312
    const-string v11, "/"

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 313
    .local v1, end:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 336
    .end local v1           #end:I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lez v11, :cond_0

    .line 337
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    goto :goto_0

    .line 316
    .restart local v1       #end:I
    :cond_3
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030001

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 319
    .local v6, listItem:Landroid/view/View;
    const v11, 0x7f090009

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 320
    .local v5, listContent:Landroid/view/View;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v3, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    add-int/lit8 v3, v3, 0x14

    .line 322
    const v11, 0x7f09000a

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 324
    .local v2, img:Landroid/widget/ImageView;
    if-eqz v8, :cond_4

    const v11, 0x7f02002b

    :goto_2
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    const/4 v8, 0x0

    .line 327
    const v11, 0x7f09000b

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 328
    .local v10, text:Landroid/widget/TextView;
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, substring:Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->navigationClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/fileexplorer/IFileInteractionListener;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v7, v1, 0x1

    .line 334
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 324
    .end local v9           #substring:Ljava/lang/String;
    .end local v10           #text:Landroid/widget/TextView;
    :cond_4
    const v11, 0x7f02002a

    goto :goto_2
.end method

.method public onOperationButtonCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->clear()V

    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 624
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;->selected(Ljava/util/ArrayList;)V

    .line 626
    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    .line 627
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 635
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->EndMove(Ljava/lang/String;)Z

    .line 631
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0
.end method

.method public onOperationButtonConfirm()V
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;->selected(Ljava/util/ArrayList;)V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    .line 611
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->EndMove(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationPaste()V

    goto :goto_0
.end method

.method public onOperationCopy()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy(Ljava/util/ArrayList;)V

    .line 400
    return-void
.end method

.method public onOperationCopy(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 403
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/FileOperationHelper;->Copy(Ljava/util/ArrayList;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, confirmButton:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 411
    return-void
.end method

.method public onOperationCopyPath()V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->copy(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 418
    return-void
.end method

.method public onOperationCreateFolder()V
    .locals 6

    .prologue
    .line 359
    new-instance v0, Lcom/android/fileexplorer/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v4, 0x7f06002f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/fileexplorer/FileViewInteractionHub$4;

    invoke-direct {v5, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$4;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;)V

    .line 368
    .local v0, dialog:Lcom/android/fileexplorer/TextInputDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/TextInputDialog;->show()V

    .line 369
    return-void
.end method

.method public onOperationDelete()V
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->doOperationDelete(Ljava/util/ArrayList;)V

    .line 561
    return-void
.end method

.method public onOperationInfo()V
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileInfo;

    .line 598
    .local v1, file:Lcom/android/fileexplorer/FileInfo;
    if-eqz v1, :cond_0

    .line 601
    new-instance v0, Lcom/android/fileexplorer/InformationDialog;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v3}, Lcom/android/fileexplorer/IFileInteractionListener;->getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;)V

    .line 603
    .local v0, dialog:Lcom/android/fileexplorer/InformationDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/InformationDialog;->show()V

    .line 604
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_0
.end method

.method public onOperationMove()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileOperationHelper;->StartMove(Ljava/util/ArrayList;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 435
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, confirmButton:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 440
    return-void
.end method

.method public onOperationRename()V
    .locals 8

    .prologue
    .line 503
    iget v7, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    .line 504
    .local v7, pos:I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/FileInfo;

    .line 511
    .local v6, f:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 513
    new-instance v0, Lcom/android/fileexplorer/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    new-instance v5, Lcom/android/fileexplorer/FileViewInteractionHub$5;

    invoke-direct {v5, p0, v6}, Lcom/android/fileexplorer/FileViewInteractionHub$5;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;)V

    .line 522
    .local v0, dialog:Lcom/android/fileexplorer/TextInputDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/TextInputDialog;->show()V

    goto :goto_0
.end method

.method public onOperationSearch()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onOperationSelectAll()V
    .locals 6

    .prologue
    .line 270
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v4}, Lcom/android/fileexplorer/IFileInteractionListener;->getAllFiles()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 272
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 273
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 276
    .local v1, fileExplorerTabActivity:Lcom/android/fileexplorer/FileExplorerTabActivity;
    invoke-virtual {v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v3

    .line 277
    .local v3, mode:Landroid/view/ActionMode;
    if-nez v3, :cond_1

    .line 278
    new-instance v4, Lcom/android/fileexplorer/FileListItem$ModeCallback;

    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    .line 279
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setActionMode(Landroid/view/ActionMode;)V

    .line 280
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/Util;->updateActionModeTitle(Landroid/view/ActionMode;Landroid/content/Context;I)V

    .line 282
    :cond_1
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v4}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 283
    return-void
.end method

.method public onOperationSelectAllOrCancel()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAll()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_0
.end method

.method public onOperationSend()V
    .locals 9

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v5

    .line 482
    .local v5, selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileInfo;

    .line 483
    .local v2, f:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v6, v2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v6, :cond_0

    .line 484
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060010

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f06000d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 486
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 500
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #f:Lcom/android/fileexplorer/FileInfo;
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {v5}, Lcom/android/fileexplorer/IntentBuilder;->buildSendFile(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    .line 492
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 494
    :try_start_0
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v6, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "FileViewInteractionHub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to view file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOperationUpLevel()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 345
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/IFileInteractionListener;->onOperation(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 355
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateMenuItems(Landroid/view/Menu;)V

    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileSortHelper;->getSortMethod()Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileSortHelper;->setSortMethog(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->sortCurrentList()V

    .line 396
    :cond_0
    return-void
.end method

.method public refreshFileList()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 444
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateNavigationPane()V

    .line 447
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z

    .line 450
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateConfirmButtons()V

    .line 452
    return-void
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 955
    return-void
.end method

.method public setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    .line 887
    return-void
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    .line 942
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 943
    return-void
.end method

.method public sortCurrentList()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V

    .line 95
    return-void
.end method
