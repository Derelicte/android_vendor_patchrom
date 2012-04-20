.class public final enum Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
.super Ljava/lang/Enum;
.source "PackageIconItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/PackageIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

.field public static final enum ONLINE:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

.field public static final enum RESOURCE_ID:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    const-string v1, "RESOURCE_ID"

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->RESOURCE_ID:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    .line 11
    new-instance v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->ONLINE:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    sget-object v1, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->RESOURCE_ID:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->ONLINE:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->$VALUES:[Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->$VALUES:[Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    invoke-virtual {v0}, [Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    return-object v0
.end method
