.class public Lcom/android/contacts/CalllogLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CalllogLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CalllogLoader$CalllogQuery;,
        Lcom/android/contacts/CalllogLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/CalllogLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNumber:Ljava/lang/String;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mResult:Lcom/android/contacts/CalllogLoader$Result;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/contacts/CalllogLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CalllogLoader$1;-><init>(Lcom/android/contacts/CalllogLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/CalllogLoader;->mObserver:Landroid/database/ContentObserver;

    .line 29
    iput-object p2, p0, Lcom/android/contacts/CalllogLoader;->mNumber:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/contacts/CalllogLoader$Result;
    .locals 21

    .prologue
    .line 80
    new-instance v1, Lcom/android/contacts/CalllogLoader$Result;

    invoke-direct {v1}, Lcom/android/contacts/CalllogLoader$Result;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/CalllogLoader;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CalllogLoader;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v20

    .line 83
    .local v20, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CalllogLoader;->mNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 84
    .local v19, normalizedNumber:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 85
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v19

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalized_number=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CalllogLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/CalllogLoader$CalllogQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/CalllogLoader$CalllogQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 92
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_2

    .line 94
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 96
    .local v6, id:J
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 97
    .local v8, date:J
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 98
    .local v10, duration:J
    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, number:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 100
    .local v13, type:I
    const/4 v1, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, countryIso:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, geocodedLocation:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 103
    .local v16, voicemailUri:Ljava/lang/String;
    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 104
    .local v17, forwardedCall:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CalllogLoader;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogLoader$Result;->getCalllog()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Lcom/android/contacts/CalllogMetaData;

    invoke-direct/range {v5 .. v17}, Lcom/android/contacts/CalllogMetaData;-><init>(JJJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v6           #id:J
    .end local v8           #date:J
    .end local v10           #duration:J
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #type:I
    .end local v14           #countryIso:Ljava/lang/String;
    .end local v15           #geocodedLocation:Ljava/lang/String;
    .end local v16           #voicemailUri:Ljava/lang/String;
    .end local v17           #forwardedCall:I
    :catchall_0
    move-exception v1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CalllogLoader;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CalllogLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CalllogLoader;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->getSpPhoto(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    #setter for: Lcom/android/contacts/CalllogLoader$Result;->spInfo:Landroid/util/Pair;
    invoke-static {v1, v2}, Lcom/android/contacts/CalllogLoader$Result;->access$002(Lcom/android/contacts/CalllogLoader$Result;Landroid/util/Pair;)Landroid/util/Pair;

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/CalllogLoader;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/contacts/CalllogLoader;->loadInBackground()Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/CalllogLoader;->stopLoading()V

    .line 132
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/CalllogLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/CalllogLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/CalllogLoader;->forceLoad()V

    .line 122
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/CalllogLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/CalllogLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    return-void
.end method
