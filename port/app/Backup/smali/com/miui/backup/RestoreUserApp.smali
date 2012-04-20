.class Lcom/miui/backup/RestoreUserApp;
.super Lcom/miui/backup/RestoreSystemApp;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/RestoreUserApp$1;,
        Lcom/miui/backup/RestoreUserApp$DeleteObserver;
    }
.end annotation


# instance fields
.field private mDeleteSuccess:Z

.field private mDeleteWaiting:Lcom/miui/backup/Waitor;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreSystemApp;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 429
    new-instance v0, Lcom/miui/backup/Waitor;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/miui/backup/Waitor;-><init>(I)V

    iput-object v0, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteWaiting:Lcom/miui/backup/Waitor;

    .line 433
    return-void
.end method

.method static synthetic access$002(Lcom/miui/backup/RestoreUserApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/backup/RestoreUserApp;)Lcom/miui/backup/Waitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteWaiting:Lcom/miui/backup/Waitor;

    return-object v0
.end method

.method private deletePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/miui/backup/RestoreUserApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/miui/backup/RestoreUserApp$DeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/backup/RestoreUserApp$DeleteObserver;-><init>(Lcom/miui/backup/RestoreUserApp;Lcom/miui/backup/RestoreUserApp$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 469
    return-void
.end method


# virtual methods
.method protected preAction()Z
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Lcom/miui/backup/RestoreSystemApp;->preAction()Z

    move-result v0

    .line 438
    .local v0, ret:Z
    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/miui/backup/RestoreUserApp;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/miui/backup/RestoreUserApp;->pkgExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/miui/backup/RestoreUserApp;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/backup/RestoreUserApp;->deletePackage(Ljava/lang/String;)V

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteWaiting:Lcom/miui/backup/Waitor;

    invoke-virtual {v1}, Lcom/miui/backup/Waitor;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteWaiting:Lcom/miui/backup/Waitor;

    invoke-virtual {v1}, Lcom/miui/backup/Waitor;->waitInterval()V

    goto :goto_0

    .line 445
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteSuccess:Z

    .line 448
    :cond_1
    iget-boolean v1, p0, Lcom/miui/backup/RestoreUserApp;->mDeleteSuccess:Z

    return v1
.end method
