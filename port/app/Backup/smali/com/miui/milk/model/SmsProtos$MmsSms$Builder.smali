.class public final Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos$MmsSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SmsProtos$MmsSms;",
        "Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private smsBookmark_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$SmsBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private sms_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$Sms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    .line 3055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    .line 2841
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->maybeForceBuilderInitialization()V

    .line 2842
    return-void
.end method

.method static synthetic access$3700()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->create()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1

    .prologue
    .line 2847
    new-instance v0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSmsBookmarkIsMutable()V
    .locals 2

    .prologue
    .line 3058
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3059
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    .line 3060
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 3062
    :cond_0
    return-void
.end method

.method private ensureSmsIsMutable()V
    .locals 2

    .prologue
    .line 2969
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    .line 2971
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 2973
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2845
    return-void
.end method


# virtual methods
.method public addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3002
    if-nez p1, :cond_0

    .line 3003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3005
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->ensureSmsIsMutable()V

    .line 3006
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3008
    return-object p0
.end method

.method public addSmsBookmark(Lcom/miui/milk/model/SmsProtos$SmsBookmark;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3094
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->ensureSmsBookmarkIsMutable()V

    .line 3095
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3097
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 2

    .prologue
    .line 2868
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    .line 2869
    .local v0, result:Lcom/miui/milk/model/SmsProtos$MmsSms;
    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    invoke-static {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2872
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 4

    .prologue
    .line 2886
    new-instance v1, Lcom/miui/milk/model/SmsProtos$MmsSms;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms;-><init>(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;Lcom/miui/milk/model/SmsProtos$1;)V

    .line 2887
    .local v1, result:Lcom/miui/milk/model/SmsProtos$MmsSms;
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 2888
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2889
    iget-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    .line 2890
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 2892
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$3902(Lcom/miui/milk/model/SmsProtos$MmsSms;Ljava/util/List;)Ljava/util/List;

    .line 2893
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2894
    iget-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    .line 2895
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 2897
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$4002(Lcom/miui/milk/model/SmsProtos$MmsSms;Ljava/util/List;)Ljava/util/List;

    .line 2898
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 2

    .prologue
    .line 2860
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->create()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

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
    .line 2835
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->clone()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getSmsBookmarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$SmsBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2936
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2941
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2943
    :sswitch_0
    return-object p0

    .line 2948
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v0

    .line 2949
    .local v0, subBuilder:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2950
    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    goto :goto_0

    .line 2954
    .end local v0           #subBuilder:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->newBuilder()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    .line 2955
    .local v0, subBuilder:Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2956
    invoke-virtual {v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSmsBookmark(Lcom/miui/milk/model/SmsProtos$SmsBookmark;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    goto :goto_0

    .line 2936
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2902
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2923
    :cond_0
    :goto_0
    return-object p0

    .line 2903
    :cond_1
    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$3900(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2904
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2905
    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$3900(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    .line 2906
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    .line 2913
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$4000(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2915
    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$4000(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    .line 2916
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->bitField0_:I

    goto :goto_0

    .line 2908
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->ensureSmsIsMutable()V

    .line 2909
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->sms_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$3900(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2918
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->ensureSmsBookmarkIsMutable()V

    .line 2919
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->smsBookmark_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->access$4000(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
