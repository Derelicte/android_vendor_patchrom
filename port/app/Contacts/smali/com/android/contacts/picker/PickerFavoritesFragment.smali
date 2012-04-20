.class public Lcom/android/contacts/picker/PickerFavoritesFragment;
.super Lcom/android/contacts/picker/PickerAllFragment;
.source "PickerFavoritesFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactPhonePickerActivity$OnPageSelectedListener;


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/contacts/picker/PickerAllFragment;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mTitleView:Landroid/widget/TextView;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 24
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/contacts/picker/PickerAllFragment;->configureAdapter()V

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 45
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 52
    .local v1, mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method public configureVerticalScrollbar()V
    .locals 5

    .prologue
    const v4, 0x7f0a005d

    const/4 v3, 0x0

    .line 59
    invoke-super {p0}, Lcom/android/contacts/picker/PickerAllFragment;->configureVerticalScrollbar()V

    .line 61
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 64
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 65
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, leftPadding:I
    const/4 v1, 0x0

    .line 69
    .local v1, rightPadding:I
    iget v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mVerticalScrollbarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 79
    .end local v0           #leftPadding:I
    .end local v1           #rightPadding:I
    :cond_0
    return-void

    .line 73
    .restart local v0       #leftPadding:I
    .restart local v1       #rightPadding:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 28
    const v1, 0x7f04007c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mTitleView:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0b0215

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/contacts/picker/PickerAllFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 37
    iget-object v0, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mPaddingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
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
    .line 83
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 84
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 85
    .local v0, v:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->setCheckedItem(IZ)V

    .line 89
    .end local v0           #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    return-void

    .line 85
    .restart local v0       #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 93
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0215

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/picker/PickerFavoritesFragment;->mAdapter:Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/picker/PickerFavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method
