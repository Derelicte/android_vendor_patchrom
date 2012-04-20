.class public abstract Lcom/miui/milk/tracker/DateGuidTracker;
.super Ljava/lang/Object;
.source "DateGuidTracker.java"


# instance fields
.field protected COLUMN_DATE:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field private final TAG:Ljava/lang/String;

.field protected TYPE_ID:I

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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "DateGuidTracker"

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    iput-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_ID:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_DATE:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->TYPE_ID:I

    .line 38
    invoke-virtual {p0}, Lcom/miui/milk/tracker/DateGuidTracker;->init()V

    .line 39
    iput-object p1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mResolver:Landroid/content/ContentResolver;

    .line 41
    iput-object p2, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    .line 42
    return-void
.end method


# virtual methods
.method public clearPrepared()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mPrepared:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 132
    return-void
.end method

.method public closeStore()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 184
    return-void
.end method

.method protected computeFingerprint(J)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 135
    const-string v6, "1"

    .line 137
    .local v6, fp:Ljava/lang/String;
    const/4 v7, 0x0

    .line 139
    .local v7, typeCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_DATE:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 150
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    return-object v6

    .line 150
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getDeletedItemKeys()Ljava/util/ArrayList;
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
    .line 120
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "luid"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->getGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 112
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdatedItemKeys()Ljava/util/ArrayList;
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
    .line 116
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract init()V
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mPrepared:Z

    return v0
.end method

.method public openStore()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 180
    return-void
.end method

.method public prepareChangeItems()V
    .locals 15

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mPrepared:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 52
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->getAllKeys()Ljava/util/HashSet;

    move-result-object v13

    .line 54
    .local v13, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 57
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_DATE:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/milk/tracker/DateGuidTracker;->TYPE_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_0
    if-eqz v6, :cond_1

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 109
    :goto_0
    return-void

    .line 67
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 68
    .local v11, idColumnIndex:I
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->COLUMN_DATE:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 70
    .local v9, dateColumnIndex:I
    const/4 v14, 0x0

    .line 71
    .local v14, storeDate:Ljava/lang/String;
    const/4 v8, 0x0

    .line 72
    .local v8, cursorId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 74
    .local v7, cursorDate:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 77
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, v8}, Lcom/miui/milk/storage/BaseTrackerStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 85
    if-eqz v14, :cond_6

    .line 86
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    const-string v0, "DateGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found an updated item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v7           #cursorDate:Ljava/lang/String;
    .end local v8           #cursorId:Ljava/lang/String;
    .end local v9           #dateColumnIndex:I
    .end local v11           #idColumnIndex:I
    .end local v14           #storeDate:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v1}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    throw v0

    .line 91
    .restart local v7       #cursorDate:Ljava/lang/String;
    .restart local v8       #cursorId:Ljava/lang/String;
    .restart local v9       #dateColumnIndex:I
    .restart local v11       #idColumnIndex:I
    .restart local v14       #storeDate:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v0, "DateGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a new item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 97
    :cond_7
    if-eqz v6, :cond_8

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_8
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 103
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 104
    .local v12, key:Ljava/lang/String;
    const-string v0, "DateGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a deleted item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    .end local v12           #key:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->mPrepared:Z

    goto/16 :goto_0
.end method

.method public removeDeletedItemKeys()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

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

    .line 195
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2, v1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 198
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public resetStore()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 188
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->reset()V

    .line 189
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 190
    return-void
.end method

.method public setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "readIn"
    .parameter "guid"

    .prologue
    .line 157
    if-eqz p2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/DateGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/DateGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/DateGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/DateGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/milk/tracker/DateGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
