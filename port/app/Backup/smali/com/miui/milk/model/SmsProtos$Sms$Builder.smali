.class public final Lcom/miui/milk/model/SmsProtos$Sms$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SmsProtos$Sms;",
        "Lcom/miui/milk/model/SmsProtos$Sms$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private date_:J

.field private guid_:Ljava/lang/Object;

.field private locked_:Z

.field private luid_:Ljava/lang/Object;

.field private protocol_:I

.field private read_:Z

.field private replyPathPresent_:Z

.field private seen_:Z

.field private serverDate_:J

.field private serviceCenter_:Ljava/lang/Object;

.field private status_:I

.field private subject_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->guid_:Ljava/lang/Object;

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->luid_:Ljava/lang/Object;

    .line 1178
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->address_:Ljava/lang/Object;

    .line 1214
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->subject_:Ljava/lang/Object;

    .line 1250
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->body_:Ljava/lang/Object;

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serviceCenter_:Ljava/lang/Object;

    .line 1490
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1514
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 758
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->maybeForceBuilderInitialization()V

    .line 759
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->create()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 762
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    .line 816
    .local v0, result:Lcom/miui/milk/model/SmsProtos$Sms;
    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$Sms;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    invoke-static {v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 819
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 7

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 833
    new-instance v1, Lcom/miui/milk/model/SmsProtos$Sms;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/SmsProtos$Sms;-><init>(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Lcom/miui/milk/model/SmsProtos$1;)V

    .line 834
    .local v1, result:Lcom/miui/milk/model/SmsProtos$Sms;
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 835
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 836
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 837
    or-int/lit8 v2, v2, 0x1

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$302(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 841
    or-int/lit8 v2, v2, 0x2

    .line 843
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$402(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 845
    or-int/lit8 v2, v2, 0x4

    .line 847
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$502(Lcom/miui/milk/model/SmsProtos$Sms;I)I

    .line 848
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 849
    or-int/lit8 v2, v2, 0x8

    .line 851
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$602(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 853
    or-int/lit8 v2, v2, 0x10

    .line 855
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->subject_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->subject_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$702(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 857
    or-int/lit8 v2, v2, 0x20

    .line 859
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->body_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->body_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$802(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 861
    or-int/lit8 v2, v2, 0x40

    .line 863
    :cond_6
    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->date_:J

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->date_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/SmsProtos$Sms;->access$902(Lcom/miui/milk/model/SmsProtos$Sms;J)J

    .line 864
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 865
    or-int/lit16 v2, v2, 0x80

    .line 867
    :cond_7
    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->read_:Z

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->read_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1002(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z

    .line 868
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 869
    or-int/lit16 v2, v2, 0x100

    .line 871
    :cond_8
    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->seen_:Z

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->seen_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1102(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z

    .line 872
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 873
    or-int/lit16 v2, v2, 0x200

    .line 875
    :cond_9
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->status_:I

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->status_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1202(Lcom/miui/milk/model/SmsProtos$Sms;I)I

    .line 876
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 877
    or-int/lit16 v2, v2, 0x400

    .line 879
    :cond_a
    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serverDate_:J

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->serverDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1302(Lcom/miui/milk/model/SmsProtos$Sms;J)J

    .line 880
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 881
    or-int/lit16 v2, v2, 0x800

    .line 883
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serviceCenter_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->serviceCenter_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1402(Lcom/miui/milk/model/SmsProtos$Sms;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 885
    or-int/lit16 v2, v2, 0x1000

    .line 887
    :cond_c
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->protocol_:I

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->protocol_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1502(Lcom/miui/milk/model/SmsProtos$Sms;I)I

    .line 888
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 889
    or-int/lit16 v2, v2, 0x2000

    .line 891
    :cond_d
    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->replyPathPresent_:Z

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->replyPathPresent_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1602(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z

    .line 892
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 893
    or-int/lit16 v2, v2, 0x4000

    .line 895
    :cond_e
    iget-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->locked_:Z

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->locked_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1702(Lcom/miui/milk/model/SmsProtos$Sms;Z)Z

    .line 896
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 897
    or-int/2addr v2, v5

    .line 899
    :cond_f
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1802(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 900
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 901
    or-int/2addr v2, v6

    .line 903
    :cond_10
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$Sms;->access$1902(Lcom/miui/milk/model/SmsProtos$Sms;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 904
    #setter for: Lcom/miui/milk/model/SmsProtos$Sms;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/SmsProtos$Sms;->access$2002(Lcom/miui/milk/model/SmsProtos$Sms;I)I

    .line 905
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->create()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

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
    .line 752
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 974
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 979
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 981
    :sswitch_0
    return-object p0

    .line 986
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 991
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 992
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 996
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->type_:I

    goto :goto_0

    .line 1001
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1002
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 1006
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1007
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->subject_:Ljava/lang/Object;

    goto :goto_0

    .line 1011
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1012
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->body_:Ljava/lang/Object;

    goto :goto_0

    .line 1016
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->date_:J

    goto :goto_0

    .line 1021
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->read_:Z

    goto :goto_0

    .line 1026
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1027
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->seen_:Z

    goto/16 :goto_0

    .line 1031
    :sswitch_a
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1032
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->status_:I

    goto/16 :goto_0

    .line 1036
    :sswitch_b
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serverDate_:J

    goto/16 :goto_0

    .line 1041
    :sswitch_c
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serviceCenter_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1046
    :sswitch_d
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->protocol_:I

    goto/16 :goto_0

    .line 1051
    :sswitch_e
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->replyPathPresent_:Z

    goto/16 :goto_0

    .line 1056
    :sswitch_f
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->locked_:Z

    goto/16 :goto_0

    .line 1061
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1062
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 1063
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 1064
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1065
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 1070
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1071
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 1072
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 1073
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    const/high16 v4, 0x1

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1074
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 909
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-object p0

    .line 910
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 913
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 914
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 916
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setType(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 919
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 922
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 923
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 925
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 926
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 928
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 929
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 931
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 932
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setRead(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 934
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasSeen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 935
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSeen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSeen(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 937
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 938
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setStatus(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 940
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasServerDate()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 941
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServerDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServerDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 943
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasServiceCenter()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 944
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServiceCenter(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 946
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 947
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getProtocol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setProtocol(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 949
    :cond_e
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasReplyPathPresent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 950
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getReplyPathPresent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setReplyPathPresent(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 952
    :cond_f
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 953
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getLocked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLocked(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 955
    :cond_10
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 956
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 958
    :cond_11
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1498
    if-nez p1, :cond_0

    .line 1499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1501
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1502
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1504
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1193
    if-nez p1, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1196
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1197
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->address_:Ljava/lang/Object;

    .line 1199
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1265
    if-nez p1, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1268
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1269
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->body_:Ljava/lang/Object;

    .line 1271
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1522
    if-nez p1, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1525
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1526
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1528
    return-object p0
.end method

.method public setDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1294
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1295
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->date_:J

    .line 1297
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1100
    if-nez p1, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1104
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->guid_:Ljava/lang/Object;

    .line 1106
    return-object p0
.end method

.method public setLocked(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1477
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1478
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->locked_:Z

    .line 1480
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1136
    if-nez p1, :cond_0

    .line 1137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1139
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1140
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->luid_:Ljava/lang/Object;

    .line 1142
    return-object p0
.end method

.method public setProtocol(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1435
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1436
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->protocol_:I

    .line 1438
    return-object p0
.end method

.method public setRead(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1315
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1316
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->read_:Z

    .line 1318
    return-object p0
.end method

.method public setReplyPathPresent(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1456
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1457
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->replyPathPresent_:Z

    .line 1459
    return-object p0
.end method

.method public setSeen(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1336
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1337
    iput-boolean p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->seen_:Z

    .line 1339
    return-object p0
.end method

.method public setServerDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1378
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1379
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serverDate_:J

    .line 1381
    return-object p0
.end method

.method public setServiceCenter(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1406
    if-nez p1, :cond_0

    .line 1407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1409
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1410
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->serviceCenter_:Ljava/lang/Object;

    .line 1412
    return-object p0
.end method

.method public setStatus(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1357
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1358
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->status_:I

    .line 1360
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1232
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1233
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->subject_:Ljava/lang/Object;

    .line 1235
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1165
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->bitField0_:I

    .line 1166
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->type_:I

    .line 1168
    return-object p0
.end method
