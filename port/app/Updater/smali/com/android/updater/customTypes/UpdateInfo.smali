.class public Lcom/android/updater/customTypes/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c5388d18e78867bL


# instance fields
.field private branchCode:Ljava/lang/String;

.field private checksum:Ljava/lang/String;

.field public codebase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private descriptionUrl:Ljava/lang/String;

.field public device:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filename:Ljava/lang/String;

.field private filesize:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field public updateMirrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;

.field private versionForApply:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->updateMirrors:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->codebase:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->device:Ljava/util/List;

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    if-ne p1, p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    instance-of v3, p1, Lcom/android/updater/customTypes/UpdateInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 116
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/android/updater/customTypes/UpdateInfo;

    .line 119
    .local v0, ui:Lcom/android/updater/customTypes/UpdateInfo;
    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->codebase:Ljava/util/List;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->codebase:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->device:Ljava/util/List;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->device:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->branchCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->branchCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getBranchCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->branchCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->descriptionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->filesize:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionForApply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    return-object v0
.end method

.method public isIncremental()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBranchCode(Ljava/lang/String;)V
    .locals 0
    .parameter "bc"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->branchCode:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0
    .parameter "cs"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->checksum:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->description:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setDescriptionUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "descriptionUrl"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->descriptionUrl:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fn"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->filename:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .parameter "fs"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->filesize:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->type:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->version:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVersionForApply(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/updater/customTypes/UpdateInfo;->versionForApply:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/updater/customTypes/UpdateInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public updateFileUris()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 140
    .local v2, retValue:Ljava/util/List;,"Ljava/util/List<Ljava/net/URI;>;"
    iget-object v5, p0, Lcom/android/updater/customTypes/UpdateInfo;->updateMirrors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 141
    .local v3, u:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, mirror:Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/updater/customTypes/UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/updater/customTypes/UpdateInfo;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, uri:Ljava/lang/String;
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v1           #mirror:Ljava/lang/String;
    .end local v3           #u:Ljava/net/URI;
    .end local v4           #uri:Ljava/lang/String;
    :cond_1
    return-object v2
.end method
