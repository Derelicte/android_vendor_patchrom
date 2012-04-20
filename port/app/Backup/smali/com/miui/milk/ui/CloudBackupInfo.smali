.class public Lcom/miui/milk/ui/CloudBackupInfo;
.super Ljava/lang/Object;
.source "CloudBackupInfo.java"


# static fields
.field public static chooseNumber:Ljava/lang/String;

.field public static currentIMSI:Ljava/lang/String;

.field public static localResourceCount:[I

.field public static metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

.field public static numberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->numberIds:Ljava/util/ArrayList;

    .line 10
    sput-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16
    sput-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->numberIds:Ljava/util/ArrayList;

    .line 18
    sput-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 21
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
