.class Lcom/android/systemui/settings/NotificationIconFilterSettings$3;
.super Lmiui/os/AsyncTaskWithProgress;
.source "NotificationIconFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/NotificationIconFilterSettings;->loadPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/content/Context;IIZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 324
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$200(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 325
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$100(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 329
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 330
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 333
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    iget-object v7, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    iget-object v8, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;-><init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;-><init>(Lcom/android/systemui/settings/NotificationIconFilterSettings$3;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 349
    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;
    invoke-static {v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 350
    .local v4, preferece:Landroid/preference/Preference;
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 348
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 353
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4           #preferece:Landroid/preference/Preference;
    :cond_4
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$202(Lcom/android/systemui/settings/NotificationIconFilterSettings;Z)Z

    .line 319
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #calls: Lcom/android/systemui/settings/NotificationIconFilterSettings;->updateFilterSettings()V
    invoke-static {v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$300(Lcom/android/systemui/settings/NotificationIconFilterSettings;)V

    .line 320
    return-void
.end method
