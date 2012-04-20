.class Lcom/miui/backup/BackupUserAppCmd;
.super Lcom/miui/backup/BackupAppCmd;
.source "BackupCmd.java"


# instance fields
.field private mDefaultIME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "pkgInfo"
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 146
    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, srcFileFile:Ljava/io/File;
    new-instance v1, Lcom/miui/backup/BackupUserAppStrategy;

    iget-object v2, p0, Lcom/miui/backup/BackupUserAppCmd;->mDstFile:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupUserAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/miui/backup/BackupUserAppStrategy;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    goto :goto_0
.end method

.method protected getApkCopyName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
    const-string v0, ""

    .line 158
    .local v0, apkCopyName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/backup/BackupUserAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 159
    .local v1, apkSrc:Ljava/lang/String;
    const-string v3, "/pkg.apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "/pkg.apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, endIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .end local v2           #endIndex:I
    :cond_0
    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mPM:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postAction()Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    iget-object v2, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->postAction()Z

    move-result v0

    return v0
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->preAction()Z

    move-result v1

    return v1
.end method
