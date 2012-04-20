.class public Lcom/android/contacts/activities/NickNameEditActivity;
.super Landroid/app/Activity;
.source "NickNameEditActivity.java"


# instance fields
.field private mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/NickNameEditActivity;)Lcom/android/contacts/editor/NickNameEditListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/NickNameEditActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/NickNameEditActivity;->returnPickerResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/NickNameEditActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/NickNameEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/contacts/activities/NickNameEditActivity;->hideSoftInput()V

    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 125
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/NickNameEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 126
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    .line 110
    new-instance v0, Lcom/android/contacts/editor/NickNameEditListAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/NickNameEditListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    .line 111
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/activities/NickNameEditActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/NickNameEditActivity$3;-><init>(Lcom/android/contacts/activities/NickNameEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 88
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, hint:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/NickNameEditListAdapter;->parseFromPickIntent(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private returnPickerResult(Z)V
    .locals 3
    .parameter "succeed"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "numbers"

    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "names"

    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameEditListAdapter;->getNickNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/NickNameEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/activities/NickNameEditActivity;->finish()V

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/NickNameEditActivity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v5, 0x7f040075

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/NickNameEditActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/activities/NickNameEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/NickNameEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 42
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x3030020

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, customActionBarView:Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const v5, 0x30b002e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 45
    .local v4, saveMenuItem:Landroid/view/View;
    new-instance v5, Lcom/android/contacts/activities/NickNameEditActivity$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/NickNameEditActivity$1;-><init>(Lcom/android/contacts/activities/NickNameEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x30b002b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, cancelMenuItem:Landroid/view/View;
    new-instance v5, Lcom/android/contacts/activities/NickNameEditActivity$2;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/NickNameEditActivity$2;-><init>(Lcom/android/contacts/activities/NickNameEditActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/16 v5, 0x10

    const/16 v6, 0x1a

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 77
    .end local v1           #cancelMenuItem:Landroid/view/View;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #saveMenuItem:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/NickNameEditActivity;->initResourceRefs()V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/activities/NickNameEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/contacts/activities/NickNameEditActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/NickNameEditActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
