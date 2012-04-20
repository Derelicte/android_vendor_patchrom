.class Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "PickerGroupsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListAdapter"
.end annotation


# instance fields
.field private final mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

.field final synthetic this$0:Lcom/android/contacts/picker/PickerGroupsFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/picker/PickerGroupsFragment;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    .line 175
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 176
    check-cast p3, Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .end local p3
    iput-object p3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    .line 177
    return-void
.end method

.method private bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "number"

    .prologue
    .line 337
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method private bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V
    .locals 6
    .parameter "view"
    .parameter "photoId"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 352
    cmp-long v0, p2, v1

    if-gez v0, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x302004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move-wide v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0
.end method

.method private refreshChildrenCheckedStatus(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "parent"

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 428
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 419
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v4, v1, Lcom/android/contacts/list/ContactListItemView;

    if-nez v4, :cond_3

    .line 418
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .local v0, checked:Z
    move-object v3, v1

    .line 425
    check-cast v3, Lcom/android/contacts/list/ContactListItemView;

    .line 426
    .local v3, item:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v3, v0}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    goto :goto_1
.end method

.method private refreshGroupsCheckedStatus(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "parent"

    .prologue
    .line 431
    if-nez p1, :cond_1

    .line 445
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;

    if-nez v4, :cond_3

    .line 435
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;

    .line 442
    .local v3, vh:Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;
    iget-object v4, v3, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 443
    .local v2, position:Ljava/lang/Integer;
    iget-object v4, v3, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 243
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/contacts/list/ContactListItemView;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v7, p1

    .line 244
    check-cast v7, Lcom/android/contacts/list/ContactListItemView;

    .line 245
    .local v7, item:Lcom/android/contacts/list/ContactListItemView;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 246
    .local v14, position:I
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    const/4 v6, 0x1

    .line 248
    .local v6, isFirstEntry:Z
    const/16 v17, 0x1

    .line 249
    .local v17, showBottomDivider:Z
    const/16 v19, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 250
    .local v2, currentContactId:J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v19

    if-nez v19, :cond_0

    .line 251
    const/16 v19, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 252
    .local v15, previousContactId:J
    cmp-long v19, v2, v15

    if-nez v19, :cond_0

    .line 253
    const/4 v6, 0x0

    .line 256
    .end local v15           #previousContactId:J
    :cond_0
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 257
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_1

    .line 258
    const/16 v19, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 259
    .local v9, nextContactId:J
    cmp-long v19, v2, v9

    if-nez v19, :cond_1

    .line 260
    const/16 v17, 0x0

    .line 263
    .end local v9           #nextContactId:J
    :cond_1
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, number:Ljava/lang/String;
    const/16 v19, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 267
    .local v12, photoId:J
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 268
    .local v4, dataId:J
    const/16 v19, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, name:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 271
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 272
    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V

    .line 283
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->getPhoneUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 285
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 286
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/contacts/list/ContactListItemView;->setTag(Ljava/lang/Object;)V

    .line 287
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 289
    .end local v2           #currentContactId:J
    .end local v4           #dataId:J
    .end local v6           #isFirstEntry:Z
    .end local v7           #item:Lcom/android/contacts/list/ContactListItemView;
    .end local v8           #name:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v12           #photoId:J
    .end local v14           #position:I
    .end local v17           #showBottomDivider:Z
    .end local v18           #uri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 274
    .restart local v2       #currentContactId:J
    .restart local v4       #dataId:J
    .restart local v6       #isFirstEntry:Z
    .restart local v7       #item:Lcom/android/contacts/list/ContactListItemView;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v12       #photoId:J
    .restart local v14       #position:I
    .restart local v17       #showBottomDivider:Z
    :cond_3
    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_4
    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    .line 279
    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->hidePhoneticName()V

    .line 280
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_1
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;

    .line 216
    .local v4, vh:Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, title:Ljava/lang/String;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 218
    .local v0, count:I
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, systemId:Ljava/lang/String;
    iget-object v5, v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/android/contacts/group/GroupListUtils;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v5, v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-virtual {v6}, Lcom/android/contacts/picker/PickerGroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0007

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    .local v1, position:Ljava/lang/Integer;
    iget-object v5, v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v5, v4, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9
    .parameter "groupCursor"

    .prologue
    const/4 v5, 0x0

    .line 181
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 182
    .local v8, groupId:Ljava/lang/Long;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_entries"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 189
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mQueryHandler:Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$100(Lcom/android/contacts/picker/PickerGroupsFragment;)Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/android/contacts/picker/PickerGroupsFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v7, "sort_key"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v5
.end method

.method public getPhoneUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "dataId"
    .parameter "number"

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, uri:Landroid/net/Uri;
    move-wide v0, p1

    .line 327
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 328
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 333
    :goto_0
    return-object v2

    .line 330
    :cond_0
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 234
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    iget-object v1, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$200(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 236
    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 237
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->showCheckbox()V

    .line 238
    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mInflator:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$500(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040054

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;-><init>(Lcom/android/contacts/picker/PickerGroupsFragment$1;)V

    .line 200
    .local v0, holder:Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;
    const v2, 0x7f0700cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->accountHeader:Landroid/view/View;

    .line 201
    const v2, 0x7f0700cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->accountType:Landroid/widget/TextView;

    .line 202
    const v2, 0x7f0700cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->accountName:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f070050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->divider:Landroid/view/View;

    .line 204
    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mName:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCount:Landroid/widget/TextView;

    .line 206
    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 207
    iget-object v2, v0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    return-object v1
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 393
    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 394
    if-eqz p2, :cond_0

    instance-of v3, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 395
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 397
    .local v1, item:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 398
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v0

    .line 399
    .local v0, checked:Z
    if-eqz v0, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 404
    :goto_0
    if-nez v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 407
    .end local v0           #checked:Z
    .end local v1           #item:Lcom/android/contacts/list/ContactListItemView;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 409
    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v3}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$300(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->refreshGroupsCheckedStatus(Landroid/view/ViewGroup;)V

    .line 410
    return v4

    .line 402
    .restart local v0       #checked:Z
    .restart local v1       #item:Lcom/android/contacts/list/ContactListItemView;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 363
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 364
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 365
    .local v7, isChecked:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 367
    .local v5, groupPosition:I
    if-eqz v7, :cond_0

    .line 368
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 374
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 375
    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v2

    .line 376
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 377
    .local v3, dataId:J
    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 378
    .local v8, uri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 379
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 370
    .end local v1           #count:I
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #dataId:J
    .end local v6           #i:I
    .end local v8           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mCheckedGroups:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$700(Lcom/android/contacts/picker/PickerGroupsFragment;)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .restart local v1       #count:I
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #dataId:J
    .restart local v6       #i:I
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUris()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 385
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #dataId:J
    .end local v8           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->mParentActivity:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 387
    iget-object v9, p0, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->this$0:Lcom/android/contacts/picker/PickerGroupsFragment;

    #getter for: Lcom/android/contacts/picker/PickerGroupsFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v9}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$300(Lcom/android/contacts/picker/PickerGroupsFragment;)Landroid/widget/ExpandableListView;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupListAdapter;->refreshChildrenCheckedStatus(Landroid/view/ViewGroup;)V

    .line 388
    return-void
.end method
