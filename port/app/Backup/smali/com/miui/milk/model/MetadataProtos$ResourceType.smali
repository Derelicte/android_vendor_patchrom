.class public final enum Lcom/miui/milk/model/MetadataProtos$ResourceType;
.super Ljava/lang/Enum;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/MetadataProtos$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field public static final enum CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field public static final enum CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field public static final enum NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field public static final enum SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field public static final enum WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$ResourceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/miui/milk/model/MetadataProtos$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 14
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    const-string v1, "CALLLOG"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/miui/milk/model/MetadataProtos$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 15
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/miui/milk/model/MetadataProtos$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 16
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/miui/milk/model/MetadataProtos$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 17
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    const-string v1, "NOTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/miui/milk/model/MetadataProtos$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/milk/model/MetadataProtos$ResourceType;

    sget-object v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;->SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;->WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;->NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->$VALUES:[Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 45
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$ResourceType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$ResourceType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p4, p0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->value:I

    .line 56
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/MetadataProtos$ResourceType;
    .locals 1
    .parameter "value"

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    goto :goto_0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$ResourceType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/miui/milk/model/MetadataProtos$ResourceType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->$VALUES:[Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/MetadataProtos$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/MetadataProtos$ResourceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$ResourceType;->value:I

    return v0
.end method
