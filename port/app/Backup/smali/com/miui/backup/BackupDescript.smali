.class public Lcom/miui/backup/BackupDescript;
.super Lcom/miui/backup/BaseDescript;
.source "BackupDescript.java"


# instance fields
.field public mApkCount:Ljava/lang/String;

.field public mDate:Ljava/lang/String;

.field public mSysAppCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/backup/BaseDescript;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "date"
    .parameter "sysAppCount"
    .parameter "apkCount"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/backup/BaseDescript;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/backup/BackupDescript;->mDate:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/miui/backup/BackupDescript;->mSysAppCount:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/miui/backup/BackupDescript;->mApkCount:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public readBackup(Ljava/io/File;)Z
    .locals 1
    .parameter "baseDir"

    .prologue
    .line 24
    const-string v0, "descript.xml"

    invoke-virtual {p0, p1, v0}, Lcom/miui/backup/BackupDescript;->read(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected readNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "nodeName"
    .parameter "nodeValue"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/backup/BaseDescript;->readNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iput-object p2, p0, Lcom/miui/backup/BackupDescript;->mDate:Ljava/lang/String;

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v0, "sysAppCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iput-object p2, p0, Lcom/miui/backup/BackupDescript;->mSysAppCount:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "apkCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object p2, p0, Lcom/miui/backup/BackupDescript;->mApkCount:Ljava/lang/String;

    goto :goto_0
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
    .line 44
    const-string v0, "date"

    iget-object v1, p0, Lcom/miui/backup/BackupDescript;->mDate:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "sysAppCount"

    iget-object v1, p0, Lcom/miui/backup/BackupDescript;->mSysAppCount:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "apkCount"

    iget-object v1, p0, Lcom/miui/backup/BackupDescript;->mApkCount:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/backup/BackupDescript;->addNode(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "descript.xml"

    return-object v0
.end method
