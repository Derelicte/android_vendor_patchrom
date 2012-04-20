.class public Lcom/miui/backup/ui/BackupSelectActivity;
.super Lcom/miui/backup/ui/BaseSelectList;
.source "BackupSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/backup/ui/BackupSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    return-void
.end method

.method private prepareSysDataInfos()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, systemPackageLabel:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 64
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 68
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v8, Lcom/miui/backup/Customization;->SYSTEM_PACKAGE:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 72
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v9, Lcom/miui/backup/Customization;->SYSTEM_PACKAGE:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    new-instance v0, Lcom/miui/backup/AppInfo;

    invoke-direct {v0}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 74
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    aget-object v8, v7, v1

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 75
    iput v10, v0, Lcom/miui/backup/AppInfo;->type:I

    .line 76
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 79
    iget-object v8, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v1           #i:I
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v8, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSortDescComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, systemDataLabel:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v8, Lcom/miui/backup/Customization;->SYSTEM_DATA:[Lcom/miui/backup/SystemData;

    array-length v8, v8

    if-ge v1, v8, :cond_6

    .line 93
    new-instance v0, Lcom/miui/backup/AppInfo;

    invoke-direct {v0}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 94
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    aget-object v8, v6, v1

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 95
    const/4 v8, 0x2

    iput v8, v0, Lcom/miui/backup/AppInfo;->type:I

    .line 96
    sget-object v8, Lcom/miui/backup/Customization;->SYSTEM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 97
    sget-object v8, Lcom/miui/backup/Customization;->SYSTEM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    .line 98
    sget-object v8, Lcom/miui/backup/Customization;->SYSTEM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 101
    iget-object v8, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v9, "SETTING"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {p0, v9}, Lcom/miui/backup/ui/BackupSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 104
    :cond_4
    iget-object v8, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v9, "ACCOUNT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f070025

    invoke-virtual {p0, v9}, Lcom/miui/backup/ui/BackupSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 107
    :cond_5
    iget-object v8, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 111
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/miui/backup/ui/BackupSelectActivity;->selectAllSysData(Z)V

    .line 112
    return-void
.end method

.method private prepareUserAppInfos()V
    .locals 7

    .prologue
    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 119
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 123
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 128
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    new-instance v0, Lcom/miui/backup/AppInfo;

    invoke-direct {v0}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 134
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 135
    const/4 v5, 0x1

    iput v5, v0, Lcom/miui/backup/AppInfo;->type:I

    .line 136
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 139
    iget-object v5, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSortDescComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/ui/BackupSelectActivity;->CONTENT_BASE_DIR:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/backup/BackupUtils;->getDirNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getNextButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BackupSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedApps()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, p0, Lcom/miui/backup/ui/BackupSelectActivity;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-object v0
.end method

.method protected getTaskType()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BackupSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareAppInfos()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->prepareSysDataInfos()V

    .line 54
    invoke-direct {p0}, Lcom/miui/backup/ui/BackupSelectActivity;->prepareUserAppInfos()V

    .line 55
    return-void
.end method

.method protected startExecution()V
    .locals 4

    .prologue
    .line 149
    const-wide/32 v1, 0x3200000

    invoke-static {v1, v2}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/BackupSelectActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/BackupSelectActivity$1;-><init>(Lcom/miui/backup/ui/BackupSelectActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 160
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    goto :goto_0
.end method
