.class public Lcom/android/providers/downloads/DownloadUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    const-string v8, "intent_extra_register_downloads_update_progress"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 15
    .local v6, registerIds:[J
    const-string v8, "intent_extra_unregister_downloads_update_progress"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 17
    .local v7, unregisterIds:[J
    if-eqz v6, :cond_0

    .line 18
    move-object v1, v6

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v1, v2

    .line 19
    .local v3, id:J
    sget-object v8, Lcom/android/providers/downloads/Constants;->sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    :cond_0
    if-eqz v7, :cond_1

    .line 23
    move-object v1, v7

    .restart local v1       #arr$:[J
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-wide v3, v1, v2

    .line 24
    .restart local v3       #id:J
    sget-object v8, Lcom/android/providers/downloads/Constants;->sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    .end local v6           #registerIds:[J
    .end local v7           #unregisterIds:[J
    :cond_1
    return-void
.end method
