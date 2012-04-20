.class public abstract Lcom/miui/milk/tracker/GuidTracker;
.super Ljava/lang/Object;
.source "GuidTracker.java"


# instance fields
.field protected COLUMN_ID:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field private final TAG:Ljava/lang/String;

.field private deletedItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mPrepared:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private newItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

.field private updatedItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V
    .locals 2
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "GuidTracker"

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/miui/milk/tracker/GuidTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    iput-object v1, p0, Lcom/miui/milk/tracker/GuidTracker;->COLUMN_ID:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/miui/milk/tracker/GuidTracker;->init()V

    .line 36
    iput-object p1, p0, Lcom/miui/milk/tracker/GuidTracker;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->mResolver:Landroid/content/ContentResolver;

    .line 38
    iput-object p2, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    .line 39
    return-void
.end method


# virtual methods
.method public clearPrepared()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/GuidTracker;->mPrepared:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public closeStore()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 144
    return-void
.end method

.method public getNewItemKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->newItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract init()V
.end method

.method public openStore()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 140
    return-void
.end method

.method public prepareChangeItems()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/miui/milk/tracker/GuidTracker;->mPrepared:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 50
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->getAllKeys()Ljava/util/HashSet;

    move-result-object v11

    .line 51
    .local v11, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 53
    const/4 v6, 0x0

    .line 56
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/GuidTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/GuidTracker;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/miui/milk/tracker/GuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ASC"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 62
    if-nez v6, :cond_1

    .line 80
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, idColumnIndex:I
    const/4 v7, 0x0

    .line 68
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 80
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v9           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 74
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v9       #idColumnIndex:I
    :cond_3
    :try_start_2
    const-string v0, "GuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a new item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 80
    :cond_4
    if-eqz v6, :cond_5

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_5
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 86
    .local v10, key:Ljava/lang/String;
    const-string v0, "GuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a deleted item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 90
    .end local v10           #key:Ljava/lang/String;
    :cond_6
    iput-boolean v13, p0, Lcom/miui/milk/tracker/GuidTracker;->mPrepared:Z

    goto :goto_0
.end method

.method public removeDeletedItemKeys()V
    .locals 3

    .prologue
    .line 153
    iget-object v2, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2, v1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public resetStore()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 148
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->reset()V

    .line 149
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 150
    return-void
.end method

.method public setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "readIn"
    .parameter "guid"

    .prologue
    const/4 v1, 0x0

    .line 117
    if-eqz p2, :cond_2

    .line 118
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/milk/tracker/GuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
