.class public Lcom/miui/notes/ui/NoteItemData;
.super Ljava/lang/Object;
.source "NoteItemData.java"


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlertDate:J

.field private mBgColorId:I

.field private mCreatedDate:J

.field private mHasAttachment:Z

.field private mId:J

.field private mIsFirstItem:Z

.field private mIsLastItem:Z

.field private mIsMultiNotesFollowingFolder:Z

.field private mIsOneNoteFollowingFolder:Z

.field private mIsOnlyOneItem:Z

.field private mModifiedDate:J

.field private mName:Ljava/lang/String;

.field private mNotesCount:I

.field private mParentId:J

.field private mPhoneNumber:Ljava/lang/String;

.field private mSnippet:Ljava/lang/String;

.field private mType:I

.field private mWidgetId:I

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alert_date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bg_color_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "modified_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parent_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "widget_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "widget_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/ui/NoteItemData;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/notes/ui/NoteItemData;->mId:J

    .line 64
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/notes/ui/NoteItemData;->mAlertDate:J

    .line 65
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/notes/ui/NoteItemData;->mBgColorId:I

    .line 66
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/notes/ui/NoteItemData;->mCreatedDate:J

    .line 67
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mHasAttachment:Z

    .line 68
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mModifiedDate:J

    .line 69
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteItemData;->mNotesCount:I

    .line 70
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mParentId:J

    .line 71
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mSnippet:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mSnippet:Ljava/lang/String;

    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mSnippet:Ljava/lang/String;

    .line 74
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteItemData;->mType:I

    .line 75
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteItemData;->mWidgetId:I

    .line 76
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/notes/ui/NoteItemData;->mWidgetType:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mPhoneNumber:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mParentId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/notes/ui/NoteItemData;->mId:J

    invoke-static {v0, v1, v2}, Lcom/miui/notes/tool/DataUtils;->getCallNumberByNoteId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mPhoneNumber:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/notes/data/Contact;->getContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    .line 92
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/notes/ui/NoteItemData;->checkPostion(Landroid/database/Cursor;)V

    .line 93
    return-void

    :cond_2
    move v0, v1

    .line 67
    goto/16 :goto_0
.end method

.method private checkPostion(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/notes/ui/NoteItemData;->mIsLastItem:Z

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/notes/ui/NoteItemData;->mIsFirstItem:Z

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/notes/ui/NoteItemData;->mIsOnlyOneItem:Z

    .line 99
    iput-boolean v3, p0, Lcom/miui/notes/ui/NoteItemData;->mIsMultiNotesFollowingFolder:Z

    .line 100
    iput-boolean v3, p0, Lcom/miui/notes/ui/NoteItemData;->mIsOneNoteFollowingFolder:Z

    .line 102
    iget v1, p0, Lcom/miui/notes/ui/NoteItemData;->mType:I

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/notes/ui/NoteItemData;->mIsFirstItem:Z

    if-nez v1, :cond_6

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 104
    .local v0, position:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    if-le v1, v3, :cond_5

    .line 108
    iput-boolean v2, p0, Lcom/miui/notes/ui/NoteItemData;->mIsMultiNotesFollowingFolder:Z

    .line 113
    :cond_1
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cursor move to previous but can\'t move back"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #position:I
    :cond_2
    move v1, v3

    .line 96
    goto :goto_0

    :cond_3
    move v1, v3

    .line 97
    goto :goto_1

    :cond_4
    move v1, v3

    .line 98
    goto :goto_2

    .line 110
    .restart local v0       #position:I
    :cond_5
    iput-boolean v2, p0, Lcom/miui/notes/ui/NoteItemData;->mIsOneNoteFollowingFolder:Z

    goto :goto_3

    .line 118
    .end local v0           #position:I
    :cond_6
    return-void
.end method

.method public static getNoteType(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 205
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBgColorId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/miui/notes/ui/NoteItemData;->mBgColorId:I

    return v0
.end method

.method public getCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mId:J

    return-wide v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mModifiedDate:J

    return-wide v0
.end method

.method public getNotesCount()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/miui/notes/ui/NoteItemData;->mNotesCount:I

    return v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mParentId:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/notes/ui/NoteItemData;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/miui/notes/ui/NoteItemData;->mType:I

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/notes/ui/NoteItemData;->mWidgetId:I

    return v0
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/miui/notes/ui/NoteItemData;->mWidgetType:I

    return v0
.end method

.method public hasAlert()Z
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/miui/notes/ui/NoteItemData;->mAlertDate:J

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

.method public isFirst()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mIsFirstItem:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mIsLastItem:Z

    return v0
.end method

.method public isMultiFollowingFolder()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mIsMultiNotesFollowingFolder:Z

    return v0
.end method

.method public isOneFollowingFolder()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mIsOneNoteFollowingFolder:Z

    return v0
.end method

.method public isSingle()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/notes/ui/NoteItemData;->mIsOnlyOneItem:Z

    return v0
.end method
