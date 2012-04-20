.class Lcom/miui/notes/model/Note$NoteData;
.super Ljava/lang/Object;
.source "Note.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/model/Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteData"
.end annotation


# instance fields
.field private mCallDataId:J

.field private mCallDataValues:Landroid/content/ContentValues;

.field private mTextDataId:J

.field private mTextDataValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/miui/notes/model/Note;


# direct methods
.method public constructor <init>(Lcom/miui/notes/model/Note;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 126
    iput-object p1, p0, Lcom/miui/notes/model/Note$NoteData;->this$0:Lcom/miui/notes/model/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    .line 129
    iput-wide v1, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J

    .line 130
    iput-wide v1, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataId:J

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/miui/notes/model/Note$NoteData;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J

    return-wide v0
.end method


# virtual methods
.method isLocalModified()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pushIntoContentResolver(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "noteId"

    .prologue
    .line 167
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gtz v5, :cond_0

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong note id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    const-string v6, "note_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    iget-wide v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 177
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    const-string v6, "mime_type"

    const-string v7, "vnd.android.cursor.item/text_note"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 181
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/miui/notes/model/Note$NoteData;->setTextDataId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    const-string v6, "note_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    iget-wide v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 199
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    const-string v6, "mime_type"

    const-string v7, "vnd.android.cursor.item/call_note"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 203
    .restart local v4       #uri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/miui/notes/model/Note$NoteData;->setCallDataId(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 218
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 220
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notes"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 222
    .local v3, results:[Landroid/content/ContentProviderResult;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, v3, v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v5, :cond_6

    :cond_3
    const/4 v5, 0x0

    .line 232
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :goto_2
    return-object v5

    .line 182
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "NoteData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert new text data fail with noteId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 185
    const/4 v5, 0x0

    goto :goto_2

    .line 188
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    sget-object v5, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 190
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 204
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 205
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "NoteData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert new call data fail with noteId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 207
    const/4 v5, 0x0

    goto :goto_2

    .line 210
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5
    sget-object v5, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 212
    iget-object v5, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 222
    .restart local v3       #results:[Landroid/content/ContentProviderResult;
    :cond_6
    :try_start_3
    sget-object v5, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    goto :goto_2

    .line 224
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catch_2
    move-exception v1

    .line 225
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "NoteData"

    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 227
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 228
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v5, "NoteData"

    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 232
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2
.end method

.method setCallData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->this$0:Lcom/miui/notes/model/Note;

    #getter for: Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/miui/notes/model/Note;->access$100(Lcom/miui/notes/model/Note;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "local_modified"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->this$0:Lcom/miui/notes/model/Note;

    #getter for: Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/miui/notes/model/Note;->access$100(Lcom/miui/notes/model/Note;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "modified_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    return-void
.end method

.method setCallDataId(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call data id should larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-wide p1, p0, Lcom/miui/notes/model/Note$NoteData;->mCallDataId:J

    .line 149
    return-void
.end method

.method setTextData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->this$0:Lcom/miui/notes/model/Note;

    #getter for: Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/miui/notes/model/Note;->access$100(Lcom/miui/notes/model/Note;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "local_modified"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v0, p0, Lcom/miui/notes/model/Note$NoteData;->this$0:Lcom/miui/notes/model/Note;

    #getter for: Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/miui/notes/model/Note;->access$100(Lcom/miui/notes/model/Note;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "modified_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    return-void
.end method

.method setTextDataId(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text data id should larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-wide p1, p0, Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J

    .line 142
    return-void
.end method
