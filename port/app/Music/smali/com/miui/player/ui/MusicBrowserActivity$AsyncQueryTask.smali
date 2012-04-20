.class Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private final mAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHistoryBrowserRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/controller/HistoryBrowserController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;Lcom/miui/player/ui/controller/HistoryBrowserController;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "hb"

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mAdapterRef:Ljava/lang/ref/WeakReference;

    .line 362
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mHistoryBrowserRef:Ljava/lang/ref/WeakReference;

    .line 363
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 13
    .parameter "params"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    .local v0, c:J
    const-string v8, "AsyncQueryTask"

    const-string v9, "async query start"

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    sget-object v8, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v8, v8

    new-array v6, v8, [I

    .line 370
    .local v6, numArr:[I
    const/4 v4, 0x0

    .line 371
    .local v4, ii:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ii:I
    .local v5, ii:I
    const/4 v8, -0x1

    aput v8, v6, v4

    .line 372
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ii:I
    .restart local v4       #ii:I
    iget-object v8, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v12}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v8

    aput v8, v6, v5

    .line 373
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ii:I
    .restart local v5       #ii:I
    iget-object v8, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/player/provider/MediaProviderHelper;->getArtistCount(Landroid/content/Context;)I

    move-result v8

    aput v8, v6, v4

    .line 374
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ii:I
    .restart local v4       #ii:I
    iget-object v8, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v12}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v8

    aput v8, v6, v5

    .line 376
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ii:I
    .restart local v5       #ii:I
    aput v10, v6, v4

    .line 377
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ii:I
    .restart local v4       #ii:I
    aput v10, v6, v5

    .line 379
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 381
    iget-object v8, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 382
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 383
    sget-object v8, Lcom/miui/player/ui/MusicBrowserActivity;->DRIVER_TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v8, v8, v3

    iget-object v7, v8, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    .line 384
    .local v7, pref:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 385
    aget v8, v6, v3

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v7           #pref:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #i:I
    :cond_2
    const-string v8, "AsyncQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "async query task time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;

    .line 401
    .local v0, adapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;->updateNums([I)V

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mHistoryBrowserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/controller/HistoryBrowserController;

    .line 406
    .local v1, hb:Lcom/miui/player/ui/controller/HistoryBrowserController;
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1}, Lcom/miui/player/ui/controller/HistoryBrowserController;->refreshTrackCount()V

    .line 410
    .end local v0           #adapter:Lcom/miui/player/ui/MusicBrowserActivity$MusicBrowserAdapter;
    .end local v1           #hb:Lcom/miui/player/ui/controller/HistoryBrowserController;
    :cond_1
    return-void
.end method
