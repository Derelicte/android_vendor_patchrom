.class public abstract Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;
.super Ljava/lang/Object;
.source "CursorBackedSuggestionCursor.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursor;


# instance fields
.field private mClosed:Z

.field protected final mCursor:Landroid/database/Cursor;

.field private final mFormatCol:I

.field private final mIcon1Col:I

.field private final mIcon2Col:I

.field private final mRefreshSpinnerCol:I

.field private final mText1Col:I

.field private final mText2Col:I

.field private final mText2UrlCol:I

.field private final mUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    .line 66
    iput-object p1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mUserQuery:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    .line 68
    const-string v0, "suggest_format"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mFormatCol:I

    .line 69
    const-string v0, "suggest_text_1"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText1Col:I

    .line 70
    const-string v0, "suggest_text_2"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText2Col:I

    .line 71
    const-string v0, "suggest_text_2_url"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText2UrlCol:I

    .line 72
    const-string v0, "suggest_icon_1"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mIcon1Col:I

    .line 73
    const-string v0, "suggest_icon_2"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mIcon2Col:I

    .line 74
    const-string v0, "suggest_spinner_while_refreshing"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mRefreshSpinnerCol:I

    .line 75
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Double close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    .line 93
    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorBackedSuggestionCursor"

    const-string v2, "close() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 106
    const-string v0, "QSB.CursorBackedSuggestionCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEAK! Finalized without being closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void
.end method

.method protected getColumnIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "colName"

    .prologue
    const/4 v1, -0x1

    .line 247
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return v1

    .line 249
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "QSB.CursorBackedSuggestionCursor"

    const-string v3, "getColumnIndex() failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-eqz v2, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getCount() after close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 120
    :goto_0
    return v1

    .line 116
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "QSB.CursorBackedSuggestionCursor"

    const-string v3, "getCount() failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPosition()I
    .locals 3

    .prologue
    .line 152
    iget-boolean v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getPosition after close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorBackedSuggestionCursor"

    const-string v2, "getPosition() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringOrNull(I)Ljava/lang/String;
    .locals 4
    .parameter "col"

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "QSB.CursorBackedSuggestionCursor"

    const-string v3, "getString() failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "colName"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, col:I
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mFormatCol:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mIcon1Col:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mIcon2Col:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    const-string v1, "suggest_intent_action"

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 202
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const-string v2, "suggest_intent_data"

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, data:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/Source;->getDefaultIntentData()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    const-string v2, "suggest_intent_data_id"

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .end local v1           #id:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "suggest_log_type"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "suggest_intent_query"

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSuggestionSource()Lcom/android/quicksearchbox/Source;
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText1Col:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText2Col:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mText2UrlCol:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "true"

    iget v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mRefreshSpinnerCol:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 2

    .prologue
    .line 238
    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveTo(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 125
    iget-boolean v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") after close()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string v1, "QSB.CursorBackedSuggestionCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToPosition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorBackedSuggestionCursor"

    const-string v2, "moveToPosition() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mClosed:Z

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "moveToNext() after close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorBackedSuggestionCursor"

    const-string v2, "moveToNext() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
