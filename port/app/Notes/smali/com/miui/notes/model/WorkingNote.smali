.class public Lcom/miui/notes/model/WorkingNote;
.super Ljava/lang/Object;
.source "WorkingNote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;
    }
.end annotation


# static fields
.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field public static final NOTE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlertDate:J

.field private mBgColorId:I

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFolderId:J

.field private mIsDeleted:Z

.field private mMode:I

.field private mModifiedDate:J

.field private mNote:Lcom/miui/notes/model/Note;

.field private mNoteId:J

.field private mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

.field private mWidgetId:I

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "content"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/model/WorkingNote;->DATA_PROJECTION:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "parent_id"

    aput-object v1, v0, v3

    const-string v1, "alert_date"

    aput-object v1, v0, v4

    const-string v1, "bg_color_id"

    aput-object v1, v0, v5

    const-string v1, "widget_id"

    aput-object v1, v0, v6

    const-string v1, "widget_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "modified_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/model/WorkingNote;->NOTE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "folderId"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    .line 90
    iput-wide v3, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mModifiedDate:J

    .line 92
    iput-wide p2, p0, Lcom/miui/notes/model/WorkingNote;->mFolderId:J

    .line 93
    new-instance v0, Lcom/miui/notes/model/Note;

    invoke-direct {v0}, Lcom/miui/notes/model/Note;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    .line 94
    iput-wide v3, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    .line 95
    iput-boolean v2, p0, Lcom/miui/notes/model/WorkingNote;->mIsDeleted:Z

    .line 96
    iput v2, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JJ)V
    .locals 1
    .parameter "context"
    .parameter "noteId"
    .parameter "folderId"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    .line 103
    iput-wide p2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    .line 104
    iput-wide p4, p0, Lcom/miui/notes/model/WorkingNote;->mFolderId:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/model/WorkingNote;->mIsDeleted:Z

    .line 106
    new-instance v0, Lcom/miui/notes/model/Note;

    invoke-direct {v0}, Lcom/miui/notes/model/Note;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    .line 107
    invoke-direct {p0}, Lcom/miui/notes/model/WorkingNote;->loadNote()V

    .line 108
    return-void
.end method

.method public static createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;
    .locals 1
    .parameter "context"
    .parameter "folderId"
    .parameter "widgetId"
    .parameter "widgetType"
    .parameter "defaultBgColorId"

    .prologue
    .line 162
    new-instance v0, Lcom/miui/notes/model/WorkingNote;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/notes/model/WorkingNote;-><init>(Landroid/content/Context;J)V

    .line 163
    .local v0, note:Lcom/miui/notes/model/WorkingNote;
    invoke-virtual {v0, p5}, Lcom/miui/notes/model/WorkingNote;->setBgColorId(I)V

    .line 164
    invoke-virtual {v0, p3}, Lcom/miui/notes/model/WorkingNote;->setWidgetId(I)V

    .line 165
    invoke-virtual {v0, p4}, Lcom/miui/notes/model/WorkingNote;->setWidgetType(I)V

    .line 166
    return-object v0
.end method

.method private isWorthSaving()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/miui/notes/model/WorkingNote;->mIsDeleted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    invoke-virtual {v0}, Lcom/miui/notes/model/Note;->isLocalModified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    :cond_1
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;J)Lcom/miui/notes/model/WorkingNote;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 170
    new-instance v0, Lcom/miui/notes/model/WorkingNote;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;-><init>(Landroid/content/Context;JJ)V

    return-object v0
.end method

