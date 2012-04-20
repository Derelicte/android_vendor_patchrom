.class public Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
.super Landroid/app/ListFragment;
.source "ContactDetailUpdatesFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;


# instance fields
.field private mAlphaLayer:Landroid/view/View;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mLookupUri:Landroid/net/Uri;

.field private mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

.field private final mStreamItemClickListener:Landroid/view/View$OnClickListener;

.field private final mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

.field private mTouchInterceptLayer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    .locals 3
    .parameter "streamItemEntry"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public handleKeyDown(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mTouchInterceptLayer:Landroid/view/View;

    .line 121
    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mAlphaLayer:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mInitialAlphaValue:F

    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 124
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemPhotoItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/detail/StreamItemAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "lookupUri"
    .parameter "result"

    .prologue
    .line 144
    if-nez p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mLookupUri:Landroid/net/Uri;

    .line 148
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 153
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mStreamItemAdapter:Lcom/android/contacts/detail/StreamItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/StreamItemAdapter;->setStreamItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 193
    :cond_0
    return-void
.end method
