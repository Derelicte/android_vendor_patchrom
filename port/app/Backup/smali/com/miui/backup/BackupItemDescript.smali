.class public Lcom/miui/backup/BackupItemDescript;
.super Lcom/miui/backup/BaseDescript;
.source "BackupItemDescript.java"


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mAppPackage:Ljava/lang/String;

.field public mAppPath:Ljava/lang/String;

.field public mAppVersionCode:Ljava/lang/String;

.field public mAppVersionName:Ljava/lang/String;

.field public mDataDir:Ljava/lang/String;

.field public mImei:Ljava/lang/String;

.field public mType:I

.field public mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/backup/BaseDescript;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;ILjava/lang/String;)V
    .locals 2
    .parameter "appName"
    .parameter "pkg"
    .parameter "type"
    .parameter "apkCopy"

    .prologue
    .line 35
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/miui/backup/BackupItemDescript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iput-object p4, p0, Lcom/miui/backup/BackupItemDescript;->mAppPath:Ljava/lang/String;

    .line 42
    :goto_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionName:Ljava/lang/String;

    .line 43
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionCode:Ljava/lang/String;

    .line 44
    return-void

    .line 40
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mAppPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "appName"
    .parameter "appPackage"
    .parameter "dataDir"
    .parameter "type"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/backup/BaseDescript;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/backup/BackupItemDescript;->mAppName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppPackage:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/miui/backup/BackupItemDescript;->mDataDir:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/miui/backup/BackupItemDescript;->mType:I

    .line 30
    invoke-static {}, Lcom/miui/backup/SysUtils;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mImei:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mXmlName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/backup/BackupItemDescript;->mType:I

    return v0
.end method

.method protected readNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nodeName"
    .parameter "nodeValue"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/miui/backup/BaseDescript;->readNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/backup/BackupItemDescript;->mType:I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "imei"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mImei:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppName:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "appPackage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppPackage:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_4
    const-string v0, "appPath"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppPath:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_5
    const-string v0, "dataDir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 80
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mDataDir:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_6
    const-string v0, "appVersionName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionName:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_7
    const-string v0, "appVersionCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput-object p2, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Ljava/io/File;)V
    .locals 2
    .parameter "baseDir"

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "descript"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v0, descriptDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    :cond_0
    invoke-super {p0, v0}, Lcom/miui/backup/BaseDescript;->write(Ljava/io/File;)V

    .line 64
    return-void
.end method

.method protected writeContent(Lorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "type"

    iget v1, p0, Lcom/miui/backup/BackupItemDescript;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "imei"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mImei:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "appName"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "appPackage"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "appPath"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppPath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "dataDir"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mDataDir:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "appVersionName"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "appVersionCode"

    iget-object v1, p0, Lcom/miui/backup/BackupItemDescript;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupItemDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/miui/backup/BackupItemDescript;->mXmlName:Ljava/lang/String;

    return-object v0
.end method
