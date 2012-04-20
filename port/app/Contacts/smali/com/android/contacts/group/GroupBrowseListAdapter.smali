.class public Lcom/android/contacts/group/GroupBrowseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mExtra:Landroid/os/Bundle;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 60
    return-void
.end method

.method private bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V
    .locals 4
    .parameter "entry"
    .parameter "viewCache"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 236
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method private static getGroupUriFromId(J)Landroid/net/Uri;
    .locals 1
    .parameter "groupId"

    .prologue
    .line 241
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedGroup(Landroid/net/Uri;)Z
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPhotoShadow(Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;IZ)V
    .locals 3
    .parameter "view"
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 225
    iget-object v0, p1, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photoShadows:Ljava/util/ArrayList;

    .line 226
    .local v0, photoShadows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-ltz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupListItem;
    .locals 16
    .parameter "position"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 134
    .local v6, groupId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 136
    .local v10, memberCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, systemId:Ljava/lang/String;
    add-int/lit8 v15, p1, -0x1

    .line 142
    .local v15, previousIndex:I
    const/4 v9, 0x1

    .line 143
    .local v9, isFirstGroupInAccount:Z
    if-ltz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, previousGroupAccountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 146
    .local v13, previousGroupAccountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, previousGroupDataSet:Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5, v14}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const/4 v9, 0x0

    .line 155
    .end local v12           #previousGroupAccountName:Ljava/lang/String;
    .end local v13           #previousGroupAccountType:Ljava/lang/String;
    .end local v14           #previousGroupDataSet:Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/contacts/group/GroupListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v11}, Lcom/android/contacts/group/GroupListItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedGroup()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 82
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v2, v4

    .line 96
    :cond_1
    :goto_0
    return v2

    .line 86
    :cond_2
    const/4 v2, 0x0

    .line 87
    .local v2, index:I
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 88
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 90
    .local v0, groupId:J
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v3

    .line 91
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_1

    .end local v0           #groupId:J
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    move v2, v4

    .line 96
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v7

    .line 164
    .local v7, entry:Lcom/android/contacts/group/GroupListItem;
    if-eqz p2, :cond_0

    .line 165
    move-object/from16 v14, p2

    .line 166
    .local v14, result:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    .line 174
    .local v15, viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :goto_0
    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->isFirstGroupInAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V

    .line 176
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    if-nez p1, :cond_1

    .line 184
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_1
    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v8

    .line 196
    .local v8, groupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0007

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, memberCountString:Ljava/lang/String;
    invoke-virtual {v15, v8}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->setUri(Landroid/net/Uri;)V

    .line 200
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 205
    .local v13, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 206
    .local v11, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 207
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    .local v2, imageView:Landroid/widget/ImageView;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 209
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 210
    .local v12, photoId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    int-to-long v3, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    .line 211
    add-int/lit8 v1, v9, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter;->showPhotoShadow(Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;IZ)V

    .line 206
    .end local v12           #photoId:I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 168
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v8           #groupUri:Landroid/net/Uri;
    .end local v9           #i:I
    .end local v10           #memberCountString:Ljava/lang/String;
    .end local v11           #n:I
    .end local v13           #photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14           #result:Landroid/view/View;
    .end local v15           #viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005b

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 169
    .restart local v14       #result:Landroid/view/View;
    new-instance v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    invoke-direct {v15, v14}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;-><init>(Landroid/view/View;)V

    .line 170
    .restart local v15       #viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 186
    :cond_1
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 189
    :cond_2
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v1, v15, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 213
    .restart local v2       #imageView:Landroid/widget/ImageView;
    .restart local v8       #groupUri:Landroid/net/Uri;
    .restart local v9       #i:I
    .restart local v10       #memberCountString:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v13       #photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    add-int/lit8 v1, v9, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter;->showPhotoShadow(Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;IZ)V

    goto :goto_3

    .line 218
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    if-eqz v1, :cond_5

    .line 219
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/contacts/group/GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v14, v1}, Landroid/view/View;->setActivated(Z)V

    .line 221
    :cond_5
    return-object v14
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    .line 68
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mExtra:Landroid/os/Bundle;

    .line 72
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 73
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    .line 74
    .local v0, firstItem:Lcom/android/contacts/group/GroupListItem;
    if-nez v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 75
    .local v1, groupId:J
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 78
    .end local v0           #firstItem:Lcom/android/contacts/group/GroupListItem;
    .end local v1           #groupId:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 74
    .restart local v0       #firstItem:Lcom/android/contacts/group/GroupListItem;
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1
.end method

.method public setSelectedGroup(Landroid/net/Uri;)V
    .locals 0
    .parameter "groupUri"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 105
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    .line 101
    return-void
.end method
