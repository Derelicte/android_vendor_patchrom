.class public Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;
.super Ljava/lang/Object;
.source "FileListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileItemOnClickListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/fileexplorer/FileListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "context"
    .parameter "fileViewInteractionHub"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 61
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    const v3, 0x7f090008

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    .local v1, img:Landroid/widget/ImageView;
    sget-boolean v3, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 68
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileInfo;

    .line 69
    .local v2, tag:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v3, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 70
    iget-object v3, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 71
    .local v0, actionMode:Landroid/view/ActionMode;
    if-nez v0, :cond_3

    .line 72
    iget-object v3, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    new-instance v6, Lcom/android/fileexplorer/FileListItem$ModeCallback;

    iget-object v7, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {v6, v7, v8}, Lcom/android/fileexplorer/FileListItem$ModeCallback;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v3, v6}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 74
    iget-object v3, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v3, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setActionMode(Landroid/view/ActionMode;)V

    .line 78
    :goto_1
    iget-object v3, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v3, v2, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCheckItem(Lcom/android/fileexplorer/FileInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    iget-boolean v3, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v3, :cond_4

    const v3, 0x3020131

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_3
    iget-object v3, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/fileexplorer/Util;->updateActionModeTitle(Landroid/view/ActionMode;Landroid/content/Context;I)V

    .line 87
    return-void

    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_2
    move v3, v5

    .line 69
    goto :goto_0

    .line 76
    .restart local v0       #actionMode:Landroid/view/ActionMode;
    :cond_3
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 79
    :cond_4
    const v3, 0x3020132

    goto :goto_2

    .line 82
    :cond_5
    iget-boolean v3, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-nez v3, :cond_6

    :goto_4
    iput-boolean v4, v2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_4
.end method
