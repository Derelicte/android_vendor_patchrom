.class Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
.super Ljava/util/ArrayList;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactBackValue:I

.field private mContactIndexArray:[I

.field private mContactIndexCount:I

.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 950
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 953
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 955
    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    .line 957
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    return-object v0
.end method

.method private cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cv"
    .parameter "column"
    .parameter "oldValue"

    .prologue
    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1173
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1179
    :cond_0
    :goto_0
    return v0

    .line 1176
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;
    .locals 7
    .parameter
    .parameter "contentItemType"
    .parameter "type"
    .parameter "stringType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Entity$NamedContentValues;"
        }
    .end annotation

    .prologue
    .line 1017
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v4, 0x0

    .line 1020
    .local v4, result:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1021
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1022
    .local v5, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1023
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1024
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1026
    if-eqz p4, :cond_1

    .line 1027
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1028
    move-object v4, v3

    goto :goto_0

    .line 1034
    :cond_1
    if-ltz p3, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p3, :cond_0

    .line 1036
    :cond_2
    move-object v4, v3

    goto :goto_0

    .line 1044
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v4, :cond_4

    .line 1045
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1049
    :cond_4
    return-object v4
.end method

.method private findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter "type"
    .parameter "contentItemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1066
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1067
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1068
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1069
    const-string v8, "mimetype"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1071
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 1072
    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1073
    .local v5, subtype:I
    if-ne p2, v5, :cond_0

    .line 1077
    .end local v5           #subtype:I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1084
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 1085
    .local v7, values:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1089
    .end local v7           #values:Landroid/content/Entity$NamedContentValues;
    :cond_3
    return-object v4
.end method

.method private newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 4
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1143
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1144
    .local v1, contactId:I
    if-eqz p1, :cond_0

    .line 1145
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1149
    :cond_0
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1152
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-nez p1, :cond_1

    .line 1153
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1159
    :goto_0
    const-string v2, "mimetype"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1160
    return-object v0

    .line 1155
    :cond_1
    const-string v2, "raw_contact_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    goto :goto_0
.end method

