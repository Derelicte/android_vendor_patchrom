.class Lcom/miui/backup/ScriptRmItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ScriptRmItem;->mFileName:Ljava/lang/String;

    .line 474
    iput-object p1, p0, Lcom/miui/backup/ScriptRmItem;->mFileName:Ljava/lang/String;

    .line 475
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptRmItem;->getCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptRmItem;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    const-string v0, "rm"

    return-object v0
.end method
