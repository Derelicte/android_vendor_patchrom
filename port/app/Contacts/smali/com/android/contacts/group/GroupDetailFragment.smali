.class public Lcom/android/contacts/group/GroupDetailFragment;
.super Landroid/app/Fragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupDetailFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountNameString:Ljava/lang/String;

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccountTypeString:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mCloseActivityAfterDelete:Z

.field private mContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mGroupSize:Landroid/widget/TextView;

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsReadOnly:Z

.field private mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mMemberListView:Landroid/widget/ListView;

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupPresent:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mRootView:Landroid/view/View;

.field private mShowGroupActionInActionBar:Z

.field private mSystemId:Ljava/lang/String;

.field mTempOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactIds:Ljava/util/HashSet;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 267
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$2;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 299
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$3;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method private applyOperation()V
    .locals 4

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.contacts"

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 585
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "GroupDetailFragment"

    const-string v2, "Problem changing contact\'s membership"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 580
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 581
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_2
    const-string v1, "GroupDetailFragment"

    const-string v2, "Problem changing contact\'s membership"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .end local v0           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v1
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 326
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 327
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    .line 329
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    .line 330
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 331
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 332
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 333
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    .line 334
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSystemId:Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSystemId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/contacts/group/GroupListUtils;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 340
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, accountTypeString:Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, dataSet:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v0           #accountTypeString:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private configurePhotoLoader()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 229
    :cond_2
    return-void
.end method

.method private groupSendMms()V
    .locals 7

    .prologue
    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v3, phoneList:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 538
    .local v0, contactId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->queryPrimaryPhoneNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, phone:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 540
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 545
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v2           #phone:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 548
    :cond_2
    return-void
.end method

.method private setRingtoneToGroupMembers(Ljava/lang/String;)V
    .locals 8
    .parameter "uri"

    .prologue
    .line 551
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "custom_ringtone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 555
    .local v0, contactId:Ljava/lang/Long;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupDetailFragment;->addOperation(Landroid/content/ContentProviderOperation;)V

    goto :goto_0

    .line 562
    .end local v0           #contactId:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->applyOperation()V

    .line 565
    :cond_1
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 253
    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 245
    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "accountTypeString"
    .parameter "dataSet"

    .prologue
    .line 389
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 395
    .local v1, manager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 400
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 401
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 402
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 406
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/group/GroupDetailFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/group/GroupDetailFragment$4;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/model/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSize(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 360
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 371
    .local v1, groupSizeString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :goto_1
    return-void

    .line 363
    .end local v1           #groupSizeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, groupSizeTemplateString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 367
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #groupSizeString:Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v2           #groupSizeTemplateString:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v3, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupTitleUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected addOperation(Landroid/content/ContentProviderOperation;)V
    .locals 2
    .parameter "ops"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mTempOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->applyOperation()V

    .line 573
    :cond_0
    return-void
.end method

.method public closeActivityAfterDelete(Z)V
    .locals 0
    .parameter "closeActivity"

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    .line 503
    return-void
.end method

.method public getAccountDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method public isGroupDeletable()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupMembershipEditable()Z
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 529
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method public isGroupPresent()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 0
    .parameter "groupUri"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 210
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMetadataLoader()V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 192
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 200
    .local v0, pickedUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->setRingtoneToGroupMembers(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 147
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 148
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 153
    .local v0, columnCount:I
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 156
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->configurePhotoLoader()V

    .line 157
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 446
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 447
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupDetailFragment;->setHasOptionsMenu(Z)V

    .line 168
    const v0, 0x7f04005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    .line 174
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 478
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;Z)V

    goto :goto_1

    .line 487
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->groupSendMms()V

    goto :goto_1

    .line 491
    :pswitch_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->createPickRingtoneIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x7f07018a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    .line 467
    const v2, 0x7f07018c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 468
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    const v2, 0x7f07018d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 471
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    return-void

    .end local v0           #deleteMenu:Landroid/view/MenuItem;
    .end local v1           #editMenu:Landroid/view/MenuItem;
    :cond_0
    move v2, v4

    .line 464
    goto :goto_0

    :cond_1
    move v3, v4

    .line 465
    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 433
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 437
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->isScreenRotated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x302012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .line 233
    return-void
.end method

.method public setQuickContact(Z)V
    .locals 1
    .parameter "enableQuickContact"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 215
    return-void
.end method

.method public setShowGroupSourceInActionBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    .line 237
    return-void
.end method
