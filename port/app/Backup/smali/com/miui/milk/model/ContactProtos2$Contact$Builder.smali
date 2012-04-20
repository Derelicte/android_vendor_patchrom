.class public final Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Contact;",
        "Lcom/miui/milk/model/ContactProtos2$Contact$Builder;",
        ">;"
    }
.end annotation


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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8098
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8590
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->guid_:Ljava/lang/Object;

    .line 8626
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->luid_:Ljava/lang/Object;

    .line 8704
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    .line 8793
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    .line 8882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    .line 8971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    .line 9060
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    .line 9149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    .line 9238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    .line 9327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    .line 9416
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    .line 9505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    .line 9594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    .line 9683
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 9772
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->sourceId_:Ljava/lang/Object;

    .line 9829
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 9853
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 9877
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->callIncomingPhoto_:Ljava/lang/Object;

    .line 8099
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->maybeForceBuilderInitialization()V

    .line 8100
    return-void
.end method

.method static synthetic access$9600()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1

    .prologue
    .line 8093
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1

    .prologue
    .line 8105
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEmailIsMutable()V
    .locals 2

    .prologue
    .line 8885
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 8886
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    .line 8887
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8889
    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .prologue
    .line 8974
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 8975
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    .line 8976
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8978
    :cond_0
    return-void
.end method

.method private ensureGroupMembershipIsMutable()V
    .locals 3

    .prologue
    const v2, 0x8000

    .line 9686
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 9687
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 9688
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9690
    :cond_0
    return-void
.end method

.method private ensureImIsMutable()V
    .locals 2

    .prologue
    .line 9063
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 9064
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    .line 9065
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9067
    :cond_0
    return-void
.end method

.method private ensureNameIsMutable()V
    .locals 2

    .prologue
    .line 8707
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8708
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    .line 8709
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8711
    :cond_0
    return-void
.end method

.method private ensureNicknameIsMutable()V
    .locals 2

    .prologue
    .line 9152
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 9153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    .line 9154
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9156
    :cond_0
    return-void
.end method

.method private ensureNoteIsMutable()V
    .locals 2

    .prologue
    .line 9241
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 9242
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    .line 9243
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9245
    :cond_0
    return-void
.end method

.method private ensureOrganizationIsMutable()V
    .locals 2

    .prologue
    .line 9330
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 9331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    .line 9332
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9334
    :cond_0
    return-void
.end method

.method private ensurePhoneIsMutable()V
    .locals 2

    .prologue
    .line 8796
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 8797
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    .line 8798
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8800
    :cond_0
    return-void
.end method

.method private ensurePhotoIsMutable()V
    .locals 2

    .prologue
    .line 9419
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 9420
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    .line 9421
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9423
    :cond_0
    return-void
.end method

.method private ensurePostalIsMutable()V
    .locals 2

    .prologue
    .line 9508
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 9509
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    .line 9510
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9512
    :cond_0
    return-void
.end method

.method private ensureWebsiteIsMutable()V
    .locals 2

    .prologue
    .line 9597
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 9598
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    .line 9599
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9601
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8103
    return-void
.end method


