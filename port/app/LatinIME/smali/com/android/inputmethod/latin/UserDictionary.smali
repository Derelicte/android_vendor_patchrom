.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final PROJECTION_ADD:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# instance fields
.field private final mAlsoUseMoreRestrictiveLocales:Z

.field private final mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v0, v2

    const-string v1, "frequency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "frequency"

    aput-object v1, v0, v3

    const-string v1, "locale"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 57
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 58
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    .line 60
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, cres:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 71
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 74
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_ADD:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 229
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v3

    .line 231
    .local v3, maxWordLength:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    const-string v5, "word"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, indexWord:I
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, indexFrequency:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, word:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 239
    .local v0, frequency:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 240
    invoke-super {p0, v4, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 242
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 245
    .end local v0           #frequency:I
    .end local v1           #indexFrequency:I
    .end local v2           #indexWord:I
    .end local v4           #word:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 7
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getRequiresReload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionaryAsync()V

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_2

    .line 214
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 169
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 170
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "word"

    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "appid"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 176
    .local v6, contentResolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 178
    .local v3, client:Landroid/content/ContentProviderClient;
    if-eqz v3, :cond_1

    .line 179
    new-instance v0, Lcom/android/inputmethod/latin/UserDictionary$2;

    const-string v2, "addWord"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/UserDictionary$2;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary$2;->start()V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    .end local v3           #client:Landroid/content/ContentProviderClient;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #contentResolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 1
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 143
    .local v0, client:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 145
    const/4 v2, 0x1

    .line 147
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 13

    .prologue
    const/4 v2, 0x3

    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;

    .line 93
    .local v9, localeElements:[Ljava/lang/String;
    :goto_0
    array-length v8, v9

    .line 95
    .local v8, length:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v0, "(locale is NULL)"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v12, request:Ljava/lang/StringBuilder;
    const-string v11, ""

    .line 99
    .local v11, localeSoFar:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v9, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 110
    const-string v0, " or (locale=?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 91
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #localeElements:[Ljava/lang/String;
    .end local v11           #localeSoFar:Ljava/lang/String;
    .end local v12           #request:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 118
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v9       #localeElements:[Ljava/lang/String;
    .restart local v11       #localeSoFar:Ljava/lang/String;
    .restart local v12       #request:Ljava/lang/StringBuilder;
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    if-eqz v0, :cond_2

    if-ge v8, v2, :cond_2

    .line 119
    const-string v0, " or (locale like ?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v0, v8, 0x1

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 123
    .local v10, localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v9, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 125
    move-object v4, v10

    .line 134
    .end local v10           #localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    .local v4, requestArguments:[Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 138
    return-void

    .line 132
    .end local v4           #requestArguments:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v4, v9

    .restart local v4       #requestArguments:[Ljava/lang/String;
    goto :goto_2
.end method
