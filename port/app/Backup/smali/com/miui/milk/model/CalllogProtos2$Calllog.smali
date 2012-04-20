.class public final Lcom/miui/milk/model/CalllogProtos2$Calllog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalllogProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calllog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Calllog;


# instance fields
.field private call_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos2$Call;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1281
    new-instance v0, Lcom/miui/milk/model/CalllogProtos2$Calllog;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    .line 1282
    sget-object v0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->initFields()V

    .line 1283
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 934
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 971
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedIsInitialized:B

    .line 988
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedSerializedSize:I

    .line 935
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;Lcom/miui/milk/model/CalllogProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;-><init>(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 971
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedIsInitialized:B

    .line 988
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedSerializedSize:I

    .line 936
    return-void
.end method

.method static synthetic access$1600(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/CalllogProtos2$Calllog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 1

    .prologue
    .line 940
    sget-object v0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Calllog;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 969
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    .line 970
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 1

    .prologue
    .line 1074
    #calls: Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->access$1400()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1077
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos2$Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 990
    iget v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedSerializedSize:I

    .line 991
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 999
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 993
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 994
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 995
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 998
    :cond_1
    iput v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedSerializedSize:I

    move v2, v1

    .line 999
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 973
    iget-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedIsInitialized:B

    .line 974
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 977
    :goto_0
    return v1

    .line 974
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 976
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->memoizedIsInitialized:B

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
    .line 1004
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getSerializedSize()I

    .line 983
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 984
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_0
    return-void
.end method