# virtual methods
.method public addEmail(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8938
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEmailIsMutable()V

    .line 8939
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Email;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8941
    return-object p0
.end method

.method public addEmail(Lcom/miui/milk/model/ContactProtos2$Email;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8918
    if-nez p1, :cond_0

    .line 8919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8921
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEmailIsMutable()V

    .line 8922
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8924
    return-object p0
.end method

.method public addEvent(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9027
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEventIsMutable()V

    .line 9028
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9030
    return-object p0
.end method

.method public addEvent(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9007
    if-nez p1, :cond_0

    .line 9008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9010
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEventIsMutable()V

    .line 9011
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9013
    return-object p0
.end method

.method public addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9739
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureGroupMembershipIsMutable()V

    .line 9740
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->build()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9742
    return-object p0
.end method

.method public addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9719
    if-nez p1, :cond_0

    .line 9720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9722
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureGroupMembershipIsMutable()V

    .line 9723
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9725
    return-object p0
.end method

.method public addIm(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9116
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureImIsMutable()V

    .line 9117
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9119
    return-object p0
.end method

.method public addIm(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9096
    if-nez p1, :cond_0

    .line 9097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9099
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureImIsMutable()V

    .line 9100
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9102
    return-object p0
.end method

.method public addName(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8760
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNameIsMutable()V

    .line 8761
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8763
    return-object p0
.end method

.method public addName(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8740
    if-nez p1, :cond_0

    .line 8741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8743
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNameIsMutable()V

    .line 8744
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8746
    return-object p0
.end method

.method public addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9205
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNicknameIsMutable()V

    .line 9206
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9208
    return-object p0
.end method

.method public addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9185
    if-nez p1, :cond_0

    .line 9186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9188
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNicknameIsMutable()V

    .line 9189
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9191
    return-object p0
.end method

.method public addNote(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9294
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNoteIsMutable()V

    .line 9295
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Note;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9297
    return-object p0
.end method

.method public addNote(Lcom/miui/milk/model/ContactProtos2$Note;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9274
    if-nez p1, :cond_0

    .line 9275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9277
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNoteIsMutable()V

    .line 9278
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9280
    return-object p0
.end method

.method public addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9383
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureOrganizationIsMutable()V

    .line 9384
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9386
    return-object p0
.end method

.method public addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9363
    if-nez p1, :cond_0

    .line 9364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9366
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureOrganizationIsMutable()V

    .line 9367
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9369
    return-object p0
.end method

.method public addPhone(Lcom/miui/milk/model/ContactProtos2$Phone$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8849
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhoneIsMutable()V

    .line 8850
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8852
    return-object p0
.end method

.method public addPhone(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8829
    if-nez p1, :cond_0

    .line 8830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8832
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhoneIsMutable()V

    .line 8833
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8835
    return-object p0
.end method

.method public addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9472
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhotoIsMutable()V

    .line 9473
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Photo$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Photo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9475
    return-object p0
.end method

.method public addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9452
    if-nez p1, :cond_0

    .line 9453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9455
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhotoIsMutable()V

    .line 9456
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9458
    return-object p0
.end method

.method public addPostal(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9561
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePostalIsMutable()V

    .line 9562
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9564
    return-object p0
.end method

.method public addPostal(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9541
    if-nez p1, :cond_0

    .line 9542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9544
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePostalIsMutable()V

    .line 9545
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9547
    return-object p0
.end method

.method public addWebsite(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9650
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureWebsiteIsMutable()V

    .line 9651
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9653
    return-object p0
.end method

.method public addWebsite(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9630
    if-nez p1, :cond_0

    .line 9631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9633
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureWebsiteIsMutable()V

    .line 9634
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9636
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/ContactProtos2$Contact;
    .locals 2

    .prologue
    .line 8164
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v0

    .line 8165
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Contact;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8166
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8168
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8093
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;
    .locals 10

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 8182
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Contact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;-><init>(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 8183
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Contact;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8184
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8185
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8186
    or-int/lit8 v2, v2, 0x1

    .line 8188
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$9802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8189
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8190
    or-int/lit8 v2, v2, 0x2

    .line 8192
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$9902(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8193
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8194
    or-int/lit8 v2, v2, 0x4

    .line 8196
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->version_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->version_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10002(Lcom/miui/milk/model/ContactProtos2$Contact;I)I

    .line 8197
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8198
    or-int/lit8 v2, v2, 0x8

    .line 8200
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->deleted_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->deleted_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10102(Lcom/miui/milk/model/ContactProtos2$Contact;I)I

    .line 8201
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8202
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    .line 8203
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8205
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10202(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8206
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 8207
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    .line 8208
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8210
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10302(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8211
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 8212
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    .line 8213
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8215
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10402(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8216
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 8217
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    .line 8218
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8220
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10502(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8221
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 8222
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    .line 8223
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8225
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10602(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8226
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 8227
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    .line 8228
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8230
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10702(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8231
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 8232
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    .line 8233
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8235
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8236
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 8237
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    .line 8238
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8240
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10902(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8241
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 8242
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    .line 8243
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8245
    :cond_c
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11002(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8246
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 8247
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    .line 8248
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8250
    :cond_d
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11102(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8251
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 8252
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    .line 8253
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8255
    :cond_e
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11202(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8256
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_f

    .line 8257
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 8258
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8260
    :cond_f
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11302(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8261
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 8262
    or-int/lit8 v2, v2, 0x10

    .line 8264
    :cond_10
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->sourceId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->sourceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11402(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8265
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 8266
    or-int/lit8 v2, v2, 0x20

    .line 8268
    :cond_11
    iget-boolean v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->starred_:Z

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->starred_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11502(Lcom/miui/milk/model/ContactProtos2$Contact;Z)Z

    .line 8269
    and-int v3, v0, v8

    if-ne v3, v8, :cond_12

    .line 8270
    or-int/lit8 v2, v2, 0x40

    .line 8272
    :cond_12
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11602(Lcom/miui/milk/model/ContactProtos2$Contact;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 8273
    and-int v3, v0, v9

    if-ne v3, v9, :cond_13

    .line 8274
    or-int/lit16 v2, v2, 0x80

    .line 8276
    :cond_13
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11702(Lcom/miui/milk/model/ContactProtos2$Contact;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 8277
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_14

    .line 8278
    or-int/lit16 v2, v2, 0x100

    .line 8280
    :cond_14
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->callIncomingPhoto_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->callIncomingPhoto_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11802(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8281
    #setter for: Lcom/miui/milk/model/ContactProtos2$Contact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11902(Lcom/miui/milk/model/ContactProtos2$Contact;I)I

    .line 8282
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8093
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8093
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2

    .prologue
    .line 8156
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

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
    .line 8093
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

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
    .line 8093
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

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
    .line 8093
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8447
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 8452
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8454
    :sswitch_0
    return-object p0

    .line 8459
    :sswitch_1
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 8464
    :sswitch_2
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 8469
    :sswitch_3
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->version_:I

    goto :goto_0

    .line 8474
    :sswitch_4
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8475
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->deleted_:I

    goto :goto_0

    .line 8479
    :sswitch_5
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v1

    .line 8480
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8481
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 8485
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    :sswitch_6
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v1

    .line 8486
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8487
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 8491
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    :sswitch_7
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Email;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    move-result-object v1

    .line 8492
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8493
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Email;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 8497
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    :sswitch_8
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v1

    .line 8498
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8499
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 8503
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    :sswitch_9
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v1

    .line 8504
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8505
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8509
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    :sswitch_a
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v1

    .line 8510
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8511
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Nickname;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8515
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    :sswitch_b
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Note;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    move-result-object v1

    .line 8516
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8517
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Note;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8521
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    :sswitch_c
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v1

    .line 8522
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8523
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8527
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    :sswitch_d
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Photo;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    move-result-object v1

    .line 8528
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8529
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Photo$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Photo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8533
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    :sswitch_e
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v1

    .line 8534
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8535
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8539
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    :sswitch_f
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v1

    .line 8540
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8541
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8545
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    :sswitch_10
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->newBuilder()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v1

    .line 8546
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8547
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8551
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    :sswitch_11
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8552
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->sourceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 8556
    :sswitch_12
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->starred_:Z

    goto/16 :goto_0

    .line 8561
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8562
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v3

    .line 8563
    .local v3, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v3, :cond_0

    .line 8564
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x4

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8565
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 8570
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8571
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v3

    .line 8572
    .local v3, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v3, :cond_0

    .line 8573
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8574
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 8579
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    :sswitch_15
    iget v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8580
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->callIncomingPhoto_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 8447
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x90 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xca -> :sswitch_15
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 8286
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8434
    :cond_0
    :goto_0
    return-object p0

    .line 8287
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8288
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8290
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8291
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8293
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8294
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8296
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8297
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getDeleted()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8299
    :cond_5
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8300
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 8301
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    .line 8302
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8309
    :cond_6
    :goto_1
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8310
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8311
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    .line 8312
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8319
    :cond_7
    :goto_2
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8320
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8321
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    .line 8322
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8329
    :cond_8
    :goto_3
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8330
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8331
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    .line 8332
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8339
    :cond_9
    :goto_4
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8340
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8341
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    .line 8342
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8349
    :cond_a
    :goto_5
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 8350
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8351
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    .line 8352
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8359
    :cond_b
    :goto_6
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 8360
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8361
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    .line 8362
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8369
    :cond_c
    :goto_7
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8370
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 8371
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    .line 8372
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8379
    :cond_d
    :goto_8
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 8380
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8381
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    .line 8382
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8389
    :cond_e
    :goto_9
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8390
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 8391
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    .line 8392
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8399
    :cond_f
    :goto_a
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8400
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 8401
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    .line 8402
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8409
    :cond_10
    :goto_b
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8410
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8411
    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 8412
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8419
    :cond_11
    :goto_c
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasSourceId()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8420
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8422
    :cond_12
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasStarred()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8423
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getStarred()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setStarred(Z)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8425
    :cond_13
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8426
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8428
    :cond_14
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8429
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 8431
    :cond_15
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasCallIncomingPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8432
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getCallIncomingPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setCallIncomingPhoto(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto/16 :goto_0

    .line 8304
    :cond_16
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNameIsMutable()V

    .line 8305
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->name_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 8314
    :cond_17
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhoneIsMutable()V

    .line 8315
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->phone_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 8324
    :cond_18
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEmailIsMutable()V

    .line 8325
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->email_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 8334
    :cond_19
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureEventIsMutable()V

    .line 8335
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->event_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 8344
    :cond_1a
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureImIsMutable()V

    .line 8345
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->im_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 8354
    :cond_1b
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNicknameIsMutable()V

    .line 8355
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->nickname_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 8364
    :cond_1c
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureNoteIsMutable()V

    .line 8365
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->note_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 8374
    :cond_1d
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureOrganizationIsMutable()V

    .line 8375
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->organization_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 8384
    :cond_1e
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePhotoIsMutable()V

    .line 8385
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 8394
    :cond_1f
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensurePostalIsMutable()V

    .line 8395
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->postal_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    .line 8404
    :cond_20
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureWebsiteIsMutable()V

    .line 8405
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->website_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    .line 8414
    :cond_21
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->ensureGroupMembershipIsMutable()V

    .line 8415
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->groupMembership_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9837
    if-nez p1, :cond_0

    .line 9838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9840
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9841
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 9843
    return-object p0
.end method

.method public setCallIncomingPhoto(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9892
    if-nez p1, :cond_0

    .line 9893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9895
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9896
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->callIncomingPhoto_:Ljava/lang/Object;

    .line 9898
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9861
    if-nez p1, :cond_0

    .line 9862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9864
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9865
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 9867
    return-object p0
.end method

.method public setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8691
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8692
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->deleted_:I

    .line 8694
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8605
    if-nez p1, :cond_0

    .line 8606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8608
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8609
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->guid_:Ljava/lang/Object;

    .line 8611
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8641
    if-nez p1, :cond_0

    .line 8642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8644
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8645
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->luid_:Ljava/lang/Object;

    .line 8647
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9787
    if-nez p1, :cond_0

    .line 9788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9790
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9791
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->sourceId_:Ljava/lang/Object;

    .line 9793
    return-object p0
.end method

.method public setStarred(Z)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9816
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 9817
    iput-boolean p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->starred_:Z

    .line 9819
    return-object p0
.end method

.method public setVersion(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8670
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->bitField0_:I

    .line 8671
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->version_:I

    .line 8673
    return-object p0
.end method
