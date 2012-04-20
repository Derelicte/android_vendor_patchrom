.class public final Lcom/miui/milk/model/NoteProtos$NoteEntity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteEntity;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private alertDate_:J

.field private bgColorId_:I

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private createdDate_:J

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private folderTitle_:Ljava/lang/Object;

.field private folderType_:I

.field private guid_:Ljava/lang/Object;

.field private hasAttachment_:Z

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modifiedDate_:J

.field private snippet_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2143
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 2144
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteEntity;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->initFields()V

    .line 2145
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 995
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1253
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedIsInitialized:B

    .line 1306
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedSerializedSize:I

    .line 996
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Lcom/miui/milk/model/NoteProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;-><init>(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1253
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedIsInitialized:B

    .line 1306
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedSerializedSize:I

    .line 997
    return-void
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/miui/milk/model/NoteProtos$NoteEntity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-boolean p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/NoteProtos$NoteEntity;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/NoteProtos$NoteEntity;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 990
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 1

    .prologue
    .line 1001
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteEntity;

    return-object v0
.end method

.method private getFolderTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    .line 1198
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1199
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1201
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    .line 1204
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    .line 1031
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1032
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1034
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    .line 1037
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    .line 1063
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1064
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1066
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    .line 1069
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getSnippetBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    .line 1145
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1146
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1148
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    .line 1151
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1239
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    .line 1240
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    .line 1241
    iput-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J

    .line 1242
    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I

    .line 1243
    iput-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J

    .line 1244
    iput-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J

    .line 1245
    iput-boolean v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z

    .line 1246
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    .line 1247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    .line 1248
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    .line 1249
    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I

    .line 1250
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1251
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1252
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1

    .prologue
    .line 1440
    #calls: Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->access$1400()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1443
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getAlertDate()J
    .locals 2

    .prologue
    .line 1080
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J

    return-wide v0
.end method

.method public getBgColorId()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I

    return v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 1100
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J

    return-wide v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    return-object v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    .line 1184
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1185
    check-cast v1, Ljava/lang/String;

    .line 1193
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1187
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1189
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1191
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1193
    goto :goto_0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    .line 1017
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1018
    check-cast v1, Ljava/lang/String;

    .line 1026
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1020
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1022
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1026
    goto :goto_0
.end method

.method public getHasAttachment()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z

    return v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    .line 1049
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1050
    check-cast v1, Ljava/lang/String;

    .line 1058
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1052
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1054
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1058
    goto :goto_0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 1110
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1308
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedSerializedSize:I

    .line 1309
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1365
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1311
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1312
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1313
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1316
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1317
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1320
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 1321
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1324
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 1325
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1328
    :cond_4
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 1329
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1332
    :cond_5
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 1333
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1336
    :cond_6
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 1337
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1340
    :cond_7
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 1341
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1344
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 1345
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1348
    :cond_9
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    .line 1349
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1352
    :cond_a
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    .line 1353
    const/16 v3, 0xb

    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1356
    :cond_b
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    .line 1357
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v4}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1360
    :cond_c
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1361
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v4}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1364
    :cond_d
    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedSerializedSize:I

    move v2, v1

    .line 1365
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    .line 1131
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1132
    check-cast v1, Ljava/lang/String;

    .line 1140
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1136
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1138
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1140
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAlertDate()Z
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBgColorId()Z
    .locals 2

    .prologue
    .line 1087
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 1232
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatedDate()Z
    .locals 2

    .prologue
    .line 1097
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFolderTitle()Z
    .locals 2

    .prologue
    .line 1180
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFolderType()Z
    .locals 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1013
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasAttachment()Z
    .locals 2

    .prologue
    .line 1117
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 1045
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedDate()Z
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnippet()Z
    .locals 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1255
    iget-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedIsInitialized:B

    .line 1256
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1259
    :goto_0
    return v1

    .line 1256
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1258
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1

    .prologue
    .line 1445
    invoke-static {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1264
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSerializedSize()I

    .line 1265
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1268
    :cond_0
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1271
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 1272
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1274
    :cond_2
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 1275
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1277
    :cond_3
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 1278
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1280
    :cond_4
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1281
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1283
    :cond_5
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 1284
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1286
    :cond_6
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 1287
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1289
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1290
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1292
    :cond_8
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1293
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1295
    :cond_9
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1296
    const/16 v1, 0xb

    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1298
    :cond_a
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1299
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v2}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1301
    :cond_b
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1302
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v2}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1304
    :cond_c
    return-void
.end method
