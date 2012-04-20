.class Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 776
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 777
    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 778
    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)Lcom/miui/gallery/data/MediaItem;
    .locals 4
    .parameter "info"

    .prologue
    .line 829
    iget-object v1, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 830
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget v2, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 831
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfTarget(Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 6
    .parameter "info"

    .prologue
    .line 835
    iget-object v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/miui/gallery/data/Path;

    if-nez v3, :cond_0

    iget v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 848
    :goto_0
    return v3

    .line 836
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 839
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-eqz v1, :cond_2

    .line 840
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 841
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/miui/gallery/data/Path;

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    iget v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v3, v0

    goto :goto_0

    .line 840
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 848
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/miui/gallery/data/Path;

    iget v5, p1, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/data/MediaSet;->getIndexOfItem(Lcom/miui/gallery/data/Path;I)I

    move-result v3

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 819
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 820
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 790
    :goto_0
    iget-boolean v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v4, :cond_5

    .line 791
    monitor-enter p0

    .line 792
    :try_start_0
    iget-boolean v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v4, :cond_0

    .line 793
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 794
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 795
    monitor-exit p0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    iput-boolean v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 799
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    new-instance v5, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2300(Lcom/miui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

    .line 800
    .local v0, info:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;
    sget-object v5, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 801
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v4}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 802
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 803
    .local v2, version:J
    iget-wide v6, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v4, v6, v2

    if-eqz v4, :cond_1

    .line 804
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 805
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v4

    iput v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 807
    :cond_1
    iget-boolean v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 813
    .end local v2           #version:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 808
    .restart local v2       #version:J
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    iget v6, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 809
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 810
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    iget-object v6, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/miui/gallery/data/Path;

    if-eq v4, v6, :cond_4

    .line 811
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v4

    iput v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 813
    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 814
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    new-instance v5, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;

    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {v5, v6, v0}, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2300(Lcom/miui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 816
    .end local v0           #info:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;
    .end local v1           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v2           #version:J
    :cond_5
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 824
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 825
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    monitor-exit p0

    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
