.class public Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;
.super Lcom/android/inputmethod/latin/UserDictionary;
.source "SynchronouslyLoadedUserDictionary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 1
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
