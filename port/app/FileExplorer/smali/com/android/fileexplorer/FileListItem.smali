.class public Lcom/android/fileexplorer/FileListItem;
.super Ljava/lang/Object;
.source "FileListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileListItem$ModeCallback;,
        Lcom/android/fileexplorer/FileListItem$FileItemOnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static setupFileListItemInfo(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "fileInfo"
    .parameter "fileIcon"
    .parameter "fileViewInteractionHub"

    .prologue
    const/16 v4, 0x8

    .line 22
    invoke-virtual {p4}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    iget-object v3, p2, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p4, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->isFileSelected(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 26
    :cond_0
    const v3, 0x7f090008

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .local v0, checkbox:Landroid/widget/ImageView;
    invoke-virtual {p4}, Lcom/android/fileexplorer/FileViewInteractionHub;->getMode()Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    move-result-object v3

    sget-object v5, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-ne v3, v5, :cond_1

    .line 28
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    :goto_0
    const v3, 0x7f090003

    iget-object v5, p2, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 38
    const v5, 0x7f090004

    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p2, Lcom/android/fileexplorer/FileInfo;->Count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {p1, v5, v3}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 39
    const v3, 0x7f090005

    iget-wide v5, p2, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    invoke-static {p0, v5, v6}, Lcom/android/fileexplorer/Util;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 40
    const v5, 0x7f090006

    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v3, :cond_5

    const-string v3, ""

    :goto_2
    invoke-static {p1, v5, v3}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 42
    const v3, 0x7f090001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, lFileImage:Landroid/widget/ImageView;
    const/high16 v3, 0x7f09

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 44
    .local v2, lFileImageFrame:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const v3, 0x7f02003d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_3
    return-void

    .line 30
    .end local v1           #lFileImage:Landroid/widget/ImageView;
    .end local v2           #lFileImageFrame:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p4}, Lcom/android/fileexplorer/FileViewInteractionHub;->canShowCheckBox()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v3, :cond_3

    const v3, 0x3020131

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 34
    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 30
    goto :goto_4

    .line 31
    :cond_3
    const v3, 0x3020132

    goto :goto_5

    .line 38
    :cond_4
    const-string v3, ""

    goto :goto_1

    .line 40
    :cond_5
    iget-wide v6, p2, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 50
    .restart local v1       #lFileImage:Landroid/widget/ImageView;
    .restart local v2       #lFileImageFrame:Landroid/widget/ImageView;
    :cond_6
    invoke-virtual {p3, p2, v1, v2}, Lcom/android/fileexplorer/FileIconHelper;->setIcon(Lcom/android/fileexplorer/FileInfo;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_3
.end method
