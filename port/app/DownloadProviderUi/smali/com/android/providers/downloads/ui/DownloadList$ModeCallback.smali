.class Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "downloadList"
    .parameter "listView"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 275
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 276
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return v3

    .line 290
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->shareDownloadedFiles()Z

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V
    invoke-static {v1, v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;[Ljava/lang/Long;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 280
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 281
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 336
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 309
    :pswitch_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 311
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 314
    .local v2, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mFileNameColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$1100(Lcom/android/providers/downloads/ui/DownloadList;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, fileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, mimeType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v5, v1, v3}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 328
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #id:Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 330
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x30b008a
        :pswitch_0
    .end packed-switch
.end method
