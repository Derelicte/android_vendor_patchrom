.class Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;
.super Landroid/os/AsyncTask;
.source "UpdaterBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadUsageAppTask"
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
    .line 175
    iput-object p1, p0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;)V

    return-void
.end method

.method private uploadUsageApp()V
    .locals 23

    .prologue
    .line 200
    const-string v19, "usagestats"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v17

    .line 203
    .local v17, usageStatsService:Lcom/android/internal/app/IUsageStats;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 208
    .local v10, stats:[Lcom/android/internal/os/PkgUsageStats;
    if-nez v10, :cond_1

    .line 286
    .end local v10           #stats:[Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, e:Landroid/os/RemoteException;
    const-string v19, "UpdaterBackgroundService"

    const-string v20, "Failed initializing usage stats service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v10       #stats:[Lcom/android/internal/os/PkgUsageStats;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/updater/UpdaterBackgroundService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 213
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v16, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v12, 0xf

    .line 215
    .local v12, unit:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v13, uploadUnit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/PkgUsageStats;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    .line 219
    :try_start_1
    aget-object v19, v10, v4

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    move-wide/from16 v19, v0

    const-wide/32 v21, 0xea60

    cmp-long v19, v19, v21

    if-gez v19, :cond_3

    .line 216
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    :cond_3
    aget-object v19, v10, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 225
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_4

    invoke-static {}, Lcom/android/updater/UpdaterBackgroundService;->access$600()Ljava/util/HashSet;

    move-result-object v19

    aget-object v20, v10, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v19

    if-eqz v19, :cond_2

    .line 231
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_3
    aget-object v19, v10, v4

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v12, :cond_2

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->getUsageAppUnitUrl(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, url:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 240
    .end local v15           #url:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->getUsageAppUnitUrl(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 241
    .restart local v15       #url:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/updater/utils/SysUtils;->shouldUpload(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 245
    const/4 v4, 0x1

    :goto_4
    const/16 v19, 0x7

    move/from16 v0, v19

    if-gt v4, v0, :cond_8

    .line 246
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/updater/UpdaterBackgroundService;->getFilesDir()Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v11, storeFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 249
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    .local v9, reader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 251
    .local v6, line:Ljava/lang/String;
    :goto_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 253
    const/16 v19, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 257
    .end local v6           #line:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v19

    .line 245
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 255
    .restart local v6       #line:Ljava/lang/String;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 256
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 259
    .end local v6           #line:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v19

    goto :goto_6

    .line 263
    .end local v11           #storeFile:Ljava/io/File;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 264
    .local v14, uriWithParams:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    #calls: Lcom/android/updater/UpdaterBackgroundService;->upload(Ljava/lang/String;Z)Z
    invoke-static {v0, v14, v1}, Lcom/android/updater/UpdaterBackgroundService;->access$400(Lcom/android/updater/UpdaterBackgroundService;Ljava/lang/String;Z)Z

    goto :goto_7

    .line 268
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v14           #uriWithParams:Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 269
    .local v7, now:Ljava/util/Calendar;
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 270
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/updater/UpdaterBackgroundService;->getFilesDir()Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .restart local v11       #storeFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 273
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 275
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 276
    new-instance v18, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 277
    .local v18, writer:Ljava/io/BufferedWriter;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 278
    .restart local v14       #uriWithParams:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 279
    const-string v19, "/n"

    invoke-virtual/range {v18 .. v19}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 282
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #now:Ljava/util/Calendar;
    .end local v11           #storeFile:Ljava/io/File;
    .end local v14           #uriWithParams:Ljava/lang/String;
    .end local v18           #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v19

    goto/16 :goto_0

    .line 281
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #now:Ljava/util/Calendar;
    .restart local v11       #storeFile:Ljava/io/File;
    .restart local v18       #writer:Ljava/io/BufferedWriter;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 228
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #now:Ljava/util/Calendar;
    .end local v11           #storeFile:Ljava/io/File;
    .end local v15           #url:Ljava/lang/String;
    .end local v18           #writer:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v19

    goto/16 :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->uploadUsageApp()V

    .line 179
    iget-object v0, p0, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v0}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/updater/utils/Preferences;->setLastUploadUsageAppTime(J)V

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsageAppUnitUrl(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .parameter "pm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, stats:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/os/PkgUsageStats;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v4, usageAppBuilder:Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/PkgUsageStats;

    .line 187
    .local v2, stat:Lcom/android/internal/os/PkgUsageStats;
    const-string v5, "{\"P\":\"%s\", \"C\":\"%s\", \"T\":\"%s\"},"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    .end local v1           #item:Ljava/lang/String;
    .end local v2           #stat:Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getVersionUploadURLForMiliao()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/updater/utils/SysUtils;->appendUsageAppInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, uriWithParams:Ljava/lang/String;
    return-object v3
.end method
