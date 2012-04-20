.class public Lcom/android/contacts/preference/RemoveDuplicateActivity;
.super Landroid/app/Activity;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/preference/RemoveDuplicateService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;,
        Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;,
        Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;
    }
.end annotation


# instance fields
.field private isFinish:Z

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnDelete:Landroid/widget/Button;

.field private mBtnMerge:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDeleteProgressDialog:Landroid/app/ProgressDialog;

.field private mEmptyView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

.field private final mScanContacts:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Landroid/widget/Button;

.field private mService:Lcom/android/contacts/preference/RemoveDuplicateService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    new-instance v0, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity$1;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mScanContacts:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 462
    new-instance v0, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity$2;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/ScanContactsLoader$Result;)Lcom/android/contacts/preference/ScanContactsLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/RemoveDuplicateService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mService:Lcom/android/contacts/preference/RemoveDuplicateService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mService:Lcom/android/contacts/preference/RemoveDuplicateService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startScanMerge()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/preference/RemoveDuplicateActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/preference/RemoveDuplicateActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->updateTitle(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->bindItem(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private bindItem(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V
    .locals 10
    .parameter "itemView"
    .parameter "contact"
    .parameter "showCount"

    .prologue
    .line 278
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getPhones()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getEmails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getEmails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getEmails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, emial:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    .end local v1           #emial:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz p3, :cond_6

    .line 305
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b0236

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_2
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getPhotoId()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V

    .line 313
    return-void

    .line 309
    :cond_6
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private bindPhoto(Lcom/android/contacts/list/ContactListItemView;J)V
    .locals 6
    .parameter "view"
    .parameter "photoId"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 316
    cmp-long v0, p2, v1

    if-gez v0, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x302004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    move-wide v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0
.end method

.method private checkAll()V
    .locals 5

    .prologue
    .line 563
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v4, v4, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 564
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, text:Ljava/lang/String;
    const v4, 0x7f0b0202

    invoke-virtual {p0, v4}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 566
    .local v0, checked:Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v4, v4, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    .line 567
    .local v1, contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->setChecked(Z)V

    goto :goto_1

    .line 565
    .end local v0           #checked:Z
    .end local v1           #contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 570
    .restart local v0       #checked:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v4, v4, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->updateTitle(Ljava/util/ArrayList;)V

    .line 571
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 573
    .end local v0           #checked:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static constructNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0b022a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private showConfirmDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    iget-boolean v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->isFinish:Z

    if-eqz v1, :cond_0

    .line 542
    iput-object v3, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotification:Landroid/app/Notification;

    .line 543
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->finish()V

    .line 560
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0235

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/preference/RemoveDuplicateActivity$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity$4;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showProgressDialog(I)V
    .locals 3
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    .line 235
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b022a

    invoke-virtual {p0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0231

    invoke-virtual {p0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 238
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 241
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 242
    return-void
.end method

.method private startDelete()V
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedRawContactIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 219
    invoke-direct {p0, v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->showProgressDialog(I)V

    .line 220
    new-array v3, v2, [J

    .line 221
    new-array v4, v2, [I

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedRawContactIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v1

    .line 224
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mIsMarkDelete:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "ids"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 229
    const-string v1, "mark_delete"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    return-void
.end method

.method private startMerge()V
    .locals 10

    .prologue
    .line 426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    .line 429
    invoke-virtual {v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->getContacts()Ljava/util/ArrayList;

    move-result-object v6

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 433
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;

    .line 435
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 436
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getRawContactId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 432
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 440
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 455
    :goto_2
    return-void

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 450
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->showProgressDialog(I)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v1, "merge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v1, "ids"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2
.end method

.method private startScanDuplicate()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnCancel:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 510
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnMerge:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mScanContacts:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 516
    return-void
.end method

.method private startScanMerge()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 519
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnMerge:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mScanContacts:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 526
    return-void
.end method

.method private updateTitle(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mergeContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 391
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, duplicate:I
    const/4 v0, 0x0

    .line 392
    .local v0, checked:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    .line 393
    .local v1, contact:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
    invoke-virtual {v1}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v1           #contact:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
    :cond_1
    if-nez v2, :cond_4

    .line 399
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    :goto_1
    if-ne v0, v2, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    const v5, 0x7f0b0202

    invoke-virtual {p0, v5}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :goto_2
    if-nez v2, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_2
    iput-boolean v11, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->isFinish:Z

    .line 418
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnMerge:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnCancel:Landroid/widget/Button;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_3
    return-void

    .line 402
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0b022f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 409
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    const v5, 0x7f0b0201

    invoke-virtual {p0, v5}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->showConfirmDialog()V

    .line 215
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 196
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->showConfirmDialog()V

    goto :goto_0

    .line 199
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startDelete()V

    goto :goto_0

    .line 202
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startMerge()V

    goto :goto_0

    .line 205
    :sswitch_3
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->checkAll()V

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x7f0700f6 -> :sswitch_2
        0x7f070127 -> :sswitch_0
        0x7f070128 -> :sswitch_1
        0x7f070129 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 76
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->constructNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotification:Landroid/app/Notification;

    .line 77
    const v0, 0x7f070125

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;

    .line 78
    const v0, 0x7f070127

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnCancel:Landroid/widget/Button;

    .line 79
    const v0, 0x7f070128

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnMerge:Landroid/widget/Button;

    .line 81
    const v0, 0x7f070129

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mBtnMerge:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->startScanDuplicate()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 479
    return-void
.end method

.method public onFinished(Z)V
    .locals 1
    .parameter "reload"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 494
    :cond_0
    new-instance v0, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/preference/RemoveDuplicateActivity$3;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->showConfirmDialog()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 486
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    return-void
.end method
