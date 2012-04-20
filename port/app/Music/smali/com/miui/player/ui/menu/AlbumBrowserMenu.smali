.class public Lcom/miui/player/ui/menu/AlbumBrowserMenu;
.super Lcom/miui/player/ui/menu/BaseMenuManager;
.source "AlbumBrowserMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/menu/BaseMenuManager",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

.field private final mKeyColumn:Ljava/lang/String;

.field private mKeyIdx:I


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;ILjava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "msgId"
    .parameter "keyColumn"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseMenuManager;-><init>(Landroid/content/Context;I)V

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyIdx:I

    .line 33
    iput-object p1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    .line 34
    iput-object p3, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyColumn:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private static getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J
    .locals 2
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/util/SqlUtils;->sortElementsByCursor(Landroid/database/Cursor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createActionMenu(Landroid/view/Menu;Ljava/util/Set;)V
    .locals 5
    .parameter "menu"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x5

    const v3, 0x7f080052

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020059

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 127
    const/4 v2, 0x1

    const v3, 0x7f080053

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020055

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 130
    .local v1, sub:Landroid/view/SubMenu;
    iget-object v2, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v2, v1, v0}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V

    .line 132
    const/16 v2, 0xa

    const v3, 0x7f080035

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020056

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 135
    return-void
.end method

.method protected getContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getMenuContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .parameter "obj"

    .prologue
    .line 205
    instance-of v1, p1, Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 206
    check-cast v0, Landroid/database/Cursor;

    .line 207
    .local v0, c:Landroid/database/Cursor;
    iget v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyIdx:I

    if-gez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyIdx:I

    .line 210
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mKeyIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 213
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V
    .locals 13
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseMenuManager;->handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V

    .line 140
    invoke-static {p2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    move-result-object v11

    .line 145
    .local v11, ctx:Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    invoke-virtual {v11}, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 150
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 174
    :pswitch_1
    const-string v0, "dst_playlist"

    const-wide/16 v4, -0x1

    invoke-virtual {v12, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 175
    .local v2, playlistId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, v11, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v10

    .line 177
    .local v10, albums:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v10}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 178
    .local v1, list:[J
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 182
    .end local v1           #list:[J
    .end local v10           #albums:[J
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 156
    .end local v2           #playlistId:J
    :pswitch_2
    iget-object v0, v11, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v10

    .line 157
    .restart local v10       #albums:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v10}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 158
    .restart local v1       #list:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    .line 159
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 163
    .end local v1           #list:[J
    .end local v10           #albums:[J
    :pswitch_3
    iget-object v0, v11, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v10

    .line 164
    .restart local v10       #albums:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v10}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 165
    .restart local v1       #list:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 170
    .end local v1           #list:[J
    .end local v10           #albums:[J
    :pswitch_4
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    const/4 v4, 0x4

    invoke-static {v0, p0, v4, v12}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V

    goto :goto_0

    .line 186
    :pswitch_5
    iget-object v0, v11, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v10

    .line 187
    .restart local v10       #albums:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v10}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 188
    .restart local v1       #list:[J
    if-eqz v1, :cond_3

    array-length v7, v1

    .line 189
    .local v7, count:I
    :goto_1
    iget-object v4, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    const/4 v6, 0x0

    const/16 v9, 0xa

    move-object v5, v1

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Lcom/miui/player/ui/DeleteItems;->show(Landroid/app/Activity;[JLjava/util/ArrayList;ILcom/miui/player/ui/DialogCallback;I)V

    goto/16 :goto_0

    .line 188
    .end local v7           #count:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    move-result-object v7

    .line 82
    .local v7, ctx:Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    invoke-virtual {v7}, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v8, v7, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 88
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getLastSelected()Ljava/util/Set;

    move-result-object v9

    .line 89
    .local v9, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {v9}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 95
    :sswitch_0
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 97
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 98
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 99
    .local v2, playlistId:J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 100
    invoke-static {v8, v9}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->getAlbumIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v6

    .line 101
    .local v6, albums:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0, v6}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForAlbums(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 102
    .local v1, list:[J
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 108
    .end local v1           #list:[J
    .end local v2           #playlistId:J
    .end local v6           #albums:[J
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 112
    .end local v10           #uri:Landroid/net/Uri;
    :sswitch_1
    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 74
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->downloadAllAlbums()V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->enterBatchSelectionMode()Z

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 54
    const/16 v0, 0x12

    const v1, 0x7f080087

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 56
    const/16 v0, 0x10

    const v1, 0x7f080062

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 58
    const/4 v0, 0x1

    return v0
.end method
