.class Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/AppManagementFragment;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/AppManagementFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private onPacakgeChangedInternal(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "dataChanged"

    .prologue
    .line 377
    move v0, p2

    .line 378
    .local v0, needNotify:Z
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;
    invoke-static {v1}, Lcom/miui/supermarket/AppManagementFragment;->access$600(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;
    invoke-static {v1}, Lcom/miui/supermarket/AppManagementFragment;->access$600(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #calls: Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V
    invoke-static {v1}, Lcom/miui/supermarket/AppManagementFragment;->access$100(Lcom/miui/supermarket/AppManagementFragment;)V

    .line 381
    const/4 v0, 0x1

    .line 384
    :cond_0
    if-eqz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v1}, Lcom/miui/supermarket/AppManagementFragment;->access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 387
    :cond_1
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 8
    .parameter "packageName"
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, dataChanged:Z
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v6}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v7}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1, v5}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/supermarket/util/SuperMarketUtil;->getAppInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Lcom/miui/supermarket/AppInfo;

    move-result-object v4

    .line 358
    .local v4, info:Lcom/miui/supermarket/AppInfo;
    if-eqz v4, :cond_1

    .line 359
    new-instance v1, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;

    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;-><init>(Lcom/miui/supermarket/AppManagementFragment;Lcom/miui/supermarket/AppManagementFragment$1;)V

    .line 360
    .local v1, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/miui/supermarket/AppInfo;>;"
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 361
    .local v0, appNumber:I
    const/4 v3, 0x0

    .line 362
    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 363
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    .line 367
    :cond_0
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #calls: Lcom/miui/supermarket/AppManagementFragment;->refreshTotalAppNum()V
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$700(Lcom/miui/supermarket/AppManagementFragment;)V

    .line 369
    const/4 v2, 0x1

    .line 372
    .end local v0           #appNumber:I
    .end local v1           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/miui/supermarket/AppInfo;>;"
    .end local v3           #i:I
    :cond_1
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 373
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->onPacakgeChangedInternal(Ljava/lang/String;Z)V

    .line 374
    return-void

    .line 362
    .restart local v0       #appNumber:I
    .restart local v1       #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/miui/supermarket/AppInfo;>;"
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #appNumber:I
    .end local v1           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/miui/supermarket/AppInfo;>;"
    .end local v3           #i:I
    :cond_4
    move v2, v5

    .line 372
    goto :goto_1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, dataChanged:Z
    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/AppInfo;

    .line 341
    .local v2, info:Lcom/miui/supermarket/AppInfo;
    iget-object v3, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #calls: Lcom/miui/supermarket/AppManagementFragment;->refreshTotalAppNum()V
    invoke-static {v3}, Lcom/miui/supermarket/AppManagementFragment;->access$700(Lcom/miui/supermarket/AppManagementFragment;)V

    .line 344
    const/4 v0, 0x1

    .line 349
    .end local v2           #info:Lcom/miui/supermarket/AppInfo;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->onPacakgeChangedInternal(Ljava/lang/String;Z)V

    .line 350
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    .line 313
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, dataChanged:Z
    iget-object v5, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/AppInfo;

    .line 318
    .local v2, info:Lcom/miui/supermarket/AppInfo;
    iget-object v5, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v5}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1, v4}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 320
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 321
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    .line 322
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, v2, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    .line 323
    iget-object v5, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v5}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v2, Lcom/miui/supermarket/AppInfo;->size:I

    .line 324
    const/4 v0, 0x1

    .line 330
    .end local v2           #info:Lcom/miui/supermarket/AppInfo;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, p0, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v5}, Lcom/miui/supermarket/AppManagementFragment;->access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 331
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->onPacakgeChangedInternal(Ljava/lang/String;Z)V

    .line 332
    return-void

    :cond_3
    move v0, v4

    .line 330
    goto :goto_0
.end method
