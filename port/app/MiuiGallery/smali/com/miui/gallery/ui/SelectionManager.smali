.class public Lcom/miui/gallery/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SelectionManager$SelectionListener;
    }
.end annotation


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/miui/gallery/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

.field private mPressedPath:Lcom/miui/gallery/data/Path;

.field private mSource:Ljava/lang/Object;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryContext;)V
    .locals 1
    .parameter "galleryContext"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mAutoLeave:Z

    .line 55
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryContext;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    .line 58
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet;)V
    .locals 10
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;",
            "Lcom/miui/gallery/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 154
    .local v7, subCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 155
    invoke-virtual {p1, v2}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/miui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 158
    .local v8, total:I
    const/16 v0, 0x32

    .line 159
    .local v0, batch:I
    const/4 v4, 0x0

    .line 161
    .local v4, index:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 162
    add-int v9, v4, v0

    if-ge v9, v8, :cond_1

    move v1, v0

    .line 165
    .local v1, count:I
    :goto_2
    invoke-virtual {p1, v4, v1}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 166
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/data/MediaItem;

    .line 167
    .local v5, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 162
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_1
    sub-int v1, v8, v4

    goto :goto_2

    .line 169
    .restart local v1       #count:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_2
    add-int/2addr v4, v0

    .line 170
    goto :goto_1

    .line 171
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getPressedPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mPressedPath:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 15
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v9, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    instance-of v13, v13, Lcom/miui/gallery/data/AlbumCacheBase;

    if-eqz v13, :cond_4

    .line 176
    iget-object v11, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    check-cast v11, Lcom/miui/gallery/data/AlbumCacheBase;

    .line 177
    .local v11, source:Lcom/miui/gallery/data/AlbumCacheBase;
    iget-boolean v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v13, :cond_2

    .line 178
    invoke-virtual {v11}, Lcom/miui/gallery/data/AlbumCacheBase;->cloneResultAlbums()Ljava/util/ArrayList;

    move-result-object v8

    .line 179
    .local v8, resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 180
    .local v7, max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_8

    .line 181
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v13}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v10

    .line 182
    .local v10, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v10}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 183
    .local v3, id:Lcom/miui/gallery/data/Path;
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v13, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-static {v9, v10}, Lcom/miui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet;)V

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v1           #i:I
    .end local v3           #id:Lcom/miui/gallery/data/Path;
    .end local v7           #max:I
    .end local v8           #resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    .end local v10           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/Path;

    .line 193
    .restart local v3       #id:Lcom/miui/gallery/data/Path;
    if-eqz p1, :cond_3

    .line 194
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-virtual {v13, v3}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/miui/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 200
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/miui/gallery/data/Path;
    .end local v11           #source:Lcom/miui/gallery/data/AlbumCacheBase;
    :cond_4
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    instance-of v13, v13, Lcom/miui/gallery/data/MediaSet;

    if-eqz v13, :cond_8

    .line 201
    iget-boolean v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v13, :cond_7

    .line 202
    iget-object v11, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    check-cast v11, Lcom/miui/gallery/data/MediaSet;

    .line 203
    .local v11, source:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v11}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v12

    .line 204
    .local v12, total:I
    const/4 v4, 0x0

    .line 205
    .local v4, index:I
    :goto_3
    if-ge v4, v12, :cond_8

    .line 206
    sub-int v13, v12, v4

    const/16 v14, 0x1f4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    .local v0, count:I
    invoke-virtual {v11, v4, v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 208
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/data/MediaItem;

    .line 209
    .local v5, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 210
    .restart local v3       #id:Lcom/miui/gallery/data/Path;
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v13, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 212
    .end local v3           #id:Lcom/miui/gallery/data/Path;
    .end local v5           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_6
    add-int/2addr v4, v0

    .line 213
    goto :goto_3

    .line 215
    .end local v0           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    .end local v11           #source:Lcom/miui/gallery/data/MediaSet;
    .end local v12           #total:I
    :cond_7
    iget-object v13, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/Path;

    .line 216
    .restart local v3       #id:Lcom/miui/gallery/data/Path;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 220
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/miui/gallery/data/Path;
    :cond_8
    return-object v9
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 113
    .local v0, count:I
    iget-boolean v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_1

    .line 114
    iget v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    if-gez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/miui/gallery/data/AlbumCacheBase;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v1}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    .line 121
    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    sub-int v0, v1, v0

    .line 123
    :cond_1
    return v0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/miui/gallery/data/MediaSet;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    goto :goto_0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/miui/gallery/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isPressedPath(Lcom/miui/gallery/data/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mPressedPath:Lcom/miui/gallery/data/Path;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mInSelectionMode:Z

    .line 102
    iput-boolean v1, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mInverseSelection:Z

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SelectionManager;->mAutoLeave:Z

    .line 64
    return-void
.end method

.method public setPressedPath(Lcom/miui/gallery/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/ui/SelectionManager;->mPressedPath:Lcom/miui/gallery/data/Path;

    .line 142
    return-void
.end method

.method public setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    .line 68
    return-void
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/ui/SelectionManager;->mSource:Ljava/lang/Object;

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mTotal:I

    .line 226
    return-void
.end method

.method public toggle(Lcom/miui/gallery/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mListener:Lcom/miui/gallery/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SelectionManager;->isItemSelected(Lcom/miui/gallery/data/Path;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/gallery/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/miui/gallery/data/Path;Z)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 138
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
