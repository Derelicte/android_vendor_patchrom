.class public final Lcom/miui/milk/model/NoteProtos$Notes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/NoteProtos$Notes;


# instance fields
.field private folder_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private note_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3577
    new-instance v0, Lcom/miui/milk/model/NoteProtos$Notes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/NoteProtos$Notes;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/NoteProtos$Notes;->defaultInstance:Lcom/miui/milk/model/NoteProtos$Notes;

    .line 3578
    sget-object v0, Lcom/miui/milk/model/NoteProtos$Notes;->defaultInstance:Lcom/miui/milk/model/NoteProtos$Notes;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$Notes;->initFields()V

    .line 3579
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3089
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3148
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedIsInitialized:B

    .line 3168
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedSerializedSize:I

    .line 3090
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/NoteProtos$Notes$Builder;Lcom/miui/milk/model/NoteProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3084
    invoke-direct {p0, p1}, Lcom/miui/milk/model/NoteProtos$Notes;-><init>(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3148
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedIsInitialized:B

    .line 3168
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedSerializedSize:I

    .line 3091
    return-void
.end method

.method static synthetic access$4700(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/miui/milk/model/NoteProtos$Notes;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/miui/milk/model/NoteProtos$Notes;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 1

    .prologue
    .line 3095
    sget-object v0, Lcom/miui/milk/model/NoteProtos$Notes;->defaultInstance:Lcom/miui/milk/model/NoteProtos$Notes;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    .line 3146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    .line 3147
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1

    .prologue
    .line 3258
    #calls: Lcom/miui/milk/model/NoteProtos$Notes$Builder;->create()Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->access$4500()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3261
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    return-object v0
.end method

.method public getNoteCount()I
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3170
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedSerializedSize:I

    .line 3171
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3183
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 3173
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 3174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3175
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3178
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3179
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3182
    :cond_2
    iput v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedSerializedSize:I

    move v2, v1

    .line 3183
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3150
    iget-byte v0, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedIsInitialized:B

    .line 3151
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3154
    :goto_0
    return v1

    .line 3151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3153
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->memoizedIsInitialized:B

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
    .line 3188
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
    .line 3159
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes;->getSerializedSize()I

    .line 3160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3161
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3163
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3164
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3166
    :cond_1
    return-void
.end method
