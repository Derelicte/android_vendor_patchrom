.class public Lcom/miui/backup/SystemData;
.super Ljava/lang/Object;
.source "SystemData.java"


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mResourceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pName"
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pName"
    .parameter "fileName"
    .parameter "filePath"
    .parameter "resourceType"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/miui/backup/SystemData;->mResourceType:I

    .line 18
    return-void
.end method
