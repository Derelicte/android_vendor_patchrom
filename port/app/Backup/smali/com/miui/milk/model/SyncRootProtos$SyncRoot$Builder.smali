.class public final Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SyncRootProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SyncRootProtos$SyncRoot;",
        "Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

.field private antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

.field private bitField0_:I

.field private calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

.field private conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

.field private metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

.field private mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

.field private mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

.field private note_:Lcom/miui/milk/model/NoteProtos$Notes;

.field private setting_:Lcom/miui/milk/model/SettingProtos$Settings;

.field private version_:Ljava/lang/Object;

.field private wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 685
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 728
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 771
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 814
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 857
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->getDefaultInstance()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 900
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 943
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->getDefaultInstance()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    .line 986
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 1029
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 1072
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 1115
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->version_:Ljava/lang/Object;

    .line 410
    invoke-direct {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->maybeForceBuilderInitialization()V

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildParsed()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 465
    .local v0, result:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-static {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 469
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 456
    .local v0, result:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-static {v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 459
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .locals 5

    .prologue
    .line 473
    new-instance v1, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;-><init>(Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;Lcom/miui/milk/model/SyncRootProtos$1;)V

    .line 474
    .local v1, result:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 475
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 476
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 477
    or-int/lit8 v2, v2, 0x1

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$302(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 480
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 481
    or-int/lit8 v2, v2, 0x2

    .line 483
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$402(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 484
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 485
    or-int/lit8 v2, v2, 0x4

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$502(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 488
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 489
    or-int/lit8 v2, v2, 0x8

    .line 491
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$602(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 492
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 493
    or-int/lit8 v2, v2, 0x10

    .line 495
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$702(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 496
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 497
    or-int/lit8 v2, v2, 0x20

    .line 499
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->note_:Lcom/miui/milk/model/NoteProtos$Notes;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$802(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes;

    .line 500
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 501
    or-int/lit8 v2, v2, 0x40

    .line 503
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$902(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings;

    .line 504
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 505
    or-int/lit16 v2, v2, 0x80

    .line 507
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$1002(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 508
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 509
    or-int/lit16 v2, v2, 0x100

    .line 511
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$1102(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 512
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 513
    or-int/lit16 v2, v2, 0x200

    .line 515
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$1202(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 516
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 517
    or-int/lit16 v2, v2, 0x400

    .line 519
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->version_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->version_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$1302(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    #setter for: Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->access$1402(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;I)I

    .line 521
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

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
    .line 404
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object v0
.end method

.method public getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method public getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    return-object v0
.end method

.method public getConflictContacts()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    return-object v0
.end method

.method public getMetadata()Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    return-object v0
.end method

.method public getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    return-object v0
.end method

.method public getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    return-object v0
.end method

.method public getNote()Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    return-object v0
.end method

.method public getSetting()Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    return-object v0
.end method

.method public getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    return-object v0
.end method

.method public hasAddressBook()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 687
    iget v1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 988
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 730
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 773
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 1074
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 1031
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 816
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 902
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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
    .line 945
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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

.method public hasWifi()Z
    .locals 2

    .prologue
    .line 859
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

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

.method public mergeAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 709
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 717
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 718
    return-object p0

    .line 714
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    goto :goto_0
.end method

.method public mergeAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1010
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    invoke-static {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->newBuilder(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 1018
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1019
    return-object p0

    .line 1015
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    goto :goto_0
.end method

.method public mergeCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 752
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 760
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 761
    return-object p0

    .line 757
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    goto :goto_0
.end method

.method public mergeConflictContacts(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 795
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 797
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->newBuilder(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 803
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 804
    return-object p0

    .line 800
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    goto :goto_0
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
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

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
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 572
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 577
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    :sswitch_0
    return-object p0

    .line 584
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    .line 585
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasAddressBook()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    .line 588
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 589
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0

    .line 593
    .end local v0           #subBuilder:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    .line 594
    .local v0, subBuilder:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasCalllog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    .line 597
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 598
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0

    .line 602
    .end local v0           #subBuilder:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    :sswitch_3
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts;->newBuilder()Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    move-result-object v0

    .line 603
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasConflictContacts()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getConflictContacts()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;

    .line 606
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 607
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setConflictContacts(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0

    .line 611
    .end local v0           #subBuilder:Lcom/miui/milk/model/ContactProtos2$ConflictContacts$Builder;
    :sswitch_4
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    .line 612
    .local v0, subBuilder:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasMmsSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 613
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 615
    :cond_4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 616
    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0

    .line 620
    .end local v0           #subBuilder:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    :sswitch_5
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    .line 621
    .local v0, subBuilder:Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasWifi()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 622
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    .line 624
    :cond_5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 625
    invoke-virtual {v0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 629
    .end local v0           #subBuilder:Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    :sswitch_6
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    .line 630
    .local v0, subBuilder:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasNote()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 631
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 633
    :cond_6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 634
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 638
    .end local v0           #subBuilder:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    :sswitch_7
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->newBuilder()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    .line 639
    .local v0, subBuilder:Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasSetting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 640
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getSetting()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    .line 642
    :cond_7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 643
    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 647
    .end local v0           #subBuilder:Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    :sswitch_8
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    .line 648
    .local v0, subBuilder:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasAntispam()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 649
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 651
    :cond_8
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 652
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 656
    .end local v0           #subBuilder:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    :sswitch_9
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    .line 657
    .local v0, subBuilder:Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasMmsCollection()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 658
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    .line 660
    :cond_9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 661
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 665
    .end local v0           #subBuilder:Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    :sswitch_a
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->newBuilder()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    .line 666
    .local v0, subBuilder:Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 667
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->getMetadata()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    .line 669
    :cond_a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 670
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMetadata(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0

    .line 674
    .end local v0           #subBuilder:Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    :sswitch_b
    iget v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 675
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->version_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x72 -> :sswitch_a
        0x7a -> :sswitch_b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SyncRootProtos$SyncRoot;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 525
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getDefaultInstance()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-object p0

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasAddressBook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAddressBook()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 529
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasCalllog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 532
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasConflictContacts()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getConflictContacts()Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeConflictContacts(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 535
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasMmsSms()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 538
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasWifi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getWifi()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 541
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 544
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 545
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getSetting()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 547
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasAntispam()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 548
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 550
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasMmsCollection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 551
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 553
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 554
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMetadata()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mergeMetadata(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 556
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    goto/16 :goto_0
.end method

.method public mergeMetadata(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1096
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-static {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata;->newBuilder(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 1104
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1105
    return-object p0

    .line 1101
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    goto :goto_0
.end method

.method public mergeMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1053
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    invoke-static {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 1061
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1062
    return-object p0

    .line 1058
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    goto :goto_0
.end method

.method public mergeMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 838
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 840
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    invoke-static {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 846
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 847
    return-object p0

    .line 843
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    goto :goto_0
.end method

.method public mergeNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 924
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    invoke-static {v0}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 932
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 933
    return-object p0

    .line 929
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    goto :goto_0
.end method

.method public mergeSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 967
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->getDefaultInstance()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    invoke-static {v0}, Lcom/miui/milk/model/SettingProtos$Settings;->newBuilder(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    .line 975
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 976
    return-object p0

    .line 972
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    goto :goto_0
.end method

.method public mergeWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 881
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->getDefaultInstance()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    invoke-static {v0}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 889
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 890
    return-object p0

    .line 886
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    goto :goto_0
.end method

.method public setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 705
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 706
    return-object p0
.end method

.method public setAddressBook(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 696
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->addressBook_:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 698
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 699
    return-object p0
.end method

.method public setAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 994
    if-nez p1, :cond_0

    .line 995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 997
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->antispam_:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 999
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1000
    return-object p0
.end method

.method public setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 746
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 748
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 749
    return-object p0
.end method

.method public setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 739
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->calllog_:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 741
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 742
    return-object p0
.end method

.method public setConflictContacts(Lcom/miui/milk/model/ContactProtos2$ConflictContacts;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 782
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->conflictContacts_:Lcom/miui/milk/model/ContactProtos2$ConflictContacts;

    .line 784
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 785
    return-object p0
.end method

.method public setMetadata(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1083
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->metadata_:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 1085
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1086
    return-object p0
.end method

.method public setMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1037
    if-nez p1, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1040
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsCollection_:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 1042
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1043
    return-object p0
.end method

.method public setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 832
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 834
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 835
    return-object p0
.end method

.method public setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->mmsSms_:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 827
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 828
    return-object p0
.end method

.method public setNote(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 918
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->build()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 920
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 921
    return-object p0
.end method

.method public setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 911
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->note_:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 913
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 914
    return-object p0
.end method

.method public setSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 954
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setting_:Lcom/miui/milk/model/SettingProtos$Settings;

    .line 956
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 957
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1130
    if-nez p1, :cond_0

    .line 1131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1133
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 1134
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->version_:Ljava/lang/Object;

    .line 1136
    return-object p0
.end method

.method public setWifi(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 875
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->build()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 877
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 878
    return-object p0
.end method

.method public setWifi(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->wifi_:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 870
    iget v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 871
    return-object p0
.end method
