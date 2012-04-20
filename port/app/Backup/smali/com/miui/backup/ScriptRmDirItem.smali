.class final Lcom/miui/backup/ScriptRmDirItem;
.super Lcom/miui/backup/ScriptRmItem;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/miui/backup/ScriptRmItem;-><init>(Ljava/lang/String;)V

    .line 499
    return-void
.end method


# virtual methods
.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    const-string v0, "rm -r"

    return-object v0
.end method
