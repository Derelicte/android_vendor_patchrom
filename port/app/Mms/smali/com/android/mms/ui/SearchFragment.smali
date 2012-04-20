.class public Lcom/android/mms/ui/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchFragment$SearchAdapter;,
        Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSearchCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactMap:Ljava/util/HashMap;

    .line 168
    new-instance v0, Lcom/android/mms/ui/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchFragment$1;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 191
    const v2, 0x7f040044

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    .line 195
    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 196
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 197
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 199
    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    .line 200
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 202
    new-instance v2, Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;-><init>(Lcom/android/mms/ui/SearchFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    .line 203
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/ui/SearchFragment$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SearchFragment$2;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 216
    return-object v1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 181
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 187
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/mms/ui/SearchFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/SearchFragment$3;-><init>(Lcom/android/mms/ui/SearchFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/SearchFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 240
    return-void
.end method

.method public query(Ljava/lang/String;)V
    .locals 8
    .parameter "queryString"

    .prologue
    const/4 v4, 0x0

    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, searchString:Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 250
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void

    .end local v2           #searchString:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    move-object v2, p1

    .line 243
    goto :goto_0
.end method
