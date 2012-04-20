.class public Lcom/android/contacts/list/ContactMultiPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactMultiPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountDataSet:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mGroupId:J

.field private mMode:I

.field private mRestoredCheckedContacts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setLegacyCompatibilityMode(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setQuickContactEnabled(Z)V

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->setDirectorySearchMode(I)V

    .line 43
    iput v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    .line 44
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 127
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 131
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckboxEnabled(Z)V

    .line 135
    iget v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mRestoredCheckedContacts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mRestoredCheckedContacts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedContacts([Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mRestoredCheckedContacts:[Ljava/lang/String;

    .line 151
    :cond_0
    return-object v0

    .line 137
    :pswitch_0
    const/4 v1, -0x7

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountDataSet:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mGroupId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/list/ContactListFilter;->createNotInGroupFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCheckedContacts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCheckedContacts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 156
    const v0, 0x7f040031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .parameter "position"
    .parameter "id"

    .prologue
    .line 123
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
    .line 113
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 114
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 116
    .local v0, v:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Lcom/android/contacts/list/ContactListAdapter;->setCheckedContact(IZ)V

    .line 119
    .end local v0           #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    return-void

    .line 116
    .restart local v0       #v:Lcom/android/contacts/list/ContactListItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "multi_picker_mode"

    iget v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "multi_picker_account_name"

    iget-object v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "multi_picker_account_type"

    iget-object v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountDataSet:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "multi_picker_account_dataset"

    iget-object v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountDataSet:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    const-string v1, "multi_picker_account_groupid"

    iget-wide v2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mGroupId:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getCheckedContacts()[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, checkedContacts:[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 65
    const-string v1, "multi_picker_checked_contacts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    .end local v0           #checkedContacts:[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 74
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "multi_picker_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    .line 79
    const-string v0, "multi_picker_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountName:Ljava/lang/String;

    .line 80
    const-string v0, "multi_picker_account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountType:Ljava/lang/String;

    .line 81
    const-string v0, "multi_picker_account_dataset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountDataSet:Ljava/lang/String;

    .line 82
    const-string v0, "multi_picker_account_groupid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mGroupId:J

    .line 84
    const-string v0, "multi_picker_checked_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "multi_picker_checked_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mRestoredCheckedContacts:[Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mRestoredCheckedContacts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setFilterInfoExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "accountName"
    .parameter "accountType"
    .parameter "accountDataSet"
    .parameter "groupId"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountType:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mAccountDataSet:Ljava/lang/String;

    .line 104
    iput-wide p4, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mGroupId:J

    .line 105
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 92
    const-string v0, "multi_picker_mode_not_starred"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "multi_picker_mode_not_in_group"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactMultiPickerFragment;->mMode:I

    goto :goto_0
.end method
