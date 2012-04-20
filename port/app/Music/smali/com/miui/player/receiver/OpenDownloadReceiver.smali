.class public Lcom/miui/player/receiver/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static openDownloadList(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, action:Ljava/lang/String;
    const-string v3, "download"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/DownloadManager;

    .line 36
    .local v23, manager:Landroid/app/DownloadManager;
    new-instance v26, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v26 .. v26}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 37
    .local v26, query:Landroid/app/DownloadManager$Query;
    const-string v3, "extra_download_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 38
    .local v19, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v19, v3

    if-nez v3, :cond_1

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v19, v3, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 44
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v13

    .line 45
    .local v13, c:Landroid/database/Cursor;
    if-nez v13, :cond_2

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 51
    invoke-static/range {v19 .. v20}, Lcom/miui/player/network/DownloadInfoManager;->unregisterDetails(J)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, details:Ljava/lang/String;
    const/16 v27, 0x0

    .line 54
    .local v27, retry:Z
    if-eqz v6, :cond_4

    .line 55
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v21, json:Lorg/json/JSONObject;
    const-string v3, "online_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, onlineId:Ljava/lang/String;
    const-string v3, "artist"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, artist:Ljava/lang/String;
    const-string v3, "track"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 59
    .local v30, track:Ljava/lang/String;
    const-string v3, "mp3"

    move-object/from16 v0, v30

    invoke-static {v0, v12, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, appointName:Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    const-string v3, "status"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 63
    .local v28, status:I
    invoke-static/range {v28 .. v28}, Lcom/miui/player/network/DownloadProvider;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    move-object/from16 v0, p1

    invoke-static {v0, v7, v6}, Lcom/miui/player/network/MP3Downloader;->correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    :goto_1
    if-nez v27, :cond_4

    .line 82
    invoke-static {v5}, Lcom/miui/player/network/DownloadInfoManager;->unregisterDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v5           #onlineId:Ljava/lang/String;
    .end local v7           #appointName:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v28           #status:I
    .end local v30           #track:Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v27, :cond_0

    .line 92
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.miui.player.DOWNLOAD_COMPLETED"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v18, i:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 66
    .end local v18           #i:Landroid/content/Intent;
    .restart local v5       #onlineId:Ljava/lang/String;
    .restart local v7       #appointName:Ljava/lang/String;
    .restart local v12       #artist:Ljava/lang/String;
    .restart local v21       #json:Lorg/json/JSONObject;
    .restart local v28       #status:I
    .restart local v30       #track:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v5}, Lcom/miui/player/network/DownloadInfoManager;->getCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 67
    .local v14, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "mp3"

    invoke-static {v3}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 68
    .local v15, dir:Ljava/io/File;
    if-eqz v14, :cond_3

    if-eqz v15, :cond_3

    .line 69
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v14, v3, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 73
    const/16 v27, 0x1

    .line 74
    goto :goto_1

    .line 76
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 88
    .end local v5           #onlineId:Ljava/lang/String;
    .end local v7           #appointName:Ljava/lang/String;
    .end local v12           #artist:Ljava/lang/String;
    .end local v14           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #dir:Ljava/io/File;
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v28           #status:I
    .end local v30           #track:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 95
    .end local v6           #details:Ljava/lang/String;
    .end local v27           #retry:Z
    :cond_7
    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const/4 v11, 0x1

    .line 97
    .local v11, allDownloadSuccess:Z
    const-string v3, "status"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 98
    .local v29, statusIdx:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_8

    .line 99
    move/from16 v0, v29

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 100
    .restart local v28       #status:I
    invoke-static/range {v28 .. v28}, Lcom/miui/player/network/DownloadProvider;->isStatusSuccess(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 101
    const/4 v11, 0x0

    .line 106
    .end local v28           #status:I
    :cond_8
    if-eqz v11, :cond_b

    .line 107
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "local_uri"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 109
    .local v17, filename:Ljava/lang/String;
    const-string v3, "media_type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 110
    .local v24, mimetype:Ljava/lang/String;
    new-instance v22, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v22, launchIntent:Landroid/content/Intent;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 113
    .local v25, path:Landroid/net/Uri;
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 114
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v25

    .line 116
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/high16 v3, 0x1000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 120
    :catch_1
    move-exception v16

    .line 121
    .local v16, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 98
    .end local v16           #ex:Landroid/content/ActivityNotFoundException;
    .end local v17           #filename:Ljava/lang/String;
    .end local v22           #launchIntent:Landroid/content/Intent;
    .end local v24           #mimetype:Ljava/lang/String;
    .end local v25           #path:Landroid/net/Uri;
    .restart local v28       #status:I
    :cond_a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 127
    .end local v28           #status:I
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
