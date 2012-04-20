.class public final Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SyncRootProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SyncRootProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

.field private static final serialVersionUID:J


# instance fields
.field private addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

.field private antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

.field private bitField0_:I

.field private calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

.field private conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

.field private mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

.field private mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

.field private note_:Lcom/miui/milk/model/NoteProtos$Notes;

.field private setting_:Lcom/miui/milk/model/SettingProtos$Settings;

.field private version_:Ljava/lang/Object;

.field private wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1154
    new-instance v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    .line 1155
    sget-object v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    invoke-direct {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->initFields()V

    .line 1156
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 222
    iput-byte v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 269
    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;Lcom/miui/milk/model/SyncRootProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;-><init>(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 222
    iput-byte v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 269
    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 65
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method private getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    .line 199
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 200
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 202
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    .line 205
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
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 211
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 212
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 213
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 214
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->getDefaultInstance()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 215
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 216
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->getDefaultInstance()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    .line 217
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 218
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 219
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 397
    #calls: Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->access$100()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    #calls: Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildParsed()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-static {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->access$000(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    #calls: Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildParsed()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-static {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->access$000(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object v0
.end method

.method public getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method public getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    return-object v0
.end method

.method public getConflictContacts()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    return-object v0
.end method

.method public getMetadata()Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    return-object v0
.end method

.method public getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    return-object v0
.end method

.method public getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    return-object v0
.end method

.method public getNote()Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 271
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 272
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 320
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 274
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 275
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 276
    iget-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 280
    iget-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 284
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 287
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 288
    iget-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 292
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 295
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 296
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 300
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 304
    iget-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 308
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 311
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 312
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 315
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 316
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 319
    :cond_b
    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    move v1, v0

    .line 320
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSetting()Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    .line 185
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 186
    check-cast v1, Ljava/lang/String;

    .line 194
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 188
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 190
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iput-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 194
    goto :goto_0
.end method

.method public getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    return-object v0
.end method

.method public hasAddressBook()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    iget v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAntispam()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasCalllog()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasConflictContacts()Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasMetadata()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasMmsCollection()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasMmsSms()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasNote()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasSetting()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public hasWifi()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-byte v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 225
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 228
    :goto_0
    return v1

    .line 225
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 227
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getSerializedSize()I

    .line 234
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 237
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 240
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 241
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 243
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 244
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 246
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 247
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 249
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 250
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 252
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 253
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 255
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 256
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 258
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 259
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 261
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 262
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 264
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 265
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 267
    :cond_a
    return-void
.end method
