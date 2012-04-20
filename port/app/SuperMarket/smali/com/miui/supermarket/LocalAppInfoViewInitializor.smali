.class Lcom/miui/supermarket/LocalAppInfoViewInitializor;
.super Lcom/miui/supermarket/AppInfoViewInitializor;
.source "LocalAppInfoListAdapter.java"


# instance fields
.field private mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

.field private mObsoleteApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;Ljava/util/Map;Lcom/miui/supermarket/LocalAppInfoListAdapter;)V
    .locals 1
    .parameter "info"
    .parameter "view"
    .parameter "context"
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/supermarket/AppInfo;",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/supermarket/LocalAppInfoListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, obsoleteApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/AppInfoViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)V

    .line 82
    iput-object v0, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    .line 83
    iput-object v0, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mObsoleteApps:Ljava/util/Map;

    .line 93
    iput-object p4, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mObsoleteApps:Ljava/util/Map;

    .line 94
    iput-object p5, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/miui/supermarket/LocalAppInfoViewInitializor;)Lcom/miui/supermarket/LocalAppInfoListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    return-object v0
.end method

.method private showUpdateOrDownloadingIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 114
    iget-object v2, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mView:Landroid/view/View;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, updateIcon:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mView:Landroid/view/View;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, downloadingIcon:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    iget-object v3, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v3, v3, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mObsoleteApps:Ljava/util/Map;

    iget-object v3, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v3, v3, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 122
    new-instance v2, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;-><init>(Lcom/miui/supermarket/LocalAppInfoViewInitializor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mContext:Landroid/content/Context;

    const v1, 0x7f06001b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v5, v5, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/miui/supermarket/AppInfoViewInitializor;->initialize()V

    .line 100
    invoke-direct {p0}, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->showUpdateOrDownloadingIcon()V

    .line 101
    return-void
.end method

.method protected isAppInstalled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
