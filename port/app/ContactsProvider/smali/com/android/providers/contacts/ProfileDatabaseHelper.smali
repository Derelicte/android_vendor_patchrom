.class public Lcom/android/providers/contacts/ProfileDatabaseHelper;
.super Lcom/android/providers/contacts/ContactsDatabaseHelper;
.source "ProfileDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "databaseName"
    .parameter "optimizationEnabled"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const-string v2, "profile.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic buildMinimalPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildMinimalPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearSuperPrimary(JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    return-void
.end method

.method public bridge synthetic createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic deleteNameLookup(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    return-void
.end method

.method public bridge synthetic deleteStatusUpdate(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteStatusUpdate(J)V

    return-void
.end method

.method public bridge synthetic exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActivityMimeType(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getActivityMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAggregationMode(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContactId(J)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDataMimeType(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayNameSourceForMimeTypeId(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDisplayNameSourceForMimeTypeId(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMimeTypeId(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForEmail()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForIm()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForIm()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForOrganization()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForOrganization()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForPhone()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForPhone()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForSip()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForSip()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForStructuredName()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeTypeIdForStructuredPostal()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredPostal()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPackageId(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 66
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->SEQUENCE_TABLES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    .local v3, table:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v5, "seq"

    const-wide v6, 0x7fffffff80000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v5, "sqlite_sequence"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3           #table:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public bridge synthetic insertNameLookup(JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForNickname(JJLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic isContactDatabase()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public bridge synthetic rawContactHasSuperPrimary(JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-void
.end method

.method public bridge synthetic removeContactIfSingleton(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->removeContactIfSingleton(J)V

    return-void
.end method

.method public bridge synthetic replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic resetNameVerifiedForOtherRawContacts(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->resetNameVerifiedForOtherRawContacts(J)V

    return-void
.end method

.method public bridge synthetic setIsPrimary(JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    return-void
.end method

.method public bridge synthetic setIsSuperPrimary(JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    return-void
.end method

.method public bridge synthetic setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateAllVisible()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    return-void
.end method

.method public bridge synthetic updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    return-void
.end method

.method public bridge synthetic updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method public bridge synthetic wipeData()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->wipeData()V

    return-void
.end method
