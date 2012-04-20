.class Lcom/miui/milk/ui/CloudRestoreFragement;
.super Lcom/miui/milk/ui/CloudBaseFragment;
.source "CloudRestoreMain.java"


# instance fields
.field private mAppInfo:Lcom/miui/milk/common/AppInfo;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideLayout:Landroid/view/View;

.field private mGuideText:Landroid/widget/TextView;

.field private mLastBackupInfo:Landroid/widget/TextView;

.field private mResourceType:I

.field private mRestoreContact:Z

.field private mRestoreGuide:Landroid/widget/TextView;

.field private mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

.field private mRestoreType:Landroid/widget/TextView;

.field private mStep:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBaseFragment;-><init>()V

    return-void
.end method

.method private canRestore()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 316
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 321
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareAppInfos(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const v7, 0x7f070024

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 108
    const-string v3, "ADDRESSBOOK"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iput-boolean v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreContact:Z

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, accountPackageLabel:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 113
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    new-instance v3, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v3}, Lcom/miui/milk/common/AppInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    .line 115
    iget-object v5, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput-boolean v4, v3, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 120
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput v6, v3, Lcom/miui/milk/common/AppInfo;->type:I

    .line 121
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v6, v5, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 124
    :cond_1
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/miui/backup/SystemData;->mResourceType:I

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mResourceType:I

    move v3, v4

    .line 146
    :goto_1
    return v3

    .line 112
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, simDataLabel:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 131
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    new-instance v3, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v3}, Lcom/miui/milk/common/AppInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    .line 133
    iget-object v5, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput v6, v3, Lcom/miui/milk/common/AppInfo;->type:I

    .line 135
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput-boolean v4, v3, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 136
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v5, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v5, v3, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v6, v5, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 142
    :cond_4
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/miui/backup/SystemData;->mResourceType:I

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mResourceType:I

    move v3, v4

    .line 143
    goto/16 :goto_1

    .line 130
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public doRestore()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudRestoreFragement;->doRestore(Ljava/util/ArrayList;)V

    .line 331
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->leave()V

    .line 332
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/miui/milk/ui/CloudBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->getView()Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLoginLayout:Landroid/view/View;

    .line 79
    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLogoutLayout:Landroid/view/View;

    .line 80
    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideLayout:Landroid/view/View;

    .line 81
    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    .line 82
    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    .line 83
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLastBackupInfo:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreType:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreGuide:Landroid/widget/TextView;

    .line 86
    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/miui/milk/ui/CloudRestoreFragement$1;

    invoke-direct {v5, p0}, Lcom/miui/milk/ui/CloudRestoreFragement$1;-><init>(Lcom/miui/milk/ui/CloudRestoreFragement;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "cloud_restore_type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/milk/ui/CloudRestoreFragement;->prepareAppInfos(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreGuide:Landroid/widget/TextView;

    const v5, 0x7f070095

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v8, v8, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 101
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v4, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 102
    const/4 v4, 0x3

    iput v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v8, 0x7f07001a

    const/4 v7, 0x5

    const v5, 0x7f07006e

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeGroup(I)V

    .line 152
    const v2, 0x7f07006d

    invoke-interface {p1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 153
    .local v1, returnMenu:Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    const/4 v2, 0x2

    const v3, 0x7f070086

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 157
    .local v0, nextMenu:Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    iget v2, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    packed-switch v2, :pswitch_data_0

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 187
    iget-object v2, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v2}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 188
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    :cond_0
    return-void

    .line 162
    :pswitch_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 163
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 168
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 173
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 181
    :pswitch_4
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 233
    :goto_0
    return v1

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->leave()V

    :cond_0
    :goto_1
    move v1, v2

    .line 233
    goto :goto_0

    .line 201
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->isSdcardLimit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 203
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v3, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 204
    iput v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    .line 207
    :cond_1
    iget v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 209
    :pswitch_2
    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_1

    .line 214
    :pswitch_3
    iget v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    .line 215
    new-instance v3, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, p0, v2}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 216
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 221
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->canRestore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-boolean v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreContact:Z

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudRestoreFragement;->restore(Z)V

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreFragement;->leave()V

    goto :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public refreshUI(Z)Z
    .locals 15
    .parameter "requestError"

    .prologue
    .line 238
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 239
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v10, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 240
    const/4 v10, 0x0

    iput v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    .line 243
    :cond_0
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLogoutLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLoginLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 247
    iget v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    packed-switch v10, :pswitch_data_0

    .line 284
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 285
    const/4 v10, 0x0

    .line 312
    :goto_1
    return v10

    .line 249
    :pswitch_0
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLogoutLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020005

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const/high16 v11, 0x7f02

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 252
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f070038

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 253
    const/4 v10, 0x0

    goto :goto_1

    .line 256
    :pswitch_1
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020002

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const/high16 v11, 0x7f02

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 259
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f070098

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 260
    const/4 v10, 0x0

    goto :goto_1

    .line 263
    :pswitch_2
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020006

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020001

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 266
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f070098

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 267
    const/4 v10, 0x0

    goto :goto_1

    .line 270
    :pswitch_3
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLoginLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020003

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020001

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 273
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f070034

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 277
    :pswitch_4
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLoginLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020007

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020004

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 280
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f070034

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 288
    :cond_1
    sget-object v8, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 289
    .local v8, showNumberId:Ljava/lang/String;
    sget-object v10, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v10}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 290
    .local v1, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v2

    .line 291
    .local v2, containerType:I
    const/4 v10, 0x1

    if-eq v2, v10, :cond_3

    const/4 v10, 0x2

    if-ne v2, v10, :cond_2

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 293
    :cond_3
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v7

    .line 294
    .local v7, resList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MetadataProtos$Resource;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 295
    .local v6, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual {v6}, Lcom/miui/milk/model/MetadataProtos$Resource;->getType()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mResourceType:I

    if-ne v10, v11, :cond_4

    .line 296
    iput-object v6, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    goto :goto_2

    .line 302
    .end local v1           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    .end local v2           #containerType:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #res:Lcom/miui/milk/model/MetadataProtos$Resource;
    .end local v7           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MetadataProtos$Resource;>;"
    :cond_5
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    if-eqz v10, :cond_7

    .line 303
    const v10, 0x7f070094

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v13}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, totalNum:Ljava/lang/String;
    const v10, 0x7f070089

    invoke-virtual {p0, v10}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, date:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v10}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 306
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mLastBackupInfo:Landroid/widget/TextView;

    const-string v11, "%s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .end local v3           #date:Ljava/lang/String;
    .end local v9           #totalNum:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 307
    .restart local v3       #date:Ljava/lang/String;
    .restart local v9       #totalNum:Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v10, :cond_6

    .line 308
    const v10, 0x7f070088

    invoke-virtual {p0, v10}, Lcom/miui/milk/ui/CloudRestoreFragement;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 338
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/CloudRestoreFragement;->mStep:I

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudRestoreFragement;->refreshUI(Z)Z

    .line 343
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    :cond_0
    return-void
.end method
