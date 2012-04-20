.class public Lcom/android/inputmethod/latin/DictionaryCollection;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "DictionaryCollection.java"


# instance fields
.field protected final mDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, dictionaries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method

.method public varargs constructor <init>([Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "dictionaries"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 1
    .parameter "newDict"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 75
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 76
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 3
    .parameter "composer"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 62
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_0

    .line 63
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    return-void
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 3
    .parameter "composer"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 55
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_0

    .line 56
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    return-void
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 69
    :goto_1
    return v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
