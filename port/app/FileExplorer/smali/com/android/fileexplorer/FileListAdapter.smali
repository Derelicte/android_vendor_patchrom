.class public Lcom/android/fileexplorer/FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/fileexplorer/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter
    .parameter "f"
    .parameter "fileIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/FileViewInteractionHub;",
            "Lcom/android/fileexplorer/FileIconHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p4, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 26
    iput-object p5, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/FileListAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 34
    move-object v1, p2

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    .line 40
    .local v0, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    iget-object v2, p0, Lcom/android/fileexplorer/FileListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    iget-object v4, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-static {v2, v1, v0, v3, v4}, Lcom/android/fileexplorer/FileListItem;->setupFileListItemInfo(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    .line 42
    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;

    iget-object v4, p0, Lcom/android/fileexplorer/FileListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {v3, v4, v5}, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-object v1

    .line 36
    .end local v0           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
