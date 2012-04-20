.class public Lcom/android/contacts/picker/RecentLoader;
.super Landroid/content/AsyncTaskLoader;
.source "RecentLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/MatrixCursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final MATRIXCURSOR_PROJECTION:[Ljava/lang/String;

.field private static final RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final RECENT_CONTACTS_URI:Landroid/net/Uri;


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/picker/RecentLoader;->MATRIXCURSOR_PROJECTION:[Ljava/lang/String;

    .line 29
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_RECENT_CONTACTS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/picker/RecentLoader;->RECENT_CONTACTS_URI:Landroid/net/Uri;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/picker/RecentLoader;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/android/contacts/picker/RecentLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/picker/RecentLoader$1;-><init>(Lcom/android/contacts/picker/RecentLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/picker/RecentLoader;->mObserver:Landroid/database/ContentObserver;

    .line 45
    return-void
.end method

.method private getContactDataRow(JLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 16
    .parameter "contactId"
    .parameter "number"
    .parameter "name"

    .prologue
    .line 103
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 104
    .local v8, baseUri:Landroid/net/Uri;
    const-string v2, "data"

    invoke-static {v8, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, dataUri:Landroid/net/Uri;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v14, selection:Ljava/lang/StringBuilder;
    const-string v2, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "data1"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, ",0)"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/picker/RecentLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v15, "vnd.android.cursor.item/phone_v2"

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 120
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 122
    .local v10, dataId:J
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 123
    .local v12, hotoId:J
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v4, 0x2

    aput-object p4, v2, v4

    const/4 v4, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 130
    .end local v10           #dataId:J
    .end local v12           #hotoId:J
    :goto_0
    return-object v2

    .line 126
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public loadInBackground()Landroid/database/MatrixCursor;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 73
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/contacts/picker/RecentLoader;->MATRIXCURSOR_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 74
    .local v9, matrixCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/picker/RecentLoader;->RECENT_CONTACTS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/picker/RecentLoader;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 77
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 79
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 81
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, number:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, name:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 86
    invoke-direct {p0, v6, v7, v11, v10}, Lcom/android/contacts/picker/RecentLoader;->getContactDataRow(JLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    .line 87
    .local v12, recent:[Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 88
    invoke-virtual {v9, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v6           #contactId:J
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v12           #recent:[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 91
    .restart local v6       #contactId:J
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #number:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v6           #contactId:J
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_3
    return-object v9
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->loadInBackground()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->stopLoading()V

    .line 69
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/picker/RecentLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->forceLoad()V

    .line 59
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/picker/RecentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/RecentLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method
