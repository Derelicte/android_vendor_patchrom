.class Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;
.super Landroid/os/AsyncTask;
.source "UpdaterBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadInstallAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/UpdaterBackgroundService;


# direct methods
.method private constructor <init>(Lcom/android/updater/UpdaterBackgroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;)V

    return-void
.end method

.method private uploadInstallApp()V
    .locals 9

    .prologue
    .line 321
    iget-object v8, p0, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    invoke-virtual {v8}, Lcom/android/updater/UpdaterBackgroundService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 322
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .restart local v0       #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 328
    .local v4, size:I
    const/16 v6, 0xa

    .line 329
    .local v6, unit:I
    div-int v8, v4, v6

    add-int/lit8 v7, v8, 0x1

    .line 330
    .local v7, unitSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 331
    mul-int v5, v2, v6

    .line 332
    .local v5, start:I
    add-int v8, v5, v6

    add-int/lit8 v1, v8, -0x1

    .line 333
    .local v1, end:I
    if-le v1, v4, :cond_1

    .line 334
    move v1, v4

    .line 336
    :cond_1
    invoke-interface {v0, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->uploadInstallAppUnit(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v1           #end:I
    .end local v5           #start:I
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->uploadInstallApp()V

    .line 294
    iget-object v0, p0, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v0}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/updater/utils/Preferences;->setLastUploadInstallAppTime(J)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public uploadInstallAppUnit(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 11
    .parameter "pm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v2, installAppBuilder:Ljava/lang/StringBuilder;
    const-string v7, "["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 302
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, label:Ljava/lang/String;
    const-string v7, "{\"N\":\"%s\", \"P\":\"%s\"},"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #item:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    :cond_1
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 310
    .local v5, lastIndex:I
    if-gez v5, :cond_2

    .line 318
    :goto_1
    return-void

    .line 313
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getVersionUploadURLForMiliao()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/updater/utils/SysUtils;->appendInstallAppInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, uriWithParams:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #calls: Lcom/android/updater/UpdaterBackgroundService;->upload(Ljava/lang/String;Z)Z
    invoke-static {v7, v6, v10}, Lcom/android/updater/UpdaterBackgroundService;->access$400(Lcom/android/updater/UpdaterBackgroundService;Ljava/lang/String;Z)Z

    goto :goto_1
.end method
