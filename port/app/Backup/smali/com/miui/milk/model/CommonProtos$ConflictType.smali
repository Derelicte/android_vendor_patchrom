.class public final enum Lcom/miui/milk/model/CommonProtos$ConflictType;
.super Ljava/lang/Enum;
.source "CommonProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CommonProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/CommonProtos$ConflictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/CommonProtos$ConflictType;

.field public static final enum DISCARD:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field public static final enum MERGED:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field public static final enum RESERVE:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field public static final enum UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/CommonProtos$ConflictType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/CommonProtos$ConflictType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 61
    new-instance v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    const-string v1, "RESERVE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->RESERVE:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 62
    new-instance v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    const-string v1, "DISCARD"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/CommonProtos$ConflictType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->DISCARD:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 63
    new-instance v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    const-string v1, "MERGED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/CommonProtos$ConflictType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->MERGED:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/milk/model/CommonProtos$ConflictType;

    sget-object v1, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/CommonProtos$ConflictType;->RESERVE:Lcom/miui/milk/model/CommonProtos$ConflictType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/CommonProtos$ConflictType;->DISCARD:Lcom/miui/milk/model/CommonProtos$ConflictType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/CommonProtos$ConflictType;->MERGED:Lcom/miui/milk/model/CommonProtos$ConflictType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->$VALUES:[Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 89
    new-instance v0, Lcom/miui/milk/model/CommonProtos$ConflictType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p4, p0, Lcom/miui/milk/model/CommonProtos$ConflictType;->value:I

    .line 100
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1
    .parameter "value"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->RESERVE:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->DISCARD:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->MERGED:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public static values()[Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->$VALUES:[Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/CommonProtos$ConflictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/miui/milk/model/CommonProtos$ConflictType;->value:I

    return v0
.end method
