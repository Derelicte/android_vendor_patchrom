.class public Lcom/android/quicksearchbox/ui/CorporaAdapter;
.super Landroid/widget/BaseAdapter;
.source "CorporaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/CorporaAdapter$1;,
        Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;,
        Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private final mCorporaObserver:Landroid/database/DataSetObserver;

.field private final mCorpusViewRes:I

.field private mCurrentCorpusName:Ljava/lang/String;

.field private mSortedCorpora:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Corpora;I)V
    .locals 2
    .parameter "context"
    .parameter "corpora"
    .parameter "corpusViewRes"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;-><init>(Lcom/android/quicksearchbox/ui/CorporaAdapter;Lcom/android/quicksearchbox/ui/CorporaAdapter$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorporaObserver:Landroid/database/DataSetObserver;

    .line 58
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 60
    iput p3, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpusViewRes:I

    .line 61
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorporaObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->updateCorpora()V

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->updateCorpora()V

    return-void
.end method

.method private updateCorpora()V
    .locals 6

    .prologue
    .line 71
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {v4}, Lcom/android/quicksearchbox/Corpora;->getEnabledCorpora()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, enabledCorpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v3, sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 74
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->isCorpusHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_1
    new-instance v4, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;-><init>(Lcom/android/quicksearchbox/ui/CorporaAdapter$1;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    iput-object v3, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mSortedCorpora:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method


# virtual methods
.method protected bindView(Lcom/android/quicksearchbox/ui/CorpusView;Lcom/android/quicksearchbox/Corpus;)V
    .locals 3
    .parameter "view"
    .parameter "corpus"

    .prologue
    .line 144
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getCorpusIcon(Lcom/android/quicksearchbox/Corpus;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getCorpusLabel(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    .local v2, label:Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->isCurrentCorpus(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v1

    .line 148
    .local v1, isCurrent:Z
    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/CorpusView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/android/quicksearchbox/ui/CorpusView;->setLabel(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p1, v1}, Lcom/android/quicksearchbox/ui/CorpusView;->setChecked(Z)V

    .line 151
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorporaObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    return-void
.end method

.method protected createView(Landroid/view/ViewGroup;)Lcom/android/quicksearchbox/ui/CorpusView;
    .locals 3
    .parameter "parent"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCorpusViewRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/CorpusView;

    return-object v0
.end method

.method protected getCorpusIcon(Lcom/android/quicksearchbox/Corpus;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCorpusLabel(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorpusPosition(Lcom/android/quicksearchbox/Corpus;)I
    .locals 6
    .parameter "corpus"

    .prologue
    const/4 v2, 0x0

    .line 119
    if-nez p1, :cond_1

    move v1, v2

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getCount()I

    move-result v0

    .line 123
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getItem(I)Lcom/android/quicksearchbox/Corpus;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_2
    const-string v3, "CorporaAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corpus not in adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mSortedCorpora:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mSortedCorpora:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/quicksearchbox/Corpus;
    .locals 2
    .parameter "position"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mSortedCorpora:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getItem(I)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 133
    move-object v1, p2

    check-cast v1, Lcom/android/quicksearchbox/ui/CorpusView;

    .line 134
    .local v1, view:Lcom/android/quicksearchbox/ui/CorpusView;
    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->createView(Landroid/view/ViewGroup;)Lcom/android/quicksearchbox/ui/CorpusView;

    move-result-object v1

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->getItem(I)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 139
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->bindView(Lcom/android/quicksearchbox/ui/CorpusView;Lcom/android/quicksearchbox/Corpus;)V

    .line 140
    return-object v1
.end method

.method protected isCurrentCorpus(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 2
    .parameter "corpus"

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCurrentCorpusName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCurrentCorpusName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCurrentCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 1
    .parameter "corpus"

    .prologue
    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter;->mCurrentCorpusName:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->notifyDataSetChanged()V

    .line 68
    return-void

    .line 66
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
