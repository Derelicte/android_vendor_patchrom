.class public Lcom/android/contacts/calllog/DialerListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialerListAdapter.java"


# instance fields
.field private final mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

.field private mChoiceMode:Z

.field private final mContactDetailActionListener:Landroid/view/View$OnClickListener;

.field private mSPDividerItemPos:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    .line 281
    new-instance v0, Lcom/android/contacts/calllog/DialerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/DialerListAdapter$2;-><init>(Lcom/android/contacts/calllog/DialerListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContactDetailActionListener:Landroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/calllog/DialerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/calllog/DialerListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/calllog/DialerListAdapter$1;-><init>(Lcom/android/contacts/calllog/DialerListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/calllog/DialerListAdapter;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/calllog/DialerListAdapter;->handleDialerClick(Ljava/lang/String;J)V

    return-void
.end method

.method private bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    .line 314
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 319
    .local v0, cId:J
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, number:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 322
    invoke-virtual {p1, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 327
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private handleDialerClick(Ljava/lang/String;J)V
    .locals 5
    .parameter "number"
    .parameter "contactId"

    .prologue
    .line 296
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 297
    .local v2, telUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 298
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_0

    .line 300
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/calls"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v3, "number"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void

    .line 304
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 305
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "number"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v3, "ignoreDefaultUpBehavior"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isChildContact(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, isChildContact:Z
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 128
    .local v0, contactId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 129
    const-wide/16 v3, -0x1

    .line 130
    .local v3, preId:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 132
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 136
    :goto_0
    cmp-long v6, v3, v0

    if-nez v6, :cond_2

    move v2, v5

    .line 138
    .end local v3           #preId:J
    :cond_0
    :goto_1
    return v2

    .line 134
    .restart local v3       #preId:J
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 136
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isContactSPDivider(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x63

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInformationOnly(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x8

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStranger(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 110
    .local v0, contactId:J
    const-wide/16 v3, -0x7

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x6

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x9

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setContactBageImageId(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader;->cancelPhotoRequest(Landroid/widget/ImageView;)V

    .line 357
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "cursor"
    .parameter "number"

    .prologue
    const v8, 0x302004a

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 332
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 334
    .local v6, contactId:J
    invoke-static {p3}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_0

    .line 335
    invoke-direct {p0, p1, v8}, Lcom/android/contacts/calllog/DialerListAdapter;->setContactBageImageId(Landroid/widget/ImageView;I)V

    .line 352
    :goto_0
    return-void

    .line 339
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 341
    invoke-static {v6, v7}, Lcom/android/contacts/ContactsUtils;->isSPContactIdInT9Lookup(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadSPPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/contacts/calllog/DialerListAdapter;->setContactBageImageId(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-interface {p2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 348
    .local v2, photoId:J
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadContactPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0

    .line 350
    .end local v2           #photoId:J
    :cond_3
    const v0, 0x3020048

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/calllog/DialerListAdapter;->setContactBageImageId(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->isListItemChecked(I)Z

    move-result v0

    .line 231
    .local v0, isItemChecked:Z
    instance-of v2, p1, Lcom/android/contacts/calllog/DialerListContactItem;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 232
    check-cast v1, Lcom/android/contacts/calllog/DialerListContactItem;

    .line 233
    .local v1, item:Lcom/android/contacts/calllog/DialerListContactItem;
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 235
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListContactItem;->photo:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v2, p3}, Lcom/android/contacts/calllog/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;)V

    .line 236
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListContactItem;->contactDetailAction:Landroid/view/View;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-boolean v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mChoiceMode:Z

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListContactItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    .line 278
    .end local v1           #item:Lcom/android/contacts/calllog/DialerListContactItem;
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 240
    .restart local v1       #item:Lcom/android/contacts/calllog/DialerListContactItem;
    .restart local p1
    :cond_1
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListContactItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 244
    .end local v1           #item:Lcom/android/contacts/calllog/DialerListContactItem;
    :cond_2
    instance-of v2, p1, Lcom/android/contacts/calllog/DialerListChildContactItem;

    if-eqz v2, :cond_4

    move-object v1, p1

    .line 245
    check-cast v1, Lcom/android/contacts/calllog/DialerListChildContactItem;

    .line 246
    .local v1, item:Lcom/android/contacts/calllog/DialerListChildContactItem;
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 248
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListChildContactItem;->contactDetailAction:Landroid/view/View;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-boolean v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mChoiceMode:Z

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListChildContactItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListChildContactItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 256
    .end local v1           #item:Lcom/android/contacts/calllog/DialerListChildContactItem;
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/calllog/DialerListCallItem;

    if-eqz v2, :cond_6

    move-object v1, p1

    .line 257
    check-cast v1, Lcom/android/contacts/calllog/DialerListCallItem;

    .line 258
    .local v1, item:Lcom/android/contacts/calllog/DialerListCallItem;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3, v0}, Lcom/android/contacts/calllog/DialerListCallItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 259
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListCallItem;->photo:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v2, p3}, Lcom/android/contacts/calllog/DialerListAdapter;->bindQuickContactBadge(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;)V

    .line 260
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListCallItem;->contactDetailAction:Landroid/view/View;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-boolean v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mChoiceMode:Z

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListCallItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :goto_3
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    goto :goto_1

    .line 264
    :cond_5
    iget-object v2, v1, Lcom/android/contacts/calllog/DialerListCallItem;->contactDetailAction:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 268
    .end local v1           #item:Lcom/android/contacts/calllog/DialerListCallItem;
    :cond_6
    instance-of v2, p1, Lcom/android/contacts/calllog/DialerListStrangerItem;

    if-eqz v2, :cond_7

    .line 269
    check-cast p1, Lcom/android/contacts/calllog/DialerListStrangerItem;

    .end local p1
    invoke-virtual {p1, p3}, Lcom/android/contacts/calllog/DialerListStrangerItem;->bind(Landroid/database/Cursor;)V

    .line 270
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    goto/16 :goto_1

    .line 271
    .restart local p1
    :cond_7
    instance-of v2, p1, Lcom/android/contacts/calllog/DialerListDividerItem;

    if-eqz v2, :cond_8

    .line 272
    check-cast p1, Lcom/android/contacts/calllog/DialerListDividerItem;

    .end local p1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/calllog/DialerListDividerItem;->bind(I)V

    .line 273
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    goto/16 :goto_1

    .line 274
    .restart local p1
    :cond_8
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 275
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->enableEditMode(Z)V

    goto/16 :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 367
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 368
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mRowIDColumn:I

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    .line 372
    const-string v1, "contact_sp_divider_pos_in_t9_cursor"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    goto :goto_0
.end method

.method public getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;
    .locals 6
    .parameter "checkedItems"

    .prologue
    .line 155
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 157
    .local v0, currentPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x12

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 164
    .local v2, numbersArray:[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    return-object v2
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 65
    const/4 v1, -0x1

    .line 66
    .local v1, listItemType:I
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isCallRecord(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isContactSPDivider(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v1, 0x5

    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isStranger(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v1, 0x3

    goto :goto_0

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isInformationOnly(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    const/4 v1, 0x4

    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isChildContact(Landroid/database/Cursor;)Z

    move-result v0

    .line 80
    .local v0, isChildContact:Z
    if-eqz v0, :cond_4

    .line 81
    const/4 v1, 0x2

    goto :goto_0

    .line 83
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSPDividerItemPos()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x6

    return v0
.end method

.method public isCallRecord(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 148
    iget v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mSPDividerItemPos:I

    if-ne p1, v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mChoiceMode:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->isCallRecord(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Lcom/android/contacts/calllog/DialerListCallItem;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/DialerListCallItem;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    move-object v1, v0

    .line 207
    check-cast v1, Lcom/android/contacts/calllog/DialerListCallItem;

    iget-object v1, v1, Lcom/android/contacts/calllog/DialerListCallItem;->contactDetailAction:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContactDetailActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :goto_0
    return-object v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->isContactSPDivider(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v0, Lcom/android/contacts/calllog/DialerListDividerItem;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/DialerListDividerItem;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->isInformationOnly(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->isStranger(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    new-instance v0, Lcom/android/contacts/calllog/DialerListStrangerItem;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/DialerListStrangerItem;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->isChildContact(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    new-instance v0, Lcom/android/contacts/calllog/DialerListChildContactItem;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/DialerListChildContactItem;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    move-object v1, v0

    .line 218
    check-cast v1, Lcom/android/contacts/calllog/DialerListChildContactItem;

    iget-object v1, v1, Lcom/android/contacts/calllog/DialerListChildContactItem;->contactDetailAction:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContactDetailActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 221
    :cond_4
    new-instance v0, Lcom/android/contacts/calllog/DialerListContactItem;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/android/contacts/calllog/DialerListContactItem;-><init>(Landroid/content/Context;)V

    .restart local v0       #view:Landroid/view/View;
    move-object v1, v0

    .line 222
    check-cast v1, Lcom/android/contacts/calllog/DialerListContactItem;

    iget-object v1, v1, Lcom/android/contacts/calllog/DialerListContactItem;->contactDetailAction:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mContactDetailActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 200
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mActivity:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/TwelveKeyDialer;->doFilter(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setChoiceMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/contacts/calllog/DialerListAdapter;->mChoiceMode:Z

    .line 174
    return-void
.end method
