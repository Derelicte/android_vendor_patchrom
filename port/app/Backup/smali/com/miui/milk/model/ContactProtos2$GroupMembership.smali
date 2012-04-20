.class public final Lcom/miui/milk/model/ContactProtos2$GroupMembership;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembership"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$GroupMembership;


# instance fields
.field private bitField0_:I

.field private groupGUID_:Ljava/lang/Object;

.field private groupLUID_:Ljava/lang/Object;

.field private groupTitle_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7253
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    .line 7254
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->initFields()V

    .line 7255
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6774
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6889
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedIsInitialized:B

    .line 6912
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedSerializedSize:I

    .line 6775
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6769
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;-><init>(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6889
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedIsInitialized:B

    .line 6912
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedSerializedSize:I

    .line 6776
    return-void
.end method

.method static synthetic access$9102(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/miui/milk/model/ContactProtos2$GroupMembership;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6769
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    .locals 1

    .prologue
    .line 6780
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    return-object v0
.end method

.method private getGroupGUIDBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6809
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6810
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6811
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6816
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

.method private getGroupLUIDBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6841
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6842
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6843
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6845
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6848
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

.method private getGroupTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6873
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6874
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6875
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6877
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6880
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
    .line 6885
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6886
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6887
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6888
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7006
    #calls: Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->access$8900()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroupGUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6795
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6796
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6797
    check-cast v1, Ljava/lang/String;

    .line 6805
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6801
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6802
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6803
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6805
    goto :goto_0
.end method

.method public getGroupLUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6827
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6828
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6829
    check-cast v1, Ljava/lang/String;

    .line 6837
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6831
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6833
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6834
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6835
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6837
    goto :goto_0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6859
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6860
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6861
    check-cast v1, Ljava/lang/String;

    .line 6869
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6863
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6865
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6866
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6867
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6869
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6914
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedSerializedSize:I

    .line 6915
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6931
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6917
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6918
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 6919
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupGUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6922
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 6923
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupLUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6926
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 6927
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6930
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedSerializedSize:I

    move v1, v0

    .line 6931
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasGroupGUID()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6792
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupLUID()Z
    .locals 2

    .prologue
    .line 6824
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

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

.method public hasGroupTitle()Z
    .locals 2

    .prologue
    .line 6856
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6891
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedIsInitialized:B

    .line 6892
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6895
    :goto_0
    return v1

    .line 6892
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6894
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->memoizedIsInitialized:B

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
    .line 6936
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6900
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getSerializedSize()I

    .line 6901
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6902
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupGUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6904
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6905
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupLUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6907
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6908
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6910
    :cond_2
    return-void
.end method
