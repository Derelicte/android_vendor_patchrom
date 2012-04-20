.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9SearchResultDepot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;
    }
.end annotation


# static fields
.field public static final T9QUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;


# instance fields
.field private mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

.field private mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

.field private mDataLocker:Ljava/lang/Object;

.field private mDirty:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

.field private mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

.field private mSupport:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 936
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->T9QUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 5
    .parameter "support"

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    .line 1048
    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    .line 1050
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    .line 1051
    new-array v1, v4, [Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    .line 1052
    new-array v1, v4, [Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    .line 1054
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-direct {v1, v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    .line 1055
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-direct {v1, v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    .line 1063
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mSupport:Lcom/android/providers/contacts/T9SearchSupport;

    .line 1064
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    aput-object v2, v1, v0

    .line 1066
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    aput-object v2, v1, v0

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;

    const-string v2, "T9SearchSupport"

    invoke-direct {v1, p0, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$1;->start()V

    .line 1090
    monitor-enter p0

    .line 1092
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1093
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$802(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private addLocked(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 7
    .parameter "item"

    .prologue
    .line 1099
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v5, 0xc

    if-ge v1, v5, :cond_2

    .line 1101
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->convertIndexToT9Char(I)C

    move-result v0

    .line 1104
    .local v0, digit:C
    iget-object v5, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 1105
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v6, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->add(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)V

    .line 1108
    :cond_0
    iget-object v5, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1109
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 1110
    new-instance v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v4, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1111
    .local v4, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    invoke-direct {v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;-><init>()V

    .line 1112
    .local v3, matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    iput-object v3, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    .line 1114
    iget-object v5, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 1115
    invoke-virtual {v3, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(I)V

    .line 1116
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->add(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)V

    .line 1099
    .end local v3           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    .end local v0           #digit:C
    .end local v2           #index:I
    :cond_2
    return-void
.end method

.method private load(Z)V
    .locals 26
    .parameter "force"

    .prologue
    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 1152
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1153
    monitor-exit v3

    .line 1217
    :goto_0
    return-void

    .line 1155
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1161
    const/16 v20, 0x0

    .line 1162
    .local v20, cursor:Landroid/database/Cursor;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v25, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mSupport:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$1000(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "t9_lookup"

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;->COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mSupport:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mShowingSP:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$900(Lcom/android/providers/contacts/T9SearchSupport;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1171
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1172
    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-direct/range {v2 .. v19}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1184
    :catch_0
    move-exception v21

    .line 1185
    .local v21, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "T9SearchSupport"

    const-string v3, "failed to load t9 search items from database"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1187
    if-eqz v20, :cond_1

    .line 1188
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1192
    .end local v21           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 1193
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    .line 1194
    monitor-exit v3

    goto/16 :goto_0

    .line 1212
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1155
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v25           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;>;"
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1165
    .restart local v20       #cursor:Landroid/database/Cursor;
    .restart local v25       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;>;"
    :cond_2
    :try_start_5
    const-string v5, "contact_id>-100"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1187
    :cond_3
    if-eqz v20, :cond_1

    .line 1188
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1187
    :catchall_2
    move-exception v2

    if-eqz v20, :cond_4

    .line 1188
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 1197
    :cond_5
    if-eqz p1, :cond_6

    .line 1198
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->clear()V

    .line 1201
    :cond_6
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    .line 1202
    .local v24, item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->addLocked(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_4

    .line 1205
    .end local v24           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :cond_7
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    const/16 v2, 0xc

    move/from16 v0, v22

    if-ge v0, v2, :cond_8

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v2, v2, v22

    invoke-virtual {v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->sort()V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v2, v2, v22

    invoke-virtual {v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->sort()V

    .line 1205
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1210
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    .line 1211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    .line 1212
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addCache(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "key"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 1249
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->add(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1254
    :goto_0
    monitor-exit v1

    .line 1255
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->add(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 1259
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    if-eqz v0, :cond_0

    .line 1260
    monitor-exit v1

    .line 1267
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->addLocked(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1266
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 1123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->clear()V

    .line 1125
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->clear()V

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->clear()V

    .line 1128
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->clear()V

    .line 1129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    .line 1130
    monitor-exit v2

    .line 1131
    return-void

    .line 1130
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteItem(Ljava/lang/Long;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 0
    .parameter "id"
    .parameter "idType"

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->reloadDelayed()V

    .line 1354
    return-void
.end method

.method public getMinimizedCandidate(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 8
    .parameter "key"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1227
    if-ne p2, v6, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    .line 1228
    .local v0, cachedResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;
    :goto_0
    if-ne p2, v6, :cond_2

    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    .line 1230
    .local v3, searchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->load()V

    .line 1232
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->getResults(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 1233
    .local v2, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->convertT9CharToIndex(C)I

    move-result v4

    aget-object v4, v3, v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->getSortedResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1238
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 1239
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->add(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1240
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    new-instance v2, Landroid/util/Pair;

    .end local v2           #ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1244
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v2       #ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    :cond_0
    return-object v2

    .line 1227
    .end local v0           #cachedResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;
    .end local v2           #ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    .end local v3           #searchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;

    goto :goto_0

    .line 1228
    .restart local v0       #cachedResults:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    goto :goto_1

    .line 1240
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v2       #ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    .restart local v3       #searchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public incTimesContacted(J)V
    .locals 12
    .parameter "contactId"

    .prologue
    .line 1299
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 1300
    :try_start_0
    iget-boolean v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    if-eqz v6, :cond_0

    .line 1301
    monitor-exit v7

    .line 1331
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-boolean v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    if-eqz v6, :cond_7

    .line 1305
    const-wide/16 v3, -0x1

    .line 1306
    .local v3, timesContacted:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v6, 0xc

    if-ge v0, v6, :cond_7

    .line 1307
    const/4 v5, 0x0

    .line 1308
    .local v5, updated:Z
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->getResults()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1309
    .local v2, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v6, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v8, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v6, p1, v8

    if-nez v6, :cond_1

    .line 1310
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-gez v6, :cond_2

    .line 1311
    iget-object v6, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v8, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    const-wide/16 v10, 0x1

    add-long v3, v8, v10

    .line 1314
    :cond_2
    iget-object v6, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide v3, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1315
    const/4 v5, 0x1

    goto :goto_2

    .line 1318
    .end local v2           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_3
    if-eqz v5, :cond_4

    .line 1319
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->setDisorder()V

    .line 1322
    :cond_4
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->getResults()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1323
    .restart local v2       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v6, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v8, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v6, p1, v8

    if-nez v6, :cond_5

    .line 1324
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNumberSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->setDisorder()V

    .line 1306
    .end local v2           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1330
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #timesContacted:J
    .end local v5           #updated:Z
    :cond_7
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public load()V
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->load(Z)V

    .line 1148
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->load(Z)V

    .line 1135
    return-void
.end method

.method public reloadDelayed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1138
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    .line 1140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1144
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateData(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dataId"
    .parameter "data"
    .parameter "normalizedData"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->reloadDelayed()V

    .line 1343
    return-void
.end method

.method public updatePhotoId(JJ)V
    .locals 7
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 1276
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDataLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 1277
    :try_start_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mDirty:Z

    if-eqz v3, :cond_0

    .line 1278
    monitor-exit v4

    .line 1291
    :goto_0
    return-void

    .line 1281
    :cond_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mLoaded:Z

    if-eqz v3, :cond_3

    .line 1282
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xc

    if-ge v0, v3, :cond_3

    .line 1283
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->mNameSearchResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->getResults()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1284
    .local v2, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v3, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v3, p1, v5

    if-nez v3, :cond_1

    .line 1285
    iget-object v3, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    goto :goto_2

    .line 1290
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1282
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1290
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
