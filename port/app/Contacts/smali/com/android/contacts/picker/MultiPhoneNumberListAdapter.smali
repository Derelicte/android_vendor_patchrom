.class public Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;
.super Lcom/android/contacts/list/PhoneNumberListAdapter;
.source "MultiPhoneNumberListAdapter.java"


# instance fields
.field private final mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    check-cast p1, Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .line 32
    return-void
.end method


# virtual methods
.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 71
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public getPhoneUri(I)Landroid/net/Uri;
    .locals 5
    .parameter "position"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 41
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 42
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 43
    .local v1, id:J
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 46
    .end local v1           #id:J
    :goto_0
    return-object v3

    .line 45
    :cond_0
    const-string v3, "MultiPhoneNumberListAdapter"

    const-string v4, "Cursor was null in getPhoneUri() call. Returning null instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, v2

    .line 64
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 65
    .local v0, item:Lcom/android/contacts/list/ContactListItemView;
    iget-object v3, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 67
    .end local v0           #item:Lcom/android/contacts/list/ContactListItemView;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-object v2
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 54
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->showCheckbox()V

    .line 55
    return-object v0
.end method

.method public setCheckedItem(IZ)V
    .locals 2
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 88
    if-eqz p2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 100
    :cond_1
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/contacts/picker/MultiPhoneNumberListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
