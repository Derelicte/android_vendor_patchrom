.class public Lcom/google/android/syncadapters/contacts/GalProvider;
.super Landroid/content/ContentProvider;
.source "GalProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;
    }
.end annotation


# static fields
.field private static final sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

.field private mThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 94
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    .line 117
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.contacts.gal.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 185
    return-void
.end method

.method private addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "row"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method private buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    const/4 v10, -0x1

    .line 742
    const/4 v9, -0x1

    .line 743
    const/4 v8, -0x1

    .line 744
    const/4 v7, -0x1

    .line 745
    const/4 v6, -0x1

    .line 746
    const/4 v5, -0x1

    .line 747
    const/4 v4, -0x1

    .line 748
    const/4 v3, -0x1

    .line 750
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v2, v11, :cond_9

    .line 751
    aget-object v11, p1, v2

    .line 752
    const-string v12, "display_name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "display_name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v10, v2

    .line 750
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    :cond_2
    const-string v12, "display_name_alt"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v9, v2

    .line 756
    goto :goto_1

    .line 757
    :cond_3
    const-string v12, "data1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v8, v2

    .line 758
    goto :goto_1

    .line 759
    :cond_4
    const-string v12, "has_phone_number"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v7, v2

    .line 760
    goto :goto_1

    .line 761
    :cond_5
    const-string v12, "photo_uri"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v6, v2

    .line 762
    goto :goto_1

    .line 763
    :cond_6
    const-string v12, "photo_thumb_uri"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v5, v2

    .line 764
    goto :goto_1

    .line 765
    :cond_7
    const-string v12, "_id"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move v4, v2

    .line 766
    goto :goto_1

    .line 767
    :cond_8
    const-string v12, "lookup"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v3, v2

    .line 768
    goto :goto_1

    .line 775
    :cond_9
    new-instance v12, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 777
    const/4 v11, 0x1

    .line 779
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    .line 780
    :cond_a
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 781
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 783
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v13

    .line 784
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 785
    if-ltz v14, :cond_a

    .line 789
    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 791
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v14

    .line 793
    if-eqz v14, :cond_a

    .line 798
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v15, v15, [Ljava/lang/Object;

    .line 799
    if-ltz v10, :cond_b

    .line 800
    aput-object v14, v15, v10

    .line 803
    :cond_b
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_c

    .line 804
    invoke-static {v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 805
    aput-object v14, v15, v9

    .line 808
    :cond_c
    if-ltz v7, :cond_d

    .line 809
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v14

    .line 810
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 811
    const/4 v14, -0x1

    if-eq v7, v14, :cond_d

    .line 812
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v15, v7

    .line 817
    :cond_d
    if-ltz v6, :cond_e

    .line 818
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v6

    .line 821
    :cond_e
    if-ltz v5, :cond_f

    .line 822
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v5

    .line 825
    :cond_f
    const/4 v14, -0x1

    if-eq v4, v14, :cond_10

    .line 826
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v4

    .line 829
    :cond_10
    const/4 v14, -0x1

    if-eq v3, v14, :cond_11

    .line 830
    aput-object v13, v15, v3

    .line 836
    :cond_11
    if-eqz p4, :cond_13

    .line 839
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v2

    .line 840
    if-eqz v2, :cond_16

    .line 841
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 842
    if-ltz v8, :cond_12

    .line 843
    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v8

    .line 845
    :cond_12
    invoke-virtual {v12, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 846
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 851
    :cond_13
    if-ltz v8, :cond_14

    .line 852
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v2

    .line 853
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 854
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 855
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v8

    .line 858
    :cond_14
    invoke-virtual {v12, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    add-int/lit8 v2, v11, 0x1

    :goto_4
    move v11, v2

    .line 861
    goto/16 :goto_2

    .line 862
    :catch_0
    move-exception v2

    .line 863
    const-string v3, "GalProvider"

    const-string v4, "Exception when parsing feed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    :cond_15
    :goto_5
    return-object v12

    .line 864
    :catch_1
    move-exception v2

    .line 865
    const-string v3, "GalProvider"

    const-string v4, "Exception when parsing feed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_16
    move v2, v11

    goto :goto_4
.end method

.method private createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter "values"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ContentValues;",
            "J)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_1

    .line 579
    const/4 v3, 0x0

    .line 589
    :cond_0
    return-object v3

    .line 581
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 582
    .local v3, row:[Ljava/lang/Object;
    const-string v5, "contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string v5, "raw_contact_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v3, p1, v5, v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 585
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    .local v0, columnName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 587
    .local v4, value:Ljava/lang/Object;
    invoke-direct {p0, v3, p1, v0, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "accountName"

    .prologue
    .line 729
    iget-object v5, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 731
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 732
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return-object v0

    .line 731
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 929
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 936
    :cond_0
    :goto_0
    return-object p1

    .line 932
    :cond_1
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 933
    goto :goto_0
.end method

.method private static getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 881
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v1

    .line 882
    if-eqz v1, :cond_3

    .line 883
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-object v0

    .line 888
    :cond_1
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 891
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :cond_2
    if-nez v0, :cond_0

    .line 897
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 898
    goto :goto_0

    .line 903
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 905
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 906
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 907
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 908
    goto :goto_0

    .line 910
    :cond_4
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 914
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 916
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .line 917
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 919
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .locals 16
    .parameter "accountName"
    .parameter "lookup"

    .prologue
    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 675
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 676
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    .line 677
    :cond_0
    const-string v12, "GalProvider"

    const-string v13, "getEntry(): Not connected"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v12, 0x0

    .line 723
    :goto_0
    return-object v12

    .line 681
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 682
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_2

    .line 683
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v12, 0x0

    goto :goto_0

    .line 687
    :cond_2
    new-instance v2, Lcom/google/android/syncadapters/contacts/AuthInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v13, "cp"

    invoke-direct {v2, v12, v1, v13}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 689
    .local v2, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 690
    .local v9, p:I
    if-gez v9, :cond_3

    .line 691
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid account name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v12, 0x0

    goto :goto_0

    .line 695
    :cond_3
    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, domain:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/full/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 697
    .local v11, url:Ljava/lang/String;
    const-string v12, "GalProvider"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 698
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getEntry("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): GData URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 701
    .local v3, callingId:J
    iget-object v12, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v12

    const/high16 v13, 0x40

    or-int/2addr v12, v13

    const/high16 v13, 0x8

    or-int/2addr v12, v13

    or-int/lit8 v10, v12, 0x2

    .line 706
    .local v10, tag:I
    :try_start_0
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    sget-object v13, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 719
    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 720
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 721
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 712
    :catch_0
    move-exception v7

    .line 713
    .local v7, e:Ljava/io/IOException;
    :try_start_1
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 720
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 721
    .end local v7           #e:Ljava/io/IOException;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 714
    :catch_1
    move-exception v7

    .line 715
    .local v7, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_2
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 720
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_1

    .line 719
    .end local v7           #e:Lcom/google/wireless/gdata2/GDataException;
    :catchall_0
    move-exception v12

    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 720
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 721
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 719
    throw v12

    .line 716
    :catch_2
    move-exception v12

    .line 719
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 720
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_1
.end method

.method private getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 16
    .parameter "accountName"
    .parameter "query"
    .parameter "projection"

    .prologue
    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 614
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 615
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    .line 616
    :cond_0
    const-string v12, "GalProvider"

    const-string v13, "getFeed(): Not connected"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v12, 0x0

    .line 669
    :goto_0
    return-object v12

    .line 620
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 621
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_2

    .line 622
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v12, 0x0

    goto :goto_0

    .line 626
    :cond_2
    new-instance v2, Lcom/google/android/syncadapters/contacts/AuthInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v13, "cp"

    invoke-direct {v2, v12, v1, v13}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 628
    .local v2, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 629
    .local v9, p:I
    if-gez v9, :cond_3

    .line 630
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid account name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v12, 0x0

    goto :goto_0

    .line 634
    :cond_3
    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, domain:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.google.com/m8/feeds/gal/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, url:Ljava/lang/String;
    const-string v12, "GalProvider"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 637
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFeed("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): GData URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 640
    .local v3, callingId:J
    iget-object v12, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v12

    const/high16 v13, 0x40

    or-int/2addr v12, v13

    const/high16 v13, 0x8

    or-int/2addr v12, v13

    or-int/lit8 v10, v12, 0x1

    .line 645
    .local v10, tag:I
    :try_start_0
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    sget-object v13, Lcom/google/android/syncadapters/contacts/GalProvider;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    .line 665
    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 667
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 651
    :catch_0
    move-exception v7

    .line 652
    .local v7, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :try_start_1
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ForbiddenException when getting feed. Probably a non Gmail consumer account."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/wireless/gdata2/client/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    const/4 v12, 0x0

    .line 665
    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_1

    .line 656
    .end local v7           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :catch_1
    move-exception v7

    .line 657
    .local v7, e:Ljava/io/IOException;
    :try_start_2
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 667
    .end local v7           #e:Ljava/io/IOException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 658
    :catch_2
    move-exception v7

    .line 659
    .local v7, e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :try_start_3
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_2

    .line 660
    .end local v7           #e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :catch_3
    move-exception v7

    .line 661
    .local v7, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_4
    const-string v12, "GalProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception when getting feed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 665
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_2

    .line 665
    .end local v7           #e:Lcom/google/wireless/gdata2/GDataException;
    :catchall_0
    move-exception v12

    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 667
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw v12

    .line 662
    :catch_4
    move-exception v12

    .line 665
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 666
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_2
.end method

.method private getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v0

    .line 941
    if-eqz v0, :cond_2

    .line 942
    if-eqz p3, :cond_0

    .line 943
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.google.contacts.gal.provider"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    const-string v1, "GalProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    const-string v1, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding photo uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    return-object v0
.end method

.method private handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 24
    .parameter "projection"
    .parameter "accountName"
    .parameter "lookupKey"
    .parameter "contactId"

    .prologue
    .line 391
    const-string v21, "GalProvider"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 392
    const-string v21, "GalProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleContact("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    if-nez p2, :cond_2

    .line 396
    const-string v21, "GalProvider"

    const-string v22, "Account name cannot be null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 566
    :cond_1
    :goto_0
    return-object v6

    .line 399
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-result-object v8

    .line 400
    .local v8, entry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    if-nez v8, :cond_3

    .line 401
    const-string v21, "GalProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Can\'t find entry: accountName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " lookupKey: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 408
    .local v5, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 409
    aget-object v21, p1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 412
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 413
    .local v18, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 414
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 418
    :cond_5
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 419
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 423
    :cond_6
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 426
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 429
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 433
    .local v14, object:Ljava/lang/Object;
    check-cast v14, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .end local v14           #object:Ljava/lang/Object;
    invoke-static {v14}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2

    .line 438
    :cond_7
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 439
    .local v13, o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_3

    .line 444
    :cond_8
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 445
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_4

    .line 450
    :cond_9
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 451
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/Organization;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_5

    .line 455
    :cond_a
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .restart local v13       #o:Ljava/lang/Object;
    move-object v10, v13

    .line 456
    check-cast v10, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    .line 457
    .local v10, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual {v10}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v21

    if-nez v21, :cond_b

    .line 461
    invoke-static {v10}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_6

    .line 465
    .end local v10           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v13           #o:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 466
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Ljava/lang/String;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_7

    .line 470
    :cond_d
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 471
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_8

    .line 475
    :cond_e
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 476
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/Language;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_9

    .line 481
    :cond_f
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 482
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_a

    .line 487
    :cond_10
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 488
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_b

    .line 492
    :cond_11
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 493
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/Jot;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_c

    .line 497
    :cond_12
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 498
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_d

    .line 503
    :cond_13
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 504
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_e

    .line 509
    :cond_14
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 510
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/Relation;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_f

    .line 515
    :cond_15
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 516
    .restart local v13       #o:Ljava/lang/Object;
    check-cast v13, Lcom/google/wireless/gdata2/contacts/data/Event;

    .end local v13           #o:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_10

    .line 520
    :cond_16
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .restart local v13       #o:Ljava/lang/Object;
    move-object/from16 v16, v13

    .line 521
    check-cast v16, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    .line 522
    .local v16, property:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    const-string v21, "android"

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 523
    invoke-static/range {v16 .. v16}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    .line 524
    .local v20, v:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->createContactRow(Ljava/util/Map;Landroid/content/ContentValues;J)[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->addRow(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_11

    .line 530
    .end local v13           #o:Ljava/lang/Object;
    .end local v16           #property:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .end local v20           #v:Landroid/content/ContentValues;
    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1b

    .line 531
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 532
    .local v9, first:[Ljava/lang/Object;
    const-string v21, "contact_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/GalProvider;->getDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, displayName:Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAlternateDisplayName(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, alternateDisplayName:Ljava/lang/String;
    const-string v21, "raw_contact_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v21, "display_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v5, v1, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v21, "display_name_alt"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v5, v1, v4}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v21, "account_type"

    const-string v22, "com.google"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    const-string v21, "account_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    const-string v21, "raw_contact_is_read_only"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    const-string v21, "is_read_only"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getPhotoUri(Ljava/lang/String;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;Z)Ljava/lang/String;

    move-result-object v15

    .line 548
    .local v15, photoUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_19

    .line 549
    const-string v21, "photo_uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v5, v1, v15}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    const-string v21, "photo_thumb_uri"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/syncadapters/contacts/GalProvider;->getThumbnailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    :cond_19
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 556
    .local v6, cursor:Landroid/database/MatrixCursor;
    const/4 v11, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, rowsSize:I
    :goto_12
    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 557
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    .line 558
    .local v17, row:[Ljava/lang/Object;
    if-nez v17, :cond_1a

    .line 556
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 561
    :cond_1a
    const-string v21, "data_id"

    add-int/lit8 v22, v11, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/syncadapters/contacts/GalProvider;->putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 566
    .end local v4           #alternateDisplayName:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/MatrixCursor;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v9           #first:[Ljava/lang/Object;
    .end local v15           #photoUrl:Ljava/lang/String;
    .end local v17           #row:[Ljava/lang/Object;
    .end local v19           #rowsSize:I
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "projection"

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v14, "com.google"

    invoke-virtual {v13, v14}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 294
    .local v2, accounts:[Landroid/accounts/Account;
    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 295
    .local v6, cursor:Landroid/database/MatrixCursor;
    if-eqz v2, :cond_b

    .line 296
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_b

    aget-object v1, v3, v9

    .line 297
    .local v1, account:Landroid/accounts/Account;
    const-string v13, "GalProvider"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 298
    const-string v13, "GalProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleDirectories: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v11, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 302
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/syncadapters/contacts/GalProvider;->mayHaveGalSupport(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 296
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 305
    :cond_1
    move-object/from16 v0, p1

    array-length v13, v0

    new-array v12, v13, [Ljava/lang/Object;

    .line 307
    .local v12, row:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v8, v13, :cond_a

    .line 308
    aget-object v5, p1, v8

    .line 309
    .local v5, column:Ljava/lang/String;
    const-string v13, "accountName"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 310
    aput-object v11, v12, v8

    .line 307
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 311
    :cond_3
    const-string v13, "accountType"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 312
    iget-object v13, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v13, v12, v8

    goto :goto_3

    .line 313
    :cond_4
    const-string v13, "typeResourceId"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 314
    const v13, 0x7f050001

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_3

    .line 315
    :cond_5
    const-string v13, "displayName"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 318
    const/16 v13, 0x40

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 319
    .local v4, atIndex:I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    if-ge v4, v13, :cond_6

    .line 320
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 322
    .local v7, firstLetter:C
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v4, 0x2

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_3

    .line 324
    .end local v7           #firstLetter:C
    :cond_6
    aput-object v11, v12, v8

    goto :goto_3

    .line 326
    .end local v4           #atIndex:I
    :cond_7
    const-string v13, "exportSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 327
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto :goto_3

    .line 328
    :cond_8
    const-string v13, "shortcutSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 329
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto/16 :goto_3

    .line 330
    :cond_9
    const-string v13, "photoSupport"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 331
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    goto/16 :goto_3

    .line 334
    .end local v5           #column:Ljava/lang/String;
    :cond_a
    invoke-virtual {v6, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 337
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #row:[Ljava/lang/Object;
    :cond_b
    return-object v6
.end method

.method private handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "accountName"
    .parameter "filter"
    .parameter "maxResults"
    .parameter "emailFilter"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    .line 346
    const-string v4, "GalProvider"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 383
    :cond_1
    :goto_0
    return-object v0

    .line 355
    :cond_2
    if-nez p2, :cond_3

    .line 356
    const-string v4, "GalProvider"

    const-string v5, "Account name cannot be null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v3, query:Ljava/lang/StringBuilder;
    const-string v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, "&max-results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    if-eqz p5, :cond_5

    .line 366
    const-string v2, "/autocomplete/"

    .line 371
    .local v2, projectionPath:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, v2}, Lcom/google/android/syncadapters/contacts/GalProvider;->getFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v1

    .line 372
    .local v1, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    if-eqz v1, :cond_1

    .line 377
    :try_start_0
    invoke-direct {p0, p1, v1, p2, p5}, Lcom/google/android/syncadapters/contacts/GalProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/google/wireless/gdata2/parser/GDataParser;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 379
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "GalProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 380
    const-string v4, "GalProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFilter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_4
    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    goto :goto_0

    .line 368
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v2           #projectionPath:Ljava/lang/String;
    :cond_5
    const-string v2, "/autocompletepic/"

    .line 369
    .restart local v2       #projectionPath:Ljava/lang/String;
    const-string v4, "&group=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    .restart local v1       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    throw v4
.end method

.method private mayHaveGalSupport(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 607
    const-string v0, "@gmail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@googlemail.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putContactRowValue([Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "row"
    .parameter
    .parameter "columnName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 597
    .local p2, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p4, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 601
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p4, p1, v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 267
    sget-object v1, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 268
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 272
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 270
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    .line 128
    new-instance v1, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    new-instance v2, Lcom/google/android/common/gdata2/AndroidGDataClient;

    const-string v3, "Android-GData-Contacts/1.3"

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v4, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v4}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mThumbnailSize:I

    .line 134
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode must be \"r\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, accountName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 229
    .local v10, photoUrl:Ljava/lang/String;
    const-string v0, "GalProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    invoke-direct {p0, v7}, Lcom/google/android/syncadapters/contacts/GalProvider;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    .line 233
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_2

    .line 234
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 238
    :cond_2
    new-instance v8, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "cp"

    invoke-direct {v8, v0, v6, v1}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 239
    .local v8, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    or-int/lit8 v11, v0, 0x3

    .line 244
    .local v11, tag:I
    :try_start_0
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 247
    .local v4, inputStream:Ljava/io/InputStream;
    new-instance v12, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;

    invoke-direct {v5, v7, v10}, Lcom/google/android/syncadapters/contacts/GalProvider$PhotoDataWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 259
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 260
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v0, v12

    .line 247
    goto :goto_0

    .line 250
    .end local v4           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 251
    .local v9, e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :try_start_1
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 260
    .end local v9           #e:Lcom/google/wireless/gdata2/client/ResourceNotFoundException;
    :goto_1
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 262
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :catch_1
    move-exception v9

    .line 253
    .local v9, e:Ljava/io/IOException;
    :try_start_2
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_1

    .line 254
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 255
    .local v9, e:Lcom/google/wireless/gdata2/GDataException;
    :try_start_3
    const-string v0, "GalProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_1

    .end local v9           #e:Lcom/google/wireless/gdata2/GDataException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v11, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 260
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 259
    throw v0

    .line 256
    :catch_3
    move-exception v0

    .line 259
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 140
    const-string v1, "GalProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/contacts/GalProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 145
    .local v14, match:I
    packed-switch v14, :pswitch_data_0

    .line 182
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 147
    :pswitch_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleDirectories([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, accountName:Ljava/lang/String;
    const-string v1, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, limit:Ljava/lang/String;
    if-eqz v13, :cond_1

    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 161
    .local v5, maxResults:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, filter:Ljava/lang/String;
    const/4 v1, 0x4

    if-ne v14, v1, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 156
    .end local v4           #filter:Ljava/lang/String;
    .end local v5           #maxResults:I
    :cond_1
    const/16 v5, 0x14

    goto :goto_1

    .line 157
    :catch_0
    move-exception v12

    .line 158
    .local v12, e:Ljava/lang/NumberFormatException;
    const-string v1, "GalProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query: invalid limit parameter: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v5, 0x14

    .restart local v5       #maxResults:I
    goto :goto_1

    .line 163
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #filter:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 168
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #filter:Ljava/lang/String;
    .end local v5           #maxResults:I
    .end local v13           #limit:Ljava/lang/String;
    :pswitch_2
    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 171
    .local v9, lookupKey:Ljava/lang/String;
    const-wide/16 v10, 0x1

    move-object v6, p0

    move-object/from16 v7, p2

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 174
    .end local v3           #accountName:Ljava/lang/String;
    .end local v9           #lookupKey:Ljava/lang/String;
    :pswitch_3
    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3       #accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 176
    .restart local v9       #lookupKey:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .local v10, contactId:J
    move-object v6, p0

    move-object/from16 v7, p2

    move-object v8, v3

    .line 178
    invoke-direct/range {v6 .. v11}, Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
