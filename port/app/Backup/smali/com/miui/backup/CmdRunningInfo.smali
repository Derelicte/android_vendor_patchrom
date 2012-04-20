.class public Lcom/miui/backup/CmdRunningInfo;
.super Ljava/lang/Object;
.source "CmdRunningInfo.java"


# instance fields
.field public finishedSize:Ljava/lang/String;

.field public isBackup:Z

.field public progress:I

.field public volatile status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    return-void
.end method
