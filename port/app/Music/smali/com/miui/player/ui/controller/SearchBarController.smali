.class public Lcom/miui/player/ui/controller/SearchBarController;
.super Ljava/lang/Object;
.source "SearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/SearchBarController$SearchListener;,
        Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;,
        Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;,
        Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;
    }
.end annotation


# instance fields
.field protected mFilterSearchHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHistoryList:Landroid/widget/ListView;

.field protected final mImageViewAction:Landroid/widget/ImageView;

.field protected mLastSearch:Ljava/lang/String;

.field protected final mPreferenceKey:Ljava/lang/String;

.field protected final mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

.field protected final mSearchBar:Landroid/view/View;

.field protected mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

.field protected final mSearchHistroy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSearchInput:Landroid/widget/EditText;

.field protected final mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/ui/controller/SearchBarController$SearchListener;Ljava/lang/String;)V
    .locals 2
    .parameter "a"
    .parameter "preferenceKey"
    .parameter "l"
    .parameter "initSearch"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const v0, 0x7f0c0073

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    .line 67
    const v0, 0x7f0c0074

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    .line 68
    iput-object p3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    .line 69
    iput-object p2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/SearchBarController;->updateSearchHistroy()V

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    .line 77
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;-><init>(Lcom/miui/player/ui/controller/SearchBarController;I)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/SearchBarController$OnHistoryItemClick;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/miui/player/ui/controller/SearchBarController;->setSearchActionAnim()V

    .line 88
    invoke-virtual {p0, p4}, Lcom/miui/player/ui/controller/SearchBarController;->updateActionState(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private saveSearchHistroy()V
    .locals 8

    .prologue
    .line 270
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 277
    .local v1, i:I
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 278
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    const/16 v7, 0x14

    if-lt v1, v7, :cond_2

    .line 289
    .end local v6           #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, res:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 301
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setSearchActionAnim()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/SearchBarController$1;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/player/ui/controller/SearchBarController$2;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/SearchBarController$2;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/player/ui/controller/SearchBarController$3;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/SearchBarController$3;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    return-void
.end method

.method private updateAdapter(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;->notifyDataSetChanged()V

    .line 259
    :cond_1
    return-void

    .line 247
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, keyLowercase:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 249
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 253
    iget-object v4, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateSearchHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "newSearch"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/miui/player/ui/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/miui/player/ui/controller/SearchBarController;->saveSearchHistroy()V

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method clearSearchHistory()V
    .locals 3

    .prologue
    .line 307
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 308
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/player/ui/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 316
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 317
    return-void
.end method

.method public clearSearchInput()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 103
    return-void
.end method

.method public isHistoryVisible()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method searchAction(I)V
    .locals 4
    .parameter "actionType"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v3, 0x7f0c007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 190
    .local v0, editorInput:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/player/ui/controller/SearchBarController;->updateSearchHistory(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->doSearch(Ljava/lang/String;I)V

    .line 202
    .end local v0           #editorInput:Landroid/widget/EditText;
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 183
    .local v0, v:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void

    .line 182
    .end local v0           #v:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHistoryList(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->onVisibleChanged(Z)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    invoke-interface {v0, v2}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->onVisibleChanged(Z)V

    goto :goto_0
.end method

.method updateActionState(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->setActionType(I)V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->setActionType(I)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSearchHistroy()V
    .locals 9

    .prologue
    .line 224
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 225
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 226
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 228
    .local v5, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, raw:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 230
    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, histroy:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 232
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 233
    .local v6, str:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #histroy:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #str:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    if-eqz v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v7}, Lcom/miui/player/ui/controller/SearchBarController$SearchHistroyAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_1
    return-void
.end method