.method private loadNote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/notes/model/WorkingNote;->NOTE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mFolderId:J

    .line 118
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    .line 119
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    .line 120
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    .line 121
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    .line 122
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mModifiedDate:J

    .line 124
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-direct {p0}, Lcom/miui/notes/model/WorkingNote;->loadNoteData()V

    .line 130
    return-void

    .line 126
    :cond_1
    const-string v0, "WorkingNote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No note with id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find note with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadNoteData()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 133
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/model/WorkingNote;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "note_id=?"

    new-array v4, v11, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/text_note"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    .line 144
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    .line 145
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setTextDataId(J)V

    .line 151
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    .end local v7           #type:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    return-void

    .line 146
    .restart local v7       #type:Ljava/lang/String;
    :cond_2
    const-string v0, "vnd.android.cursor.item/call_note"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setCallDataId(J)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "WorkingNote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong note type with type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v7           #type:Ljava/lang/String;
    :cond_4
    const-string v0, "WorkingNote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data with id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find note\'s data with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public convertToCallNote(Ljava/lang/String;J)V
    .locals 3
    .parameter "phoneNumber"
    .parameter "callDate"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "data1"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setCallData(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p1}, Lcom/miui/notes/model/Note;->setCallData(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "parent_id"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setNoteValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public existInDatabase()Z
    .locals 4

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlertDate()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    return-wide v0
.end method

.method public getBgColorId()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    return v0
.end method

.method public getBgColorResId()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->getNoteBgResource(I)I

    move-result v0

    return v0
.end method

.method public getCheckListMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mFolderId:J

    return-wide v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mModifiedDate:J

    return-wide v0
.end method

.method public getNoteId()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    return-wide v0
.end method

.method public getTextDataId()J
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    invoke-virtual {v0}, Lcom/miui/notes/model/Note;->getTextDataId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitleBgResId()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->getNoteTitleBgResource(I)I

    move-result v0

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    return v0
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    return v0
.end method

.method public hasClockAlert()Z
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDeleted(Z)V
    .locals 2
    .parameter "mark"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/miui/notes/model/WorkingNote;->mIsDeleted:Z

    .line 227
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    invoke-interface {v0}, Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;->onWidgetChanged()V

    .line 231
    :cond_0
    return-void
.end method

.method public declared-synchronized saveNote()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/notes/model/WorkingNote;->isWorthSaving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mFolderId:J

    invoke-static {v1, v2, v3}, Lcom/miui/notes/model/Note;->getNewNoteId(Landroid/content/Context;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 177
    const-string v1, "WorkingNote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create new note fail with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 182
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    iget-object v1, p0, Lcom/miui/notes/model/WorkingNote;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mNoteId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/notes/model/Note;->syncNote(Landroid/content/Context;J)Z

    .line 187
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    invoke-interface {v0}, Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;->onWidgetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlertDate(JZ)V
    .locals 4
    .parameter "date"
    .parameter "set"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 217
    iput-wide p1, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    .line 218
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "alert_date"

    iget-wide v2, p0, Lcom/miui/notes/model/WorkingNote;->mAlertDate:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setNoteValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;->onClockAlertChanged(JZ)V

    .line 223
    :cond_1
    return-void
.end method

.method public setBgColorId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 234
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    if-eq p1, v0, :cond_1

    .line 235
    iput p1, p0, Lcom/miui/notes/model/WorkingNote;->mBgColorId:I

    .line 236
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    invoke-interface {v0}, Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;->onBackgroundColorChanged()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "bg_color_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setNoteValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void
.end method

.method public setCheckListMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 244
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    if-eq v0, p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    iget v1, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    invoke-interface {v0, v1, p1}, Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;->onCheckListModeChanged(II)V

    .line 248
    :cond_0
    iput p1, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    .line 249
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "data1"

    iget v2, p0, Lcom/miui/notes/model/WorkingNote;->mMode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setTextData(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    return-void
.end method

.method public setOnSettingStatusChangedListener(Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/notes/model/WorkingNote;->mNoteSettingStatusListener:Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;

    .line 213
    return-void
.end method

.method public setWidgetId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 261
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    if-eq p1, v0, :cond_0

    .line 262
    iput p1, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    .line 263
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "widget_id"

    iget v2, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setNoteValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setWidgetType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 254
    iget v0, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    if-eq p1, v0, :cond_0

    .line 255
    iput p1, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    .line 256
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "widget_type"

    iget v2, p0, Lcom/miui/notes/model/WorkingNote;->mWidgetType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setNoteValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setWorkingText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iput-object p1, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/miui/notes/model/WorkingNote;->mNote:Lcom/miui/notes/model/Note;

    const-string v1, "content"

    iget-object v2, p0, Lcom/miui/notes/model/WorkingNote;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/model/Note;->setTextData(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method
