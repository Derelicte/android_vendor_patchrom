.class public Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;
.super Ljava/lang/Thread;
.source "CheckUnsynchronizedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/CheckUnsynchronizedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanContactsThread"
.end annotation


# instance fields
.field private final COLUMNS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mStartId:I

.field final synthetic this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/CheckUnsynchronizedServices;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "startId"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->COLUMNS:[Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mContext:Landroid/content/Context;

    .line 70
    iput p3, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mStartId:I

    .line 71
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 76
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v13, selection:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v14, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v7

    .line 82
    .local v7, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountWithDataSet;

    .line 84
    .local v6, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "com.android.contacts.default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, " OR "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_1
    const-string v0, "("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "account_type=? AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "account_name=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 102
    const-string v0, " AND data_set=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_2
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v6           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v7           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #selection:Ljava/lang/StringBuilder;
    .end local v14           #selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    iget v2, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mStartId:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->stopSelf(I)V

    throw v0

    .line 91
    .restart local v6       #account:Lcom/android/contacts/model/AccountWithDataSet;
    .restart local v7       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v13       #selection:Ljava/lang/StringBuilder;
    .restart local v14       #selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v0, "dirty=1 AND ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 105
    :cond_2
    const-string v0, " AND data_set IS NULL"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 110
    .end local v6           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 111
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 120
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 122
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 124
    .local v9, dirtyCount:I
    invoke-static {}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dirty count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-lez v9, :cond_4

    .line 127
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0222

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->constructNotification(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v11

    .line 131
    .local v11, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 133
    .local v12, notificationManager:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    .end local v9           #dirtyCount:I
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #notificationManager:Landroid/app/NotificationManager;
    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    iget v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->stopSelf(I)V

    .line 144
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_3
    return-void

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->this$0:Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    iget v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->stopSelf(I)V

    goto :goto_3

    .line 137
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
