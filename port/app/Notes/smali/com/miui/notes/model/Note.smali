.class public Lcom/miui/notes/model/Note;
.super Ljava/lang/Object;
.source "Note.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/model/Note$NoteData;
    }
.end annotation


# instance fields
.field private mNoteData:Lcom/miui/notes/model/Note$NoteData;

.field private mNoteDiffValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    .line 52
    new-instance v0, Lcom/miui/notes/model/Note$NoteData;

    invoke-direct {v0, p0}, Lcom/miui/notes/model/Note$NoteData;-><init>(Lcom/miui/notes/model/Note;)V

    iput-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/model/Note;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static declared-synchronized getNewNoteId(Landroid/content/Context;J)J
    .locals 11
    .parameter "context"
    .parameter "folderId"

    .prologue
    .line 28
    const-class v8, Lcom/miui/notes/model/Note;

    monitor-enter v8

    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    .local v0, createdTime:J
    const-string v7, "created_date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    const-string v7, "modified_date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    const-string v7, "type"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v7, "local_modified"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v7, "parent_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 37
    .local v5, uri:Landroid/net/Uri;
    const-wide/16 v3, 0x0

    .line 39
    .local v3, noteId:J
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    .line 44
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v7, v3, v9

    if-nez v7, :cond_0

    .line 45
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong note id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .end local v0           #createdTime:J
    .end local v3           #noteId:J
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 40
    .restart local v0       #createdTime:J
    .restart local v3       #noteId:J
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v6       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 41
    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v7, "Note"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get note id error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 47
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_0
    monitor-exit v8

    return-wide v3
.end method


# virtual methods
.method public getTextDataId()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    #getter for: Lcom/miui/notes/model/Note$NoteData;->mTextDataId:J
    invoke-static {v0}, Lcom/miui/notes/model/Note$NoteData;->access$000(Lcom/miui/notes/model/Note$NoteData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isLocalModified()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v0}, Lcom/miui/notes/model/Note$NoteData;->isLocalModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/notes/model/Note$NoteData;->setCallData(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setCallDataId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/notes/model/Note$NoteData;->setCallDataId(J)V

    .line 75
    return-void
.end method

.method public setNoteValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    const-string v1, "local_modified"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    const-string v1, "modified_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    return-void
.end method

.method public setTextData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/notes/model/Note$NoteData;->setTextData(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setTextDataId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/notes/model/Note$NoteData;->setTextDataId(J)V

    .line 67
    return-void
.end method

.method public syncNote(Landroid/content/Context;J)Z
    .locals 5
    .parameter "context"
    .parameter "noteId"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 86
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong note id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/model/Note;->isLocalModified()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 102
    const-string v1, "Note"

    const-string v2, "Update note error, should not happen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/miui/notes/model/Note;->mNoteDiffValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 107
    iget-object v1, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v1}, Lcom/miui/notes/model/Note$NoteData;->isLocalModified()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/notes/model/Note;->mNoteData:Lcom/miui/notes/model/Note$NoteData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/notes/model/Note$NoteData;->pushIntoContentResolver(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method
