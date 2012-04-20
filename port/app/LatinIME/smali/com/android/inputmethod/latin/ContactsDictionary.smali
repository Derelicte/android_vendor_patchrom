.class public Lcom/android/inputmethod/latin/ContactsDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "ContactsDictionary.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "dicTypeId"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionary()V

    .line 56
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v12, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->clearDictionary()V

    .line 119
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getMaxWordLength()I

    move-result v5

    .line 121
    .local v5, maxWordLength:I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_5

    .line 123
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_4

    const/4 v10, -0x1

    const/16 v11, 0x40

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 127
    .local v4, len:I
    const/4 v7, 0x0

    .line 130
    .local v7, prevWord:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 131
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 134
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    .local v0, c:C
    const/16 v10, 0x2d

    if-eq v0, v10, :cond_3

    const/16 v10, 0x27

    if-eq v0, v10, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 143
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, word:Ljava/lang/String;
    add-int/lit8 v2, v3, -0x1

    .line 150
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 151
    .local v9, wordLen:I
    if-ge v9, v5, :cond_2

    if-le v9, v12, :cond_2

    .line 152
    const/16 v10, 0x28

    invoke-super {p0, v8, v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 153
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 154
    const/16 v10, 0x5a

    invoke-super {p0, v7, v8, v10}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    .line 157
    :cond_1
    move-object v7, v8

    .line 130
    .end local v3           #j:I
    .end local v8           #word:Ljava/lang/String;
    .end local v9           #wordLen:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .restart local v0       #c:C
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 162
    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v7           #prevWord:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v6           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v10, "ContactsDictionary"

    const-string v11, "Contacts DB is having problems"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_3
    return-void

    .line 165
    :cond_5
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private declared-synchronized registerObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/ContactsDictionary$1;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0           #cres:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

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

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 1
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 100
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    .line 106
    return-void

    .line 102
    :catch_0
    move-exception v7

    .line 103
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "ContactsDictionary"

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reopen(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 92
    :cond_1
    return-void
.end method
