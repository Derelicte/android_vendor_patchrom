.class public abstract Lcom/miui/gallery/data/MediaSet;
.super Lcom/miui/gallery/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MediaSet$MultiSetSyncFuture;,
        Lcom/miui/gallery/data/MediaSet$ItemConsumer;,
        Lcom/miui/gallery/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/gallery/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/miui/gallery/data/MediaSet$1;

    invoke-direct {v0}, Lcom/miui/gallery/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/MediaSet;->FUTURE_STUB:Lcom/miui/gallery/util/Future;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;J)V
    .locals 1
    .parameter "path"
    .parameter "version"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaObject;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 61
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method protected enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 219
    .local v6, total:I
    const/4 v5, 0x0

    .line 220
    .local v5, start:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 221
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    .local v0, count:I
    invoke-virtual {p0, v5, v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 224
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .line 225
    .local v2, item:Lcom/miui/gallery/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/miui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/miui/gallery/data/MediaItem;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v2           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_0
    add-int/2addr v5, v0

    .line 228
    goto :goto_0

    .line 229
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    .end local v4           #n:I
    :cond_1
    return v6
.end method

.method public enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I

    .line 204
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 5
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 239
    .local v1, m:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/miui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return v2
.end method

.method public enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I

    .line 208
    return-void
.end method

.method public getAllAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 195
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 196
    return-object v0
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string v0, "should not reach here"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const-string v0, ""

    return-object v0
.end method

.method protected getIndexOf(Lcom/miui/gallery/data/Path;Ljava/util/ArrayList;)I
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    iget-object v2, v2, Lcom/miui/gallery/data/MediaItem;->mPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    .end local v0           #i:I
    :goto_1
    return v0

    .line 132
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfItem(Lcom/miui/gallery/data/Path;I)I
    .locals 7
    .parameter "path"
    .parameter "hint"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    .line 112
    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 114
    .local v2, start:I
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/data/MediaSet;->getIndexOf(Lcom/miui/gallery/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 117
    .local v0, index:I
    if-eq v0, v5, :cond_0

    add-int v3, v2, v0

    .line 125
    :goto_0
    return v3

    .line 120
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    .line 121
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 123
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/data/MediaSet;->getIndexOf(Lcom/miui/gallery/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 124
    if-eq v0, v5, :cond_2

    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 120
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    move v3, v5

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 127
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 102
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return v2
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 178
    iget-object v2, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/ContentListener;

    .line 179
    .local v1, listener:Lcom/miui/gallery/data/ContentListener;
    invoke-interface {v1}, Lcom/miui/gallery/data/ContentListener;->onContentDirty()V

    goto :goto_0

    .line 181
    .end local v1           #listener:Lcom/miui/gallery/data/ContentListener;
    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/miui/gallery/data/MediaSet$SyncListener;->onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V

    .line 258
    sget-object v0, Lcom/miui/gallery/data/MediaSet;->FUTURE_STUB:Lcom/miui/gallery/util/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;
    .locals 1
    .parameter "sets"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/gallery/data/MediaSet;",
            "Lcom/miui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/miui/gallery/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/miui/gallery/data/MediaSet;[Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/MediaSet$SyncListener;)V

    return-object v0
.end method

.method public setForceReload()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
