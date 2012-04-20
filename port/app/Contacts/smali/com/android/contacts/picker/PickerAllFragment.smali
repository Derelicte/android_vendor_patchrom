.class public Lcom/android/contacts/picker/PickerAllFragment;
.super Lcom/android/contacts/list/PhoneNumberPickerFragment;
.source "PickerAllFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/contacts/activities/ContactPhonePickerActivity$OnPageSelectedListener;


# instance fields
.field protected mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 2
    .parameter "mRequest"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/picker/PickerAllFragment;->setLegacyCompatibilityMode(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/PickerAllFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/picker/PickerAllFragment;->setSearchMode(Z)V

    .line 43
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/picker/PickerAllFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/contacts/picker/PickerAllFragment;->setDirectorySearchMode(I)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/picker/PickerAllFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    new-instance v0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerAllFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    .line 103
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 49
    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    .line 52
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 53
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 54
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 56
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/picker/PickerAllFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/picker/PickerAllFragment$1;-><init>(Lcom/android/contacts/picker/PickerAllFragment;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 92
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 94
    .local v0, v:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getPinnedHeaderCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 95
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerAllFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->setCheckedItem(IZ)V

    .line 98
    .end local v0           #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    return-void

    .line 95
    .restart local v0       #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 84
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0b0218

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/picker/PickerAllFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/picker/PickerAllFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 130
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "newText"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/picker/PickerAllFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/picker/PickerAllFragment;->setSearchMode(Z)V

    .line 72
    return v1

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
