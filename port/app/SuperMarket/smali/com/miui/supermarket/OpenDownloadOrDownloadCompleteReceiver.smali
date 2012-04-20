.class public Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadOrDownloadCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    const-string v1, "extra_download_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 46
    .local v12, id:J
    const-wide/16 v3, -0x1

    cmp-long v1, v12, v3

    if-nez v1, :cond_1

    .line 93
    .end local v12           #id:J
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v12       #id:J
    :cond_1
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 50
    .local v2, data:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "entity"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 61
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 62
    .local v8, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 63
    .local v7, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 65
    .local v9, apkPath:Ljava/lang/String;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 67
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 71
    :cond_2
    if-eqz v11, :cond_3

    .line 72
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/16 v1, 0x2000

    move-object/from16 v0, p1

    invoke-static {v0, v7, v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 79
    .local v14, info:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v3, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;-><init>(Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_5

    const/4 v1, 0x2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 72
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 79
    .restart local v14       #info:Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 84
    .end local v2           #data:Landroid/net/Uri;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #apkPath:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #id:J
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    :cond_6
    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v15, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const-string v1, "intent_extra_application_packagename"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
