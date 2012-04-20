.class Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;
.super Landroid/widget/CursorAdapter;
.source "PickerRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentContactsAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

.field final synthetic this$0:Lcom/android/contacts/picker/PickerRecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/picker/PickerRecentFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    .line 96
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    iput-object p2, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mContext:Landroid/content/Context;

    .line 98
    check-cast p2, Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .end local p2
    iput-object p2, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .line 99
    return-void
.end method

.method private bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "number"

    .prologue
    .line 133
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method private bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V
    .locals 6
    .parameter "view"
    .parameter "photoId"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 148
    cmp-long v0, p2, v1

    if-gez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x302004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move-wide v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    instance-of v8, p1, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v8, :cond_0

    move-object v2, p1

    .line 187
    check-cast v2, Lcom/android/contacts/list/ContactListItemView;

    .line 189
    .local v2, item:Lcom/android/contacts/list/ContactListItemView;
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, number:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 191
    .local v5, photoId:J
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 192
    .local v0, dataId:J
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v2, v5, v6}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V

    .line 195
    invoke-direct {p0, v2, v4}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Ljava/lang/String;)V

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->getPhoneUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 203
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 205
    .end local v0           #dataId:J
    .end local v2           #item:Lcom/android/contacts/list/ContactListItemView;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #photoId:J
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 199
    .restart local v0       #dataId:J
    .restart local v2       #item:Lcom/android/contacts/list/ContactListItemView;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #photoId:J
    :cond_1
    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getPhoneUri(I)Landroid/net/Uri;
    .locals 7
    .parameter "position"

    .prologue
    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 121
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 122
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 123
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 129
    :goto_0
    return-object v4

    .line 125
    :cond_0
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, number:Ljava/lang/String;
    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getPhoneUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "dataId"
    .parameter "number"

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, uri:Landroid/net/Uri;
    move-wide v0, p1

    .line 109
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 110
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 115
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 176
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 178
    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->showCheckbox()V

    .line 181
    return-object v0
.end method

.method public setCheckedItem(IZ)V
    .locals 2
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 159
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 160
    if-eqz p2, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 172
    :cond_1
    return-void

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$RecentContactsAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
