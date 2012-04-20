.class public Lcom/android/fileexplorer/FileListCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FileListCursorAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileNameList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "f"
    .parameter "fileIcon"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 29
    iput-object p3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 30
    iput-object p4, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getFileInfo(Landroid/database/Cursor;)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 36
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileListCursorAdapter;->getFileItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    .line 37
    .local v0, fileInfo:Lcom/android/fileexplorer/FileInfo;
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/fileexplorer/FileInfo;

    .end local v0           #fileInfo:Lcom/android/fileexplorer/FileInfo;
    invoke-direct {v0}, Lcom/android/fileexplorer/FileInfo;-><init>()V

    .line 40
    .restart local v0       #fileInfo:Lcom/android/fileexplorer/FileInfo;
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/FileInfo;->dbId:J

    .line 41
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    iget-object v1, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 43
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    .line 44
    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/fileexplorer/FileListItem;->setupFileListItemInfo(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    .line 47
    const v1, 0x7f090007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;

    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 60
    return-void
.end method

.method public getAllFiles()Ljava/util/Collection;
    .locals 5
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
    .line 63
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 79
    :goto_0
    return-object v3

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 67
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    .local v2, position:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    .end local v2           #position:Ljava/lang/Integer;
    :cond_3
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    goto :goto_0

    .line 72
    .restart local v2       #position:Ljava/lang/Integer;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getFileInfo(Landroid/database/Cursor;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    .line 73
    .local v1, fileInfo:Lcom/android/fileexplorer/FileInfo;
    if-eqz v1, :cond_2

    .line 74
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getFileItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 5
    .parameter "pos"

    .prologue
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    .local v2, position:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/FileInfo;

    .line 94
    :goto_0
    return-object v3

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileListCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getFileInfo(Landroid/database/Cursor;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    .line 89
    .local v1, fileInfo:Lcom/android/fileexplorer/FileInfo;
    if-nez v1, :cond_1

    .line 90
    const/4 v3, 0x0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/fileexplorer/FileInfo;->dbId:J

    .line 93
    iget-object v3, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFileNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 94
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/FileListCursorAdapter;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
