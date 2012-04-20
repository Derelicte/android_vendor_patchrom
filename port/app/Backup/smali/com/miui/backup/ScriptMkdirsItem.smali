.class final Lcom/miui/backup/ScriptMkdirsItem;
.super Lcom/miui/backup/ScriptRmItem;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/miui/backup/ScriptRmItem;-><init>(Ljava/lang/String;)V

    .line 595
    return-void
.end method


# virtual methods
.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    const-string v0, "mkdir -p"

    return-object v0
.end method

.method public isSucceeded()Z
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/ScriptMkdirsItem;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
