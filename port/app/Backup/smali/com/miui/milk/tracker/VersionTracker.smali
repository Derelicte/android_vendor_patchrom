.class public abstract Lcom/miui/milk/tracker/VersionTracker;
.super Ljava/lang/Object;
.source "VersionTracker.java"


# instance fields
.field protected COLUMN_DELETED:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_SOURCE_ID:Ljava/lang/String;

.field protected COLUMN_VERSION:Ljava/lang/String;

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

.field protected versionStore:Lcom/miui/milk/storage/BaseTrackerStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V
    .locals 2
    .parameter "context"
    .parameter "versionStore"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "VersionTracker"

    iput-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    iput-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_ID:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_SOURCE_ID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_DELETED:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_VERSION:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/miui/milk/tracker/VersionTracker;->init()V

    .line 40
    iput-object p1, p0, Lcom/miui/milk/tracker/VersionTracker;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 42
    iput-object p2, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    .line 43
    return-void
.end method

.method private shouldLuidDelete(Ljava/lang/String;)Z
    .locals 8
    .parameter "srcluid"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/miui/milk/tracker/VersionTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, guid:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/miui/milk/tracker/VersionTracker;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, luids:[Ljava/lang/String;
    const/4 v6, 0x1

    .line 231
    .local v6, shouldDel:Z
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 232
    .local v4, luid:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    const/4 v6, 0x0

    .line 231
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v4           #luid:Ljava/lang/String;
    :cond_1
    return v6
.end method


# virtual methods
.method public clearPrepared()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/VersionTracker;->mPrepared:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method public closeStore()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 206
    return-void
.end method

.method protected computeFingerprint(J)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 148
    const-string v6, "1"

    .line 150
    .local v6, fp:Ljava/lang/String;
    const/4 v7, 0x0

    .line 152
    .local v7, versionCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/VersionTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_ID:Ljava/lang/String;

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

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 163
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_1
    return-object v6

    .line 163
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
    .line 133
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "luid"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->getGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "guid"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;

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
    .line 125
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

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
    .line 129
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->updatedItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract init()V
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/miui/milk/tracker/VersionTracker;->mPrepared:Z

    return v0
.end method

.method public openStore()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 202
    return-void
.end method

.method public prepareChangeItems()V
    .locals 21

    .prologue
    .line 46
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/tracker/VersionTracker;->mPrepared:Z

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2}, Lcom/miui/milk/storage/BaseTrackerStore;->getKeyVersionMap()Ljava/util/HashMap;

    move-result-object v16

    .line 54
    .local v16, keyVersionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 56
    const/4 v8, 0x0

    .line 59
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/tracker/VersionTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_DELETED:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_ID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " ASC"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 104
    :cond_0
    if-eqz v8, :cond_1

    .line 105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 69
    .local v14, idColumnIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_VERSION:Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 70
    .local v19, versionColumnIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->COLUMN_DELETED:Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 72
    .local v13, deletedColumnIndex:I
    const/16 v18, 0x0

    .line 73
    .local v18, storeVersion:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 76
    .local v10, cursorId:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_8

    .line 78
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 79
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    .line 80
    .local v11, cursorVersion:J
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 82
    .local v9, cursorDeleted:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #storeVersion:Ljava/lang/Long;
    check-cast v18, Ljava/lang/Long;

    .line 84
    .restart local v18       #storeVersion:Ljava/lang/Long;
    if-eqz v18, :cond_7

    .line 85
    const/4 v2, 0x1

    if-ne v9, v2, :cond_5

    .line 86
    const-string v2, "VersionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found a deleted item with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    .end local v9           #cursorDeleted:I
    .end local v10           #cursorId:Ljava/lang/String;
    .end local v11           #cursorVersion:J
    .end local v13           #deletedColumnIndex:I
    .end local v14           #idColumnIndex:I
    .end local v18           #storeVersion:Ljava/lang/Long;
    .end local v19           #versionColumnIndex:I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 88
    .restart local v9       #cursorDeleted:I
    .restart local v10       #cursorId:Ljava/lang/String;
    .restart local v11       #cursorVersion:J
    .restart local v13       #deletedColumnIndex:I
    .restart local v14       #idColumnIndex:I
    .restart local v18       #storeVersion:Ljava/lang/Long;
    .restart local v19       #versionColumnIndex:I
    :cond_5
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-gez v2, :cond_6

    .line 89
    const-string v2, "VersionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found an updated item with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-lez v2, :cond_3

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2, v10}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    const-string v2, "VersionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found a renew item with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_7
    const/4 v2, 0x1

    if-eq v9, v2, :cond_3

    .line 98
    const-string v2, "VersionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found a new item with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 104
    .end local v9           #cursorDeleted:I
    .end local v11           #cursorVersion:J
    :cond_8
    if-eqz v8, :cond_9

    .line 105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 112
    .local v15, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 113
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 114
    .local v17, luid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/milk/tracker/VersionTracker;->shouldLuidDelete(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 121
    .end local v17           #luid:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/tracker/VersionTracker;->mPrepared:Z

    goto/16 :goto_0
.end method

.method public removeDeletedItemKeys()V
    .locals 3

    .prologue
    .line 215
    iget-object v2, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

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

    .line 217
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2, v1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 220
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeItemKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    return-void
.end method

.method public resetStore()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 210
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->reset()V

    .line 211
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 212
    return-void
.end method

.method public setVersionStatus(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "readIn"
    .parameter "guid"

    .prologue
    .line 171
    if-eqz p2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/VersionTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/VersionTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/VersionTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/VersionTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/VersionTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/milk/tracker/VersionTracker;->versionStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
