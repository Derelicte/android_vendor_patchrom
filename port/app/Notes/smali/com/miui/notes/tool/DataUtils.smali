.class public Lcom/miui/notes/tool/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z
    .locals 13
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    const-string v7, "DataUtils"

    const-string v9, "the ids is null"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 55
    :goto_0
    return v7

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 29
    const-string v7, "DataUtils"

    const-string v9, "no id is in the hashset"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 35
    .local v3, id:J
    const-wide/16 v10, 0x0

    cmp-long v7, v3, v10

    if-nez v7, :cond_2

    .line 36
    const-string v7, "DataUtils"

    const-string v10, "Don\'t delete system folder root"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 39
    :cond_2
    sget-object v7, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 41
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #id:J
    :cond_3
    :try_start_0
    const-string v7, "notes"

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 45
    .local v6, results:[Landroid/content/ContentProviderResult;
    if-eqz v6, :cond_4

    array-length v7, v6

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-nez v7, :cond_5

    .line 46
    :cond_4
    const-string v7, "DataUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete notes failed, ids:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v9

    .line 47
    goto :goto_0

    :cond_5
    move v7, v8

    .line 49
    goto :goto_0

    .line 50
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "DataUtils"

    const-string v10, "%s: %s"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_2
    move v7, v9

    .line 55
    goto/16 :goto_0

    .line 52
    :catch_1
    move-exception v1

    .line 53
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v7, "DataUtils"

    const-string v10, "%s: %s"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 69
    const-string v7, "DataUtils"

    const-string v8, "the ids is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v7, 0x1

    .line 94
    :goto_0
    return v7

    .line 73
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 75
    .local v3, id:J
    sget-object v7, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 77
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "parent_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 78
    const-string v7, "local_modified"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #id:J
    :cond_1
    :try_start_0
    const-string v7, "notes"

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 84
    .local v6, results:[Landroid/content/ContentProviderResult;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-nez v7, :cond_3

    .line 85
    :cond_2
    const-string v7, "DataUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete notes failed, ids:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const/4 v7, 0x0

    goto :goto_0

    .line 88
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 89
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "DataUtils"

    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v1

    .line 92
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v7, "DataUtils"

    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static checkVisibleFolderName(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 168
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v3, "type=1 AND parent_id<>-3 AND snippet=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 174
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    const/4 v7, 0x1

    .line 178
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return v7
.end method

.method public static existInDataDatabase(Landroid/content/ContentResolver;J)Z
    .locals 8
    .parameter "resolver"
    .parameter "dataId"

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-object v0, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 158
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    const/4 v7, 0x1

    .line 162
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    return v7
.end method

.method public static existInNoteDatabase(Landroid/content/ContentResolver;J)Z
    .locals 8
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v2, 0x0

    .line 140
    sget-object v0, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 144
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const/4 v7, 0x1

    .line 148
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    return v7
.end method

.method public static getCallNumberByNoteId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 211
    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data3"

    aput-object v0, v2, v5

    const-string v3, "note_id=? AND mime_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/call_note"

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get call number fails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFolderNoteWidget(Landroid/content/ContentResolver;J)Ljava/util/HashSet;
    .locals 10
    .parameter "resolver"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "widget_id"

    aput-object v0, v2, v5

    const-string v0, "widget_type"

    aput-object v0, v2, v4

    const-string v3, "parent_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 191
    .local v8, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    if-eqz v6, :cond_2

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v8, Ljava/util/HashSet;

    .end local v8           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 196
    .restart local v8       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    :cond_0
    :try_start_0
    new-instance v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    invoke-direct {v9}, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;-><init>()V

    .line 197
    .local v9, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    .line 198
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    .line 199
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v9           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2
    return-object v8

    .line 200
    :catch_0
    move-exception v7

    .line 201
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "DataUtils"

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "snippet"

    .prologue
    .line 269
    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 271
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 272
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 276
    .end local v0           #index:I
    :cond_0
    return-object p0
.end method

.method public static getNoteIdByPhoneNumberAndCallDate(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 9
    .parameter "resolver"
    .parameter "phoneNumber"
    .parameter "callDate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 230
    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "note_id"

    aput-object v0, v2, v5

    const-string v3, "data1=? AND mime_type=? AND PHONE_NUMBERS_EQUAL(data3,?)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/call_note"

    aput-object v0, v4, v8

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 247
    :goto_0
    return-wide v0

    .line 241
    :catch_0
    move-exception v7

    .line 242
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get call note id fails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getSnippetById(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 251
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "snippet"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 258
    const-string v7, ""

    .line 259
    .local v7, snippet:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    return-object v7

    .line 265
    .end local v7           #snippet:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note is not found with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserFolderCount(Landroid/content/ContentResolver;)I
    .locals 10
    .parameter "resolver"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 101
    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v5

    const-string v3, "type=? AND parent_id<>?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 108
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 109
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    :goto_0
    return v6

    .line 112
    :catch_0
    move-exception v8

    .line 113
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get folder count failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static visibleInNoteDatabase(Landroid/content/ContentResolver;JI)Z
    .locals 8
    .parameter "resolver"
    .parameter "noteId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type=? AND parent_id<>-3"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 130
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    const/4 v7, 0x1

    .line 134
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    return v7
.end method
