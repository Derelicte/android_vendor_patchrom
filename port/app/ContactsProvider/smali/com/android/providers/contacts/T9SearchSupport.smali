.class public Lcom/android/providers/contacts/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$1;,
        Lcom/android/providers/contacts/T9SearchSupport$IdType;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchItemQuery;,
        Lcom/android/providers/contacts/T9SearchSupport$SPT9SearchItemQuery;,
        Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;,
        Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

.field private static sInstance:Lcom/android/providers/contacts/T9SearchSupport;

.field private static sPhoneMimeTypeId:J

.field private static sQueryT9ItemSql:Ljava/lang/String;

.field private static sSipMimeTypeId:J


# instance fields
.field private mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

.field private mShowingSP:Ljava/lang/Boolean;

.field private mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1386
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    .line 1391
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mShowingSP:Ljava/lang/Boolean;

    .line 1632
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1635
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    .line 1636
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/providers/contacts/T9SearchSupport;->isContactSPDivider(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDividerPosExtra(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->makeContactSPDivider()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/T9SearchSupport;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mShowingSP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static calculateMatchedLevel(Ljava/lang/String;I)I
    .locals 4
    .parameter "t9Key"
    .parameter "matchedCount"

    .prologue
    .line 1526
    const/4 v1, 0x0

    .line 1528
    .local v1, wordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1529
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_0

    .line 1530
    add-int/lit8 v1, v1, 0x1

    .line 1531
    if-le v1, p1, :cond_0

    .line 1532
    const/4 v2, 0x1

    .line 1536
    :goto_1
    return v2

    .line 1528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method private closeStatements()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1642
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1644
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1648
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1652
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1654
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 1655
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1656
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1658
    :cond_3
    return-void
.end method

.method public static converDigitToInitial(C)C
    .locals 1
    .parameter "digit"

    .prologue
    .line 1514
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0
.end method

.method public static convertIndexToT9Char(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 1469
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 1470
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1477
    :goto_0
    return v0

    .line 1473
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1480
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID INDEX"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :pswitch_0
    const/16 v0, 0x2b

    goto :goto_0

    .line 1477
    :pswitch_1
    const/16 v0, 0x2c

    goto :goto_0

    .line 1473
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertT9CharToIndex(C)I
    .locals 2
    .parameter "digit"

    .prologue
    .line 1492
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1493
    add-int/lit8 v0, p0, -0x30

    .line 1500
    :goto_0
    return v0

    .line 1496
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1503
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 1500
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 1496
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1726
    const-string v0, "DROP TABLE IF EXISTS t9_lookup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    const-string v0, "CREATE TABLE t9_lookup (data_id INTEGER NOT NULL DEFAULT 0,contact_id INTEGER NOT NULL DEFAULT 0,raw_contact_id INTEGER NOT NULL DEFAULT 0,data TEXT NOT NULL,normalized_data TEXT NOT NULL,normalized_number TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id, t9_key),UNIQUE(contact_id, normalized_data, t9_key));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1744
    const-string v0, "CREATE INDEX t9_lookup_normalized_number_index ON t9_lookup (normalized_number);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    return-void
.end method

.method private static extendCandidates(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1970
    .local v0, curSize:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1971
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 1972
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1970
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    .end local v2           #j:I
    :cond_1
    return-void
.end method

.method private static filterNonLetterAndDigit(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "builder"
    .parameter "input"

    .prologue
    .line 1582
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1583
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1584
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1585
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1586
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1589
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generatePinyinTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "name"
    .parameter "pinyin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1936
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v3, v4

    .line 1959
    :cond_1
    return-object v3

    .line 1940
    :cond_2
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, p0, v6, v7}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 1941
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1942
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1944
    .local v1, pinyins:[Ljava/lang/String;
    array-length v5, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1945
    const-string v5, "T9SearchSupport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The pinyin length is not accurate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1949
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 1953
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    .line 1954
    .local v2, t:Lmiui/util/HanziToPinyin$Token;
    aget-object v5, v1, v0

    iput-object v5, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 1955
    iput-object v4, v2, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 1948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateT9Key(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 26
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1985
    .local p1, originalTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1988
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    if-nez p1, :cond_0

    .line 1989
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 1993
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1996
    .local v22, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v14, 0x2

    .line 1999
    .local v14, keyType:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2000
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmiui/util/HanziToPinyin$Token;

    .line 2001
    .local v18, t:Lmiui/util/HanziToPinyin$Token;
    move-object/from16 v0, v18

    iget v0, v0, Lmiui/util/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    goto :goto_0

    .line 2012
    :pswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/providers/contacts/T9SearchSupport;->filterNonLetterAndDigit(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 2013
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    .line 2014
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2003
    :pswitch_1
    const/4 v14, 0x1

    .line 2004
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 2005
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 2007
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2021
    .end local v18           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    .local v16, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_a

    .line 2024
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v6, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    .line 2027
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmiui/util/HanziToPinyin$Token;

    .line 2028
    .restart local v18       #t:Lmiui/util/HanziToPinyin$Token;
    const/16 v21, 0x0

    .line 2029
    .local v21, tokenTarget:Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Lmiui/util/HanziToPinyin$Token;->type:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 2026
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2031
    :pswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/android/providers/contacts/T9SearchSupport;->extendCandidates(Ljava/util/ArrayList;I)V

    .line 2032
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_4

    .line 2033
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v21, v23, v12

    .line 2034
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2038
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    div-int v17, v23, v24

    .line 2039
    .local v17, oldSize:I
    mul-int v8, v17, v12

    .line 2040
    .local v8, from:I
    add-int/lit8 v23, v12, 0x1

    mul-int v20, v17, v23

    .line 2041
    .local v20, to:I
    move v13, v8

    .local v13, k:I
    :goto_4
    move/from16 v0, v20

    if-ge v13, v0, :cond_6

    .line 2042
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    aput-object v21, v23, v9

    .line 2041
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2034
    .end local v8           #from:I
    .end local v13           #k:I
    .end local v17           #oldSize:I
    .end local v20           #to:I
    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 2032
    .restart local v8       #from:I
    .restart local v13       #k:I
    .restart local v17       #oldSize:I
    .restart local v20       #to:I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2047
    .end local v8           #from:I
    .end local v12           #j:I
    .end local v13           #k:I
    .end local v17           #oldSize:I
    .end local v20           #to:I
    :pswitch_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 2048
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 2049
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2058
    :goto_5
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_4

    .line 2059
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    aput-object v21, v23, v9

    .line 2058
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2052
    .end local v13           #k:I
    :cond_7
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    goto :goto_5

    .line 2056
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_5

    .line 2064
    .end local v18           #t:Lmiui/util/HanziToPinyin$Token;
    .end local v21           #tokenTarget:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_b

    .line 2065
    const-string v24, ""

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2069
    .end local v6           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v9           #i:I
    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2074
    .local v19, thisName:Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2075
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_f

    .line 2076
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2077
    .local v5, c:C
    invoke-static {v5}, Lmiui/util/HanziToPinyin;->formatCharToT9(C)C

    move-result v7

    .line 2078
    .local v7, digit:C
    if-nez v7, :cond_d

    .line 2080
    const/16 v7, 0x20

    .line 2087
    :cond_c
    :goto_a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2075
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2081
    :cond_d
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-nez v23, :cond_e

    if-eqz v9, :cond_e

    add-int/lit8 v23, v9, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v23

    if-nez v23, :cond_c

    .line 2085
    :cond_e
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v7

    goto :goto_a

    .line 2091
    .end local v5           #c:C
    .end local v7           #digit:C
    :cond_f
    new-instance v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    .line 2092
    .local v11, info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    iput v14, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    .line 2093
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    .line 2094
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    .line 2095
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2098
    .end local v9           #i:I
    .end local v11           #info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    .end local v19           #thisName:Ljava/lang/String;
    :cond_10
    return-object v15

    .line 2001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1
    .parameter "database"

    .prologue
    .line 1424
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    if-nez v0, :cond_1

    .line 1427
    if-nez p0, :cond_0

    .line 1431
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1435
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    .line 1440
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1441
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    return-object v0
.end method

.method private static getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6
    .parameter "db"

    .prologue
    .line 1449
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1451
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 1452
    .local v0, dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    .line 1453
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1, p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    .line 1455
    const-string v1, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%d OR data.mimetype_id=%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "%s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    .line 1458
    .end local v0           #dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    return-object v1
.end method

.method private static insertSPT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "self"
    .parameter "context"
    .parameter "db"

    .prologue
    .line 1825
    const/4 v6, 0x0

    .line 1826
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1828
    .local v10, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,normalized_number,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1831
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$SPT9SearchItemQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1833
    new-instance v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1834
    .local v11, item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    const-wide/16 v8, -0x64

    .line 1835
    .local v8, id:J
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    iput-wide v8, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 1837
    iput-wide v8, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 1838
    iput-wide v8, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 1839
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1840
    iget-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 1841
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 1842
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1843
    .local v12, pinyin:Ljava/lang/String;
    iget-object v0, v11, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/providers/contacts/T9SearchSupport;->generatePinyinTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v10, v11, v0}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/util/ArrayList;)V

    .line 1845
    const-wide/16 v0, 0x1

    sub-long/2addr v8, v0

    .line 1846
    goto :goto_1

    .line 1828
    .end local v8           #id:J
    .end local v11           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v12           #pinyin:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1850
    .restart local v8       #id:J
    .restart local v11       #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :cond_1
    if-eqz v6, :cond_2

    .line 1851
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_2
    if-eqz v10, :cond_3

    if-nez p0, :cond_3

    .line 1854
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1857
    .end local v8           #id:J
    .end local v11           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :cond_3
    :goto_2
    return-void

    .line 1847
    :catch_0
    move-exception v7

    .line 1848
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v0, "T9SearchSupport"

    const-string v1, "failed to get t9 search item to add"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    if-eqz v6, :cond_4

    .line 1851
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_4
    if-eqz v10, :cond_3

    if-nez p0, :cond_3

    .line 1854
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    .line 1850
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1851
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_5
    if-eqz v10, :cond_6

    if-nez p0, :cond_6

    .line 1854
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v0
.end method

.method private insertT9SearchItem(JLcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 4
    .parameter "id"
    .parameter "idType"

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, columnName:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$1;->$SwitchMap$com$android$providers$contacts$T9SearchSupport$IdType:[I

    invoke-virtual {p3}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1810
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1815
    :goto_1
    return-void

    .line 1799
    :pswitch_0
    const-string v0, "raw_contacts._id"

    .line 1800
    goto :goto_0

    .line 1802
    :pswitch_1
    const-string v0, "data._id"

    .line 1803
    goto :goto_0

    .line 1805
    :pswitch_2
    const-string v0, "view_contacts._id"

    goto :goto_0

    .line 1814
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 1797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .parameter "self"
    .parameter "db"
    .parameter "whereClause"

    .prologue
    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1869
    .local v2, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    if-nez p0, :cond_2

    :try_start_0
    const-string v5, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,normalized_number,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1872
    :goto_0
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1873
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1874
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1875
    .local v3, item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1876
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 1877
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 1878
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 1879
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1880
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeData(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 1882
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 1883
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    .line 1884
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1885
    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v5}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1887
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1888
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "T9SearchSupport"

    const-string v6, "failed to get t9 search item to add"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    if-eqz v0, :cond_0

    .line 1891
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_0
    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1894
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1897
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    return-void

    .line 1869
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1890
    .restart local v3       #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .restart local v4       #sql:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 1891
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_4
    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1894
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    .line 1890
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 1891
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_5
    if-eqz v2, :cond_6

    if-nez p0, :cond_6

    .line 1894
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v5
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "self"
    .parameter "insertStatement"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/T9SearchSupport;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1906
    .local p3, originalTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1933
    :cond_0
    return-void

    .line 1911
    :cond_1
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/android/providers/contacts/T9SearchSupport;->generateT9Key(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1912
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    .line 1913
    .local v1, info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    .line 1914
    iget v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    int-to-long v3, v3

    iput-wide v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    .line 1915
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    .line 1916
    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1917
    const/4 v3, 0x2

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1918
    const/4 v3, 0x3

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1919
    const/4 v3, 0x4

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1920
    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1921
    const/4 v3, 0x6

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1922
    const/4 v3, 0x7

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1923
    const/16 v3, 0x8

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1924
    const/16 v3, 0x9

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1925
    const/16 v3, 0xa

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1926
    const/16 v3, 0xb

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1927
    const/16 v3, 0xc

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1928
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1929
    if-eqz p0, :cond_2

    .line 1930
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    new-instance v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {v4, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_0
.end method

.method private static isContactSPDivider(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1704
    iget-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    const-wide/16 v2, -0x63

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1700
    iget-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeContactSPDivider()Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .locals 3

    .prologue
    .line 1708
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>()V

    .line 1709
    .local v0, divider:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    const-wide/16 v1, -0x63

    iput-wide v1, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 1710
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    return-object v1
.end method

.method private static makeContactSPDividerPosExtra(I)Landroid/os/Bundle;
    .locals 2
    .parameter "pos"

    .prologue
    .line 1714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1715
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "contact_sp_divider_pos_in_t9_cursor"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1717
    return-object v0
.end method

.method private matchT9Name(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    .locals 10
    .parameter "pattern"
    .parameter "pstart"
    .parameter "key"
    .parameter "kstart"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2118
    add-int/lit8 v2, p2, 0x1

    .line 2119
    .local v2, nextInitialCharIndex:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2120
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1

    .line 2125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2129
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p4

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v5, p3, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2130
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    invoke-direct {v1, v8}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;-><init>(I)V

    .line 2131
    .local v1, matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    sub-int/2addr v4, p4

    invoke-virtual {v1, p2, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(II)V

    .line 2196
    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :goto_1
    return-object v1

    .line 2119
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 2134
    goto :goto_1

    .line 2141
    :cond_3
    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_5

    .line 2142
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, p4, 0x2

    if-ne v5, v6, :cond_4

    .line 2144
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    invoke-direct {v1, v9}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;-><init>(I)V

    .line 2145
    .restart local v1       #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(I)V

    .line 2146
    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(I)V

    goto :goto_1

    .line 2150
    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_4
    add-int/lit8 v5, p4, 0x1

    invoke-direct {p0, p1, v2, p3, v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    move-result-object v1

    .line 2151
    .restart local v1       #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    if-eqz v1, :cond_5

    iget v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    if-lez v5, :cond_5

    .line 2152
    iget v4, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 2153
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(I)V

    goto :goto_1

    .line 2159
    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_5
    sub-int v3, v2, p2

    .line 2160
    .local v3, spanLength:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 2163
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p4

    if-gt v5, v3, :cond_8

    .line 2167
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p4

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v5, p3, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2168
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    invoke-direct {v1, v8}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;-><init>(I)V

    .line 2169
    .restart local v1       #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    sub-int/2addr v4, p4

    invoke-virtual {v1, p2, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(II)V

    goto :goto_1

    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_7
    move-object v1, v4

    .line 2172
    goto :goto_1

    .line 2175
    :cond_8
    add-int v5, p4, v3

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p4, 0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, p3, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2181
    add-int v5, p4, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 2183
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    invoke-direct {v1, v9}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;-><init>(I)V

    .line 2184
    .restart local v1       #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    add-int v4, p2, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, p2, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(II)V

    goto/16 :goto_1

    .line 2188
    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_9
    add-int v5, p4, v3

    invoke-direct {p0, p1, v2, p3, v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    move-result-object v1

    .line 2190
    .restart local v1       #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    if-eqz v1, :cond_a

    iget v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    if-lez v5, :cond_a

    .line 2191
    iget v4, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    add-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 2192
    add-int v4, p2, v3

    invoke-virtual {v1, p2, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->set(II)V

    goto/16 :goto_1

    .end local v1           #matchs:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_a
    move-object v1, v4

    .line 2196
    goto/16 :goto_1
.end method

.method private matchT9Name(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    .locals 9
    .parameter "pattern"
    .parameter "key"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object v2, v5

    .line 2235
    :cond_0
    :goto_0
    return-object v2

    .line 2215
    :cond_1
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v0

    .line 2217
    .local v0, first:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 2218
    .local v3, maxLength:I
    const/4 v4, 0x0

    .line 2219
    .local v4, startIndex:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 2221
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2222
    .local v1, index:I
    if-gez v1, :cond_2

    move-object v2, v5

    .line 2224
    goto :goto_0

    .line 2227
    :cond_2
    invoke-direct {p0, p1, v1, p2, v8}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    move-result-object v2

    .line 2228
    .local v2, matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    if-eqz v2, :cond_3

    iget v6, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    if-gtz v6, :cond_0

    .line 2233
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 2234
    goto :goto_1

    .end local v1           #index:I
    .end local v2           #matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :cond_4
    move-object v2, v5

    .line 2235
    goto :goto_0
.end method

.method private matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .locals 4
    .parameter "item"
    .parameter "key"

    .prologue
    .line 2248
    iget-object v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    move-result-object v0

    .line 2249
    .local v0, matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    if-lez v2, :cond_0

    .line 2251
    iget-object v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    iget v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    invoke-static {v2, v3}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 2252
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v1, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 2253
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    .line 2256
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static normalizeData(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "mimeTypeId"

    .prologue
    .line 1548
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    .line 1549
    .local v0, phoneType:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1548
    .end local v0           #phoneType:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 1561
    move-object v0, p0

    .line 1562
    .local v0, normalizedNumber:Ljava/lang/String;
    sget-wide v2, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1571
    :cond_0
    :goto_0
    return-object v0

    .line 1566
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 1567
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v1, :cond_0

    .line 1568
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private prepareStatements()V
    .locals 2

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->closeStatements()V

    .line 1666
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,normalized_number,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1667
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET data=?, normalized_data=?, normalized_number=? WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1671
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1673
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1677
    return-void
.end method

.method public static rebuildAll(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 4
    .parameter "db"
    .parameter "context"

    .prologue
    .line 1760
    const-string v2, "DELETE FROM t9_lookup"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 1765
    .local v1, usingTransaction:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1766
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1770
    :cond_0
    const/4 v2, 0x0

    const-string v3, "raw_contacts.deleted=0"

    invoke-static {v2, p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1772
    const/4 v2, 0x0

    invoke-static {v2, p1, p0}, Lcom/android/providers/contacts/T9SearchSupport;->insertSPT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1773
    if-eqz v1, :cond_1

    .line 1774
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    :cond_1
    if-eqz v1, :cond_2

    .line 1780
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1786
    :cond_2
    :goto_1
    return-void

    .line 1762
    .end local v1           #usingTransaction:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1776
    .restart local v1       #usingTransaction:Z
    :catch_0
    move-exception v0

    .line 1777
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "T9SearchSupport"

    const-string v3, "rebuild t9 search database failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1779
    if-eqz v1, :cond_2

    .line 1780
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1779
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 1780
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v2
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "database"

    .prologue
    .line 1685
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq p1, v1, :cond_0

    .line 1686
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1689
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_0
    :goto_0
    return-void

    .line 1690
    :catch_0
    move-exception v0

    .line 1693
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1694
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V

    goto :goto_0
.end method


# virtual methods
.method public load()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->load()V

    .line 1446
    return-void
.end method

.method public onContactIdUpdated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 2430
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2435
    :goto_0
    return-void

    .line 2433
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactDeleted(J)V

    .line 2434
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactInserted(J)V

    goto :goto_0
.end method

.method public onDataDeleted(JJJ)V
    .locals 4
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const-wide/16 v2, 0x0

    .line 2550
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    .line 2553
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2

    .line 2561
    :cond_1
    :goto_0
    return-void

    .line 2557
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM t9_lookup WHERE data_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2559
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$IdType;->DataId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->deleteItem(Ljava/lang/Long;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    goto :goto_0
.end method

.method public onDataInserted(JJJLjava/lang/String;)V
    .locals 4
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v2, 0x0

    .line 2572
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    .line 2575
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2

    .line 2581
    :cond_1
    :goto_0
    return-void

    .line 2579
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->DataId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(JLcom/android/providers/contacts/T9SearchSupport$IdType;)V

    goto :goto_0
.end method

.method public onDataUpdated(JJJLjava/lang/String;)V
    .locals 6
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    .line 2517
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2518
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 2540
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    sget-wide v2, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v2, p5, v2

    if-eqz v2, :cond_2

    sget-wide v2, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v2, p5, v2

    if-nez v2, :cond_0

    .line 2525
    :cond_2
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    .line 2529
    invoke-static {p7, p5, p6}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeData(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2530
    .local v0, normalizedData:Ljava/lang/String;
    invoke-static {p7}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2531
    .local v1, normalizedNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2532
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2533
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2534
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2535
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2538
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v2, p1, p2, p7, v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->updateData(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisplayNameUpdated(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    .line 2477
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2485
    :goto_0
    return-void

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM t9_lookup WHERE contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->deleteItem(Ljava/lang/Long;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 2484
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(JLcom/android/providers/contacts/T9SearchSupport$IdType;)V

    goto :goto_0
.end method

.method public onPhotoUpdated(JJ)V
    .locals 2
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 2496
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2506
    :goto_0
    return-void

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2501
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2502
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2505
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->updatePhotoId(JJ)V

    goto :goto_0
.end method

.method public onRawContactDeleted(J)V
    .locals 3
    .parameter "rawContactId"

    .prologue
    .line 2445
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2452
    :goto_0
    return-void

    .line 2449
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM t9_lookup WHERE raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2451
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$IdType;->RawContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->deleteItem(Ljava/lang/Long;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    goto :goto_0
.end method

.method public onRawContactInserted(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 2462
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2467
    :goto_0
    return-void

    .line 2466
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->RawContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(JLcom/android/providers/contacts/T9SearchSupport$IdType;)V

    goto :goto_0
.end method

.method public onShowSpChanged(Z)V
    .locals 1
    .parameter "showSP"

    .prologue
    .line 2418
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mShowingSP:Ljava/lang/Boolean;

    .line 2419
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->reload()V

    .line 2420
    return-void
.end method

.method public onTimesContactedChanged(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 2591
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2600
    :goto_0
    return-void

    .line 2595
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2596
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2599
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->incTimesContacted(J)V

    goto :goto_0
.end method

.method public onTransactionBegin()V
    .locals 0

    .prologue
    .line 2391
    return-void
.end method

.method public onTransactionEnd()V
    .locals 0

    .prologue
    .line 2399
    return-void
.end method

.method public onTranscationCommit()V
    .locals 0

    .prologue
    .line 2407
    return-void
.end method

.method public onTranscationRollback()V
    .locals 0

    .prologue
    .line 2415
    return-void
.end method

.method public queryT9Name(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter "key"

    .prologue
    .line 2268
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x100

    if-ge v13, v14, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2269
    :cond_0
    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2335
    :goto_0
    return-object v3

    .line 2272
    :cond_1
    const-string v13, "T9SearchSupport"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[performance] ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] start to query "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v3, 0x0

    .line 2276
    .local v3, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->getMinimizedCandidate(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v7

    .line 2277
    .local v7, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    iget-object v13, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v13, v14, :cond_b

    .line 2279
    const/4 v10, 0x0

    .line 2280
    .local v10, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v9, 0x0

    .line 2282
    .local v9, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v13, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-ne v14, v13, :cond_7

    .line 2283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v4, fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v8, partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    .local v11, spFullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2287
    .local v12, spPartialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2288
    .local v2, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v13, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    move-result-object v9

    .line 2289
    if-eqz v9, :cond_2

    .line 2290
    invoke-virtual {v9}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->getMatchedLevel()I

    move-result v6

    .line 2291
    .local v6, matchLevel:I
    iget-object v13, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-static {v13}, Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2292
    const/4 v13, 0x3

    if-ne v6, v13, :cond_3

    .line 2293
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2294
    :cond_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_2

    .line 2295
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2298
    :cond_4
    const/4 v13, 0x3

    if-ne v6, v13, :cond_5

    .line 2299
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2300
    :cond_5
    const/4 v13, 0x1

    if-ne v6, v13, :cond_2

    .line 2301
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2308
    .end local v2           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .end local v6           #matchLevel:I
    :cond_6
    move-object v10, v4

    .line 2309
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2310
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2311
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2327
    .end local v4           #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v8           #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v11           #spFullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v12           #spPartialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :goto_2
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v3           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v3, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;)V

    .line 2329
    .restart local v3       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->addCache(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2334
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :goto_3
    const-string v13, "T9SearchSupport"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[performance] ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] finish to query "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2313
    .restart local v9       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2314
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2315
    .restart local v2       #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v13, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    move-result-object v9

    .line 2316
    if-eqz v9, :cond_8

    .line 2317
    invoke-virtual {v9}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->getMatchedLevel()I

    move-result v6

    .line 2318
    .restart local v6       #matchLevel:I
    const/4 v13, 0x3

    if-eq v6, v13, :cond_9

    const/4 v13, 0x1

    if-ne v6, v13, :cond_8

    .line 2320
    :cond_9
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2324
    .end local v2           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .end local v6           #matchLevel:I
    :cond_a
    sget-object v13, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->T9QUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 2331
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_b
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v3           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;)V

    .restart local v3       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_3
.end method

.method public queryT9Number(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "key"

    .prologue
    const/4 v10, 0x2

    .line 2347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x100

    if-lt v6, v7, :cond_1

    .line 2348
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2382
    :goto_0
    return-object v1

    .line 2351
    :cond_1
    const-string v6, "T9SearchSupport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[performance] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] start to query "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const/4 v1, 0x0

    .line 2355
    .local v1, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v6, p1, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->getMinimizedCandidate(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v3

    .line 2356
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 2358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2359
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v5, spResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2362
    .local v0, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v6, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 2364
    iget-object v6, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2365
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2368
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2372
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2374
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v1, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;)V

    .line 2376
    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mResultDepot:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;

    invoke-virtual {v6, p1, v10, v4}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->addCache(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2381
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v5           #spResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :goto_2
    const-string v6, "T9SearchSupport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[performance] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] finish to query "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2378
    :cond_5
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;)V

    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_2
.end method
