.class public final Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AntiSpamProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;",
        "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private Id_:Ljava/lang/Object;

.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private notes_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1265
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->guid_:Ljava/lang/Object;

    .line 1301
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->luid_:Ljava/lang/Object;

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->Id_:Ljava/lang/Object;

    .line 1373
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->notes_:Ljava/lang/Object;

    .line 1409
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1433
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1092
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1093
    return-void
.end method

.method static synthetic access$1100()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1

    .prologue
    .line 1086
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1096
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    .locals 2

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    .line 1128
    .local v0, result:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1129
    invoke-static {v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1131
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    .locals 5

    .prologue
    .line 1145
    new-instance v1, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;-><init>(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;Lcom/miui/milk/model/AntiSpamProtos$1;)V

    .line 1146
    .local v1, result:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1147
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1148
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1149
    or-int/lit8 v2, v2, 0x1

    .line 1151
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1302(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1153
    or-int/lit8 v2, v2, 0x2

    .line 1155
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1402(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1157
    or-int/lit8 v2, v2, 0x4

    .line 1159
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->Id_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->Id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1502(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1161
    or-int/lit8 v2, v2, 0x8

    .line 1163
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->notes_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->notes_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1602(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1165
    or-int/lit8 v2, v2, 0x10

    .line 1167
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1702(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1168
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1169
    or-int/lit8 v2, v2, 0x20

    .line 1171
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1802(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1172
    #setter for: Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->access$1902(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;I)I

    .line 1173
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 2

    .prologue
    .line 1119
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1208
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1209
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1214
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1216
    :sswitch_0
    return-object p0

    .line 1221
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1222
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1226
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1231
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->Id_:Ljava/lang/Object;

    goto :goto_0

    .line 1236
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->notes_:Ljava/lang/Object;

    goto :goto_0

    .line 1241
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1242
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 1243
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 1244
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1245
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto :goto_0

    .line 1250
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1251
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 1252
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 1253
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1254
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 1209
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1177
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-object p0

    .line 1178
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 1181
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 1184
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1185
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setId(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 1187
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1188
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 1190
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1191
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    .line 1193
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1420
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1421
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1423
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1441
    if-nez p1, :cond_0

    .line 1442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1444
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1445
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1447
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1280
    if-nez p1, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1283
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1284
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->guid_:Ljava/lang/Object;

    .line 1286
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1352
    if-nez p1, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1355
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1356
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->Id_:Ljava/lang/Object;

    .line 1358
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1316
    if-nez p1, :cond_0

    .line 1317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1319
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1320
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->luid_:Ljava/lang/Object;

    .line 1322
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1388
    if-nez p1, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1391
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->bitField0_:I

    .line 1392
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->notes_:Ljava/lang/Object;

    .line 1394
    return-object p0
.end method
