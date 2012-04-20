.class public Lcom/android/quicksearchbox/CorpusSelectionDialog;
.super Landroid/app/Dialog;
.source "CorpusSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/CorpusSelectionDialog$1;,
        Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;,
        Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;,
        Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

.field private mCorpus:Lcom/android/quicksearchbox/Corpus;

.field private mCorpusGrid:Landroid/widget/GridView;

.field private mEditItems:Landroid/widget/ImageView;

.field private mListener:Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;

.field private final mSettings:Lcom/android/quicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;)V
    .locals 1
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 57
    const v0, 0x7f0d000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 58
    iput-object p2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 59
    return-void
.end method

.method private getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSearchActivity()Lcom/android/quicksearchbox/SearchActivity;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/SearchActivity;

    return-object v0
.end method

.method private setAdapter(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    if-ne p1, v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->close()V

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    .line 174
    iget-object v0, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpusGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mAdapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getSearchActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    .line 160
    .local v0, searchActivity:Lcom/android/quicksearchbox/SearchActivity;
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->startedIntoCorpusSelectionDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->onBackPressed()V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->cancel()V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 81
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setContentView(I)V

    .line 82
    const v2, 0x7f0f000c

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpusGrid:Landroid/widget/GridView;

    .line 83
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpusGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;

    invoke-direct {v3, p0, v5}, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusClickListener;-><init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;Lcom/android/quicksearchbox/CorpusSelectionDialog$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpusGrid:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 88
    const v2, 0x7f0f000b

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mEditItems:Landroid/widget/ImageView;

    .line 89
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mEditItems:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;

    invoke-direct {v3, p0, v5}, Lcom/android/quicksearchbox/CorpusSelectionDialog$CorpusEditListener;-><init>(Lcom/android/quicksearchbox/CorpusSelectionDialog;Lcom/android/quicksearchbox/CorpusSelectionDialog$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 92
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 138
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 154
    .end local v0           #handled:Z
    :goto_0
    return v0

    .line 142
    .restart local v0       #handled:Z
    :cond_0
    const/16 v2, 0x13

    if-ne p1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mEditItems:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->cancel()V

    move v0, v1

    .line 145
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->cancel()V

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 121
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/android/quicksearchbox/SearchSettings;->addMenuItems(Landroid/view/Menu;Z)V

    .line 122
    return v1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 104
    invoke-direct {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    .line 105
    .local v1, corpora:Lcom/android/quicksearchbox/Corpora;
    new-instance v0, Lcom/android/quicksearchbox/ui/CorporaAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-direct {v0, v2, v1, v3}, Lcom/android/quicksearchbox/ui/CorporaAdapter;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Corpora;I)V

    .line 107
    .local v0, adapter:Lcom/android/quicksearchbox/ui/CorporaAdapter;
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {v0, v2}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->setCurrentCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setAdapter(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V

    .line 109
    iget-object v2, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpusGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {v0, v3}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getCorpusPosition(Lcom/android/quicksearchbox/Corpus;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 110
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setAdapter(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V

    .line 115
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 116
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->cancel()V

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected selectCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 2
    .parameter "corpus"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->dismiss()V

    .line 183
    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mListener:Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;

    if-eqz v1, :cond_0

    .line 184
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 185
    .local v0, corpusName:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mListener:Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;->onCorpusSelected(Ljava/lang/String;)V

    .line 187
    .end local v0           #corpusName:Ljava/lang/String;
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnCorpusSelectedListener(Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mListener:Lcom/android/quicksearchbox/CorpusSelectionDialog$OnCorpusSelectedListener;

    .line 77
    return-void
.end method

.method public show(Lcom/android/quicksearchbox/Corpus;)V
    .locals 0
    .parameter "corpus"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/quicksearchbox/CorpusSelectionDialog;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    .line 72
    invoke-virtual {p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->show()V

    .line 73
    return-void
.end method
