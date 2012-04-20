.class public Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;
.super Lcom/android/inputmethod/latin/ContactsDictionary;
.source "SynchronouslyLoadedContactsDictionary.java"


# instance fields
.field private mClosed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->mClosed:Z

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->mClosed:Z

    .line 51
    invoke-super {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
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
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->blockingReloadDictionaryIfRequired()V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->blockingReloadDictionaryIfRequired()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
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

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
