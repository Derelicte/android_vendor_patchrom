.class public Lcom/miui/milk/source/calls2/CallsManager;
.super Ljava/lang/Object;
.source "CallsManager.java"


# instance fields
.field private COLUMN_DATE:Ljava/lang/String;

.field private COLUMN_ID:Ljava/lang/String;

.field private COLUMN_NUMBER:Ljava/lang/String;

.field private CONTENT_URI:Landroid/net/Uri;

.field private mDate2Number:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    .line 33
    const-string v0, "date"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    .line 34
    const-string v0, "number"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mDate2Number:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method private prepareContentProviderOperation(Lcom/miui/milk/model/CalllogProtos2$Call;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 3
    .parameter "call"
    .parameter "builder"

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "number"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 181
    :cond_0
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    const-string v0, "duration"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    const-string v0, "new"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNew()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    return-void
.end method

.method private setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "call"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 155
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 163
    :cond_2
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDate(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 166
    :cond_3
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDuration(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 169
    :cond_4
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setType(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 172
    :cond_5
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNew(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 112
    .local v1, res:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "call_log"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 120
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallsManager"

    const-string v3, "Cannot apply contact batch "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    throw v0

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "CallsManager"

    const-string v3, "Cannot apply contact batch "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    throw v0
.end method

.method public exists(JLjava/lang/String;)Z
    .locals 4
    .parameter "date"
    .parameter "number"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/miui/milk/source/calls2/CallsManager;->mDate2Number:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, existNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 190
    .local v0, exist:Z
    :goto_0
    return v0

    .line 189
    .end local v0           #exist:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 194
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 197
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v7, 0x0

    .line 206
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    return v7

    .line 203
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 10
    .parameter "id"

    .prologue
    .line 44
    const-string v0, "CallsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v6

    .line 48
    .local v6, call:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    const/4 v7, 0x0

    .line 50
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

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

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 55
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_0

    .line 57
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/calls2/CallsManager;->setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 61
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public load(JLjava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 10
    .parameter "date"
    .parameter "number"

    .prologue
    .line 69
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v6

    .line 71
    .local v6, call:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    const/4 v7, 0x0

    .line 73
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 80
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_0

    .line 82
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/calls2/CallsManager;->setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 86
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public prepareAdd(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/util/ArrayList;)Z
    .locals 9
    .parameter "call"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/CalllogProtos2$Call;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x1

    .line 93
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v2

    .line 94
    .local v2, date:J
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, number:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/milk/source/calls2/CallsManager;->exists(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    const/4 v6, 0x0

    .line 106
    :goto_0
    return v6

    .line 98
    :cond_0
    iget-object v7, p0, Lcom/miui/milk/source/calls2/CallsManager;->mDate2Number:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v7, Lmiui/provider/ExtraContacts$Calls;->CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 101
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v7, "allow_voicemails"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 103
    .local v1, callLogBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v1}, Lcom/miui/milk/source/calls2/CallsManager;->prepareContentProviderOperation(Lcom/miui/milk/model/CalllogProtos2$Call;Landroid/content/ContentProviderOperation$Builder;)V

    .line 104
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 105
    .local v5, rawContactOps:Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public prepareAllCallIds()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 212
    .local v6, callIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 214
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 220
    if-nez v7, :cond_1

    .line 234
    if-eqz v7, :cond_0

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_0
    :goto_0
    return-object v6

    .line 223
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 225
    .local v9, idColumnIndex:I
    const/4 v8, 0x0

    .line 227
    .local v8, cursorId:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 234
    .end local v8           #cursorId:Ljava/lang/String;
    .end local v9           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 234
    .restart local v8       #cursorId:Ljava/lang/String;
    .restart local v9       #idColumnIndex:I
    :cond_3
    if-eqz v7, :cond_0

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public prepareCall()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mDate2Number:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 126
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 138
    .local v9, dateColumnIndex:I
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 142
    .local v11, numberColumnIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 145
    .local v7, date:J
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mDate2Number:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 149
    .end local v7           #date:J
    .end local v10           #number:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