.method private typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 2
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1137
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 962
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 964
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addBirthday(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "birthday"

    .prologue
    const/4 v3, 0x3

    .line 1199
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1201
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1202
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1205
    :cond_0
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1206
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1207
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V
    .locals 4
    .parameter "entity"
    .parameter "business"

    .prologue
    .line 1252
    const-string v2, "vnd.android.cursor.item/eas_business"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1253
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1254
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1263
    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1264
    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1265
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "entity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "vnd.android.cursor.item/eas_children"

    invoke-direct {p0, p1, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1184
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    .line 1185
    .local v2, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1186
    .local v1, child:Ljava/lang/String;
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 1188
    .end local v1           #child:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1189
    return-void
.end method

.method public addGroup(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "group"

    .prologue
    .line 1192
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1194
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1195
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1196
    return-void
.end method

.method public addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "prefix"
    .parameter "givenName"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "suffix"
    .parameter "displayName"
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "fileAs"

    .prologue
    .line 1213
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1214
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1215
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data2"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data3"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data6"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1225
    :cond_0
    const-string v2, "data2"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1226
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1227
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1228
    const-string v2, "data6"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1229
    const-string v2, "data7"

    invoke-virtual {v0, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1230
    const-string v2, "data9"

    invoke-virtual {v0, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1231
    const-string v2, "data4"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1233
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNickname(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 1311
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1313
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1314
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1317
    :cond_0
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1318
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1319
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNote(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 7
    .parameter "entity"
    .parameter "note"

    .prologue
    .line 1437
    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1438
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1439
    .local v2, cv:Landroid/content/ContentValues;
    if-nez p2, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1441
    if-eqz v2, :cond_2

    const-string v5, "data1"

    invoke-direct {p0, v2, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1447
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1448
    .local v4, len:I
    const/4 v3, 0x0

    .line 1449
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1450
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1451
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1455
    .end local v1           #c:C
    :cond_3
    if-eq v3, v4, :cond_0

    .line 1457
    const-string v5, "data1"

    invoke-virtual {v0, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1458
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1449
    .restart local v1       #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "company"
    .parameter "title"
    .parameter "department"
    .parameter "yomiCompanyName"
    .parameter "officeLocation"

    .prologue
    .line 1418
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1419
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1420
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1427
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1428
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1429
    const-string v2, "data4"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1430
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1431
    const-string v2, "data8"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1432
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1433
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V
    .locals 4
    .parameter "entity"
    .parameter "personal"

    .prologue
    .line 1237
    const-string v2, "vnd.android.cursor.item/eas_personal"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1238
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1239
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1246
    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1247
    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1248
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhone(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "phone"

    .prologue
    .line 1278
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1279
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1280
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1283
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1284
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1285
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhoto(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "photo"

    .prologue
    .line 1269
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1272
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1273
    .local v1, pic:[B
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1274
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1275
    return-void
.end method

.method public addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "country"
    .parameter "code"

    .prologue
    .line 1324
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1326
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1327
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data10"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1334
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1335
    const-string v2, "data7"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1336
    const-string v2, "data4"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1337
    const-string v2, "data10"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1338
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1339
    const-string v2, "data8"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1340
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addRelation(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1300
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1301
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1302
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1305
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1306
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1307
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 18
    .parameter "entity"
    .parameter
    .parameter "mimeType"
    .parameter "type"
    .parameter "maxRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v12

    .line 1353
    .local v12, oldValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v6

    .line 1354
    .local v6, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_0

    .line 1355
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1356
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 1360
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v15, rowsToReplace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1364
    .local v11, numRows:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1365
    .local v13, row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    const/4 v7, 0x0

    .line 1367
    .local v7, found:Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1368
    .local v10, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1369
    .local v4, cv:Landroid/content/ContentValues;
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1370
    .local v5, data:Ljava/lang/String;
    const/4 v14, -0x1

    .line 1371
    .local v14, rowType:I
    const-string v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1372
    const-string v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1374
    :cond_3
    invoke-interface {v13, v14, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->isSameAs(ILjava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1375
    const-string v16, "com.android.exchange.FOUND_ROW"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1377
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1378
    const/4 v7, 0x1

    .line 1382
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v5           #data:Ljava/lang/String;
    .end local v10           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v14           #rowType:I
    :cond_4
    if-nez v7, :cond_1

    .line 1384
    move/from16 v0, p5

    if-ge v11, v0, :cond_5

    .line 1386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v3

    .line 1387
    .local v3, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v13, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1388
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1389
    add-int/lit8 v11, v11, 0x1

    .line 1390
    goto :goto_0

    .line 1392
    .end local v3           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_5
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1398
    .end local v7           #found:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1399
    .restart local v13       #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1400
    .restart local v10       #ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1402
    .restart local v4       #cv:Landroid/content/ContentValues;
    const-string v16, "com.android.exchange.FOUND_ROW"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 1404
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1409
    .restart local v3       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v13, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1410
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1414
    .end local v3           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v13           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_9
    return-void
.end method

.method public addWebpage(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "url"

    .prologue
    .line 1289
    const-string v2, "vnd.android.cursor.item/website"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1290
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1291
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1294
    :cond_0
    const-string v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1295
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1296
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 4
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"
    .parameter "stringType"

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1111
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-eqz p1, :cond_0

    .line 1112
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;

    move-result-object v1

    .line 1114
    .local v1, ncv:Landroid/content/Entity$NamedContentValues;
    if-eqz v1, :cond_0

    .line 1115
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .end local v0           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1123
    .end local v1           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v0       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_0
    if-nez v0, :cond_1

    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1129
    :cond_1
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 979
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 985
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 991
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1004
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1005
    return-void

    .line 996
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1004
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 999
    :catch_1
    move-exception v0

    .line 1001
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v1, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newContact(Ljava/lang/String;)V
    .locals 5
    .parameter "serverId"

    .prologue
    .line 968
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 970
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 973
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 974
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    iget v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    aput v4, v2, v3

    .line 975
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 976
    return-void
.end method
