.class public final Lcom/miui/milk/model/ContactProtos2$Contact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Contact;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private callIncomingPhoto_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private deleted_:I

.field private email_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Email;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Event;",
            ">;"
        }
    .end annotation
.end field

.field private groupMembership_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$GroupMembership;",
            ">;"
        }
    .end annotation
.end field

.field private guid_:Ljava/lang/Object;

.field private im_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Im;",
            ">;"
        }
    .end annotation
.end field

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Name;",
            ">;"
        }
    .end annotation
.end field

.field private nickname_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Nickname;",
            ">;"
        }
    .end annotation
.end field

.field private note_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Note;",
            ">;"
        }
    .end annotation
.end field

.field private organization_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Organization;",
            ">;"
        }
    .end annotation
.end field

.field private phone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private postal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Postal;",
            ">;"
        }
    .end annotation
.end field

.field private sourceId_:Ljava/lang/Object;

.field private starred_:Z

.field private version_:I

.field private website_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9916
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Contact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Contact;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 9917
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Contact;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->initFields()V

    .line 9918
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7376
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7843
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedIsInitialized:B

    .line 7920
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedSerializedSize:I

    .line 7377
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Contact;-><init>(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7378
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7843
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedIsInitialized:B

    .line 7920
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedSerializedSize:I

    .line 7378
    return-void
.end method

.method static synthetic access$10002(Lcom/miui/milk/model/ContactProtos2$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I

    return p1
.end method

.method static synthetic access$10102(Lcom/miui/milk/model/ContactProtos2$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I

    return p1
.end method

.method static synthetic access$10200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11000(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/miui/milk/model/ContactProtos2$Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-boolean p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z

    return p1
.end method

.method static synthetic access$11602(Lcom/miui/milk/model/ContactProtos2$Contact;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/miui/milk/model/ContactProtos2$Contact;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/miui/milk/model/ContactProtos2$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    return p1
.end method

.method static synthetic access$9802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7371
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method private getCallIncomingPhotoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7809
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    .line 7810
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7811
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    .line 7816
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

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Contact;
    .locals 1

    .prologue
    .line 7382
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Contact;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7411
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    .line 7412
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7413
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7415
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    .line 7418
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
    .line 7443
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    .line 7444
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7445
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7447
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    .line 7450
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

.method private getSourceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7747
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    .line 7748
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7749
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7751
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    .line 7754
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7821
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    .line 7822
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    .line 7823
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I

    .line 7824
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I

    .line 7825
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    .line 7826
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    .line 7827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    .line 7828
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    .line 7829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    .line 7830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    .line 7831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    .line 7832
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    .line 7833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    .line 7834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    .line 7835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    .line 7836
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    .line 7837
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    .line 7838
    iput-boolean v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z

    .line 7839
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 7840
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 7841
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    .line 7842
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1

    .prologue
    .line 8086
    #calls: Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->access$9600()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8089
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 7775
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getCallIncomingPhoto()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7795
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    .line 7796
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7797
    check-cast v1, Ljava/lang/String;

    .line 7805
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7801
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7802
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7803
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7805
    goto :goto_0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 7785
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 7471
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7520
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7541
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupMembershipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$GroupMembership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7709
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7397
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    .line 7398
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7399
    check-cast v1, Ljava/lang/String;

    .line 7407
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7403
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7404
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7405
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7407
    goto :goto_0
.end method

.method public getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7562
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    return-object v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7429
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    .line 7430
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7431
    check-cast v1, Ljava/lang/String;

    .line 7439
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7433
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7435
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7436
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7437
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7439
    goto :goto_0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Name;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7478
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getNicknameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Nickname;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7583
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    return-object v0
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7604
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    return-object v0
.end method

.method public getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7625
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7499
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7646
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Postal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7667
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7922
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedSerializedSize:I

    .line 7923
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 8011
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 7925
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 7926
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 7927
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7930
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 7931
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7934
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 7935
    const/4 v3, 0x3

    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7938
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 7939
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7942
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7943
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7946
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 7947
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7946
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7950
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 7951
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7950
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7954
    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 7955
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7954
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7958
    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7959
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7958
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7962
    :cond_9
    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 7963
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7962
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7966
    :cond_a
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 7967
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7966
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7970
    :cond_b
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 7971
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7970
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7974
    :cond_c
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 7975
    const/16 v4, 0xd

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7974
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 7978
    :cond_d
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 7979
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7978
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7982
    :cond_e
    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 7983
    const/16 v4, 0xf

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7982
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7986
    :cond_f
    const/4 v0, 0x0

    :goto_c
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 7987
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7986
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 7990
    :cond_10
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_11

    .line 7991
    const/16 v3, 0x11

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getSourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7994
    :cond_11
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    .line 7995
    const/16 v3, 0x12

    iget-boolean v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 7998
    :cond_12
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_13

    .line 7999
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v4}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 8002
    :cond_13
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_14

    .line 8003
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v4}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 8006
    :cond_14
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_15

    .line 8007
    const/16 v3, 0x19

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getCallIncomingPhotoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 8010
    :cond_15
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedSerializedSize:I

    move v2, v1

    .line 8011
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7733
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    .line 7734
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7735
    check-cast v1, Ljava/lang/String;

    .line 7743
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7737
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7739
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7740
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7741
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7743
    goto :goto_0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 7765
    iget-boolean v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 7461
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I

    return v0
.end method

.method public getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7688
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    return-object v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 7772
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasCallIncomingPhoto()Z
    .locals 2

    .prologue
    .line 7792
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 7782
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasDeleted()Z
    .locals 2

    .prologue
    .line 7468
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7394
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 7426
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasSourceId()Z
    .locals 2

    .prologue
    .line 7730
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasStarred()Z
    .locals 2

    .prologue
    .line 7762
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 7458
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

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

    .line 7845
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedIsInitialized:B

    .line 7846
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 7849
    :goto_0
    return v1

    .line 7846
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7848
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1

    .prologue
    .line 8091
    invoke-static {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

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
    .line 8016
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7854
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getSerializedSize()I

    .line 7855
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7856
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7858
    :cond_0
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7859
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7861
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7862
    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7864
    :cond_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 7865
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7867
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 7868
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7870
    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7871
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7870
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7873
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 7874
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7873
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7876
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 7877
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7876
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7879
    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 7880
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7879
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7882
    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 7883
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7882
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7885
    :cond_9
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 7886
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7885
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7888
    :cond_a
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 7889
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7888
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7891
    :cond_b
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 7892
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7891
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7894
    :cond_c
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 7895
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7894
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 7897
    :cond_d
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 7898
    const/16 v2, 0xf

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7897
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7900
    :cond_e
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 7901
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7900
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7903
    :cond_f
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_10

    .line 7904
    const/16 v1, 0x11

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getSourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7906
    :cond_10
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    .line 7907
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7909
    :cond_11
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_12

    .line 7910
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v2}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7912
    :cond_12
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_13

    .line 7913
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v2}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7915
    :cond_13
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_14

    .line 7916
    const/16 v1, 0x19

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact;->getCallIncomingPhotoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7918
    :cond_14
    return-void
.end method
