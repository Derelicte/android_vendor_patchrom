.class public Lcom/miui/home/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherModel$LoaderTask;,
        Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;,
        Lcom/miui/home/launcher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static sDelayedUpdateBuffer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mApp:Lcom/miui/home/launcher/LauncherApplication;

.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/home/launcher/DeferredHandler;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedPresetPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 84
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 384
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/LauncherApplication;Lcom/miui/home/launcher/IconCache;)V
    .locals 1
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/miui/home/launcher/DeferredHandler;

    invoke-direct {v0}, Lcom/miui/home/launcher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/miui/home/launcher/AllAppsList;

    invoke-direct {v0}, Lcom/miui/home/launcher/AllAppsList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mGadgets:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mApp:Lcom/miui/home/launcher/LauncherApplication;

    .line 125
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 9
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 321
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V

    .line 322
    return-void
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V
    .locals 11
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "reload"

    .prologue
    .line 329
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 330
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 331
    move/from16 v0, p6

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 332
    move/from16 v0, p7

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherApplication;

    .line 335
    .local v1, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 337
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 340
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 343
    const-string v5, "Launcher.Model"

    const-string v6, "Adding item to database (%d, %d) of screen %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-wide v9, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v3, Lcom/miui/home/launcher/LauncherModel$3;

    move/from16 v0, p8

    invoke-direct {v3, v2, v4, p1, v0}, Lcom/miui/home/launcher/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 367
    .local v3, r:Ljava/lang/Runnable;
    sget-object v5, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-eq v5, v6, :cond_0

    if-eqz p8, :cond_1

    .line 368
    :cond_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_1
    sget-object v5, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 138
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 140
    invoke-static/range {p0 .. p7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    goto :goto_0
.end method

.method static applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$2;

    invoke-direct {v1, v0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$2;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "Launcher.Model"

    const-string v3, "Deleting item from database (%d, %d) of screen %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$4;

    invoke-direct {v1, v0, p1, p0}, Lcom/miui/home/launcher/LauncherModel$4;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/ItemInfo;Landroid/content/Context;)V

    .line 440
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 448
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$5;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/FolderInfo;)V

    .line 453
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;J)",
            "Lcom/miui/home/launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1671
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/miui/home/launcher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1672
    .local v0, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v1, :cond_1

    .line 1674
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    .end local v0           #folderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1675
    .restart local v0       #folderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :cond_1
    return-object v0
.end method

.method static flashDelayedUpdateItemFlags(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 386
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 387
    const/4 v3, 0x0

    .line 396
    :goto_0
    return v3

    .line 389
    :cond_0
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 390
    .local v1, info:Lcom/miui/home/launcher/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "launchCount"

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->launchCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v3, "itemFlags"

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    iget-wide v3, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v3, v4, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    goto :goto_1

    .line 395
    .end local v1           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 396
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 240
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v1, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v1, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "spanX"

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "spanY"

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1585
    new-instance v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v4}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1587
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1588
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1589
    const/4 v1, 0x0

    iput v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1591
    iget-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 1593
    const-string v1, "Launcher.Model"

    const-string v2, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 1631
    :goto_0
    return-object v1

    .line 1597
    :cond_0
    const-string v1, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    iget-object v2, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1598
    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1599
    const/4 v1, 0x2

    iput v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :goto_1
    move-object v1, v4

    .line 1631
    goto :goto_0

    .line 1602
    :cond_1
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1605
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1606
    check-cast v1, Landroid/graphics/Bitmap;

    .line 1607
    iput v8, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1624
    :goto_2
    if-nez v1, :cond_2

    .line 1625
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1626
    iput-boolean v8, v4, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1628
    :cond_2
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1609
    :cond_3
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1610
    if-eqz v2, :cond_4

    instance-of v1, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_4

    .line 1612
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v1, v0

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1613
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1614
    iget-object v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1616
    iget-object v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1617
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 1620
    goto :goto_2

    .line 1618
    :catch_0
    move-exception v1

    .line 1619
    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load shortcut icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method

.method private makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1371
    if-eqz p1, :cond_2

    .line 1372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1373
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1377
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1378
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1380
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v1, "cellX"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v1, "cellY"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v1, "spanX"

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v1, "spanY"

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    iput p6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 231
    iput p7, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 232
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 233
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 235
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 236
    return-void
.end method

.method private onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1387
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1388
    :try_start_0
    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1391
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1393
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1398
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 1399
    return-void

    .line 1398
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLoadShortcuts(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1364
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1365
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1367
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    return-void
.end method

.method private onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1410
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1411
    :try_start_0
    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 1412
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1415
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1417
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->deletePresetArchive()Z

    .line 1420
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1422
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    monitor-exit v2

    .line 1423
    return-void

    .line 1422
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onRemoveItems(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1403
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 1404
    .local v1, info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    return-void
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 171
    iput p4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 172
    iput p5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 173
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 174
    iput p3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 183
    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 159
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 661
    .local v1, oldTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 662
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 667
    :cond_1
    return v0
.end method

.method static updateFolderTitleInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 375
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 378
    return-void
.end method

.method static updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 400
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    .line 403
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 186
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 187
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$1;

    invoke-direct {v1, v0, v2, p3}, Lcom/miui/home/launcher/LauncherModel$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 195
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 415
    const-string v1, "Launcher.Model"

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 419
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 11
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 1555
    if-eqz p3, :cond_1

    iget-wide v4, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1556
    .local v4, screenId:J
    :goto_0
    if-eqz p3, :cond_2

    iget v6, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 1557
    .local v6, cellX:I
    :goto_1
    if-eqz p3, :cond_0

    iget v7, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 1558
    .local v7, cellY:I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 1559
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_3

    move-object v1, v0

    .line 1581
    .end local v1           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_2
    return-object v1

    .line 1555
    .end local v4           #screenId:J
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .restart local v4       #screenId:J
    :cond_2
    move v6, v7

    .line 1556
    goto :goto_1

    .line 1562
    .restart local v1       #info:Lcom/miui/home/launcher/ShortcutInfo;
    .restart local v6       #cellX:I
    .restart local v7       #cellY:I
    :cond_3
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 1563
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1564
    :try_start_0
    iget v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eq v3, v8, :cond_4

    .line 1565
    iget-object v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1566
    .local v9, component:Landroid/content/ComponentName;
    if-eqz v9, :cond_4

    .line 1567
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1568
    monitor-exit v2

    move-object v1, v0

    goto :goto_2

    .line 1572
    .end local v9           #component:Landroid/content/ComponentName;
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v10, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1573
    monitor-exit v2

    move-object v1, v0

    goto :goto_2

    .line 1575
    :cond_5
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1577
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    :cond_6
    const-wide/16 v2, -0x64

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V

    .line 1580
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    goto :goto_2

    .line 1577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1681
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->dumpState()V

    .line 1687
    :goto_0
    return-void

    .line 1685
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1546
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1548
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1550
    :goto_0
    return-object v2

    .line 1549
    :catch_0
    move-exception v1

    .line 1550
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 10
    .parameter "intent"
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1489
    const/4 v1, 0x0

    .line 1490
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1491
    .local v3, info:Lcom/miui/home/launcher/ShortcutInfo;
    const/4 v8, 0x1

    iput v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 1492
    const/16 v8, 0x13

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 1496
    move/from16 v0, p8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1497
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1498
    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    packed-switch v8, :pswitch_data_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1534
    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1538
    :cond_1
    :goto_0
    const/4 v8, 0x2

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-eq v8, v9, :cond_2

    .line 1539
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1540
    invoke-virtual {v3, p3}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 1542
    :cond_2
    return-object v3

    .line 1500
    :pswitch_0
    iput-object p1, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1501
    invoke-virtual {v3, p3}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 1504
    :pswitch_1
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1505
    .local v5, packageName:Ljava/lang/String;
    move/from16 v0, p6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1506
    .local v6, resourceName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1508
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1509
    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->isRetained:Z

    .line 1513
    :cond_3
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 1514
    .local v7, resources:Landroid/content/res/Resources;
    if-eqz v7, :cond_4

    .line 1515
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1516
    .local v2, id:I
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, p3}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1522
    .end local v2           #id:I
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_1
    if-nez v1, :cond_1

    .line 1527
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #resourceName:Ljava/lang/String;
    :pswitch_2
    move/from16 v0, p7

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1528
    if-eqz v1, :cond_0

    goto :goto_0

    .line 1518
    .restart local v4       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 1498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1432
    const/4 v1, 0x0

    .line 1433
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1435
    .local v2, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1436
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1437
    const/4 v2, 0x0

    .line 1479
    .end local v2           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_0
    return-object v2

    .line 1447
    .restart local v2       #info:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1448
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1449
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/launcher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1452
    :cond_1
    if-nez v1, :cond_2

    .line 1453
    if-eqz p4, :cond_2

    .line 1454
    invoke-virtual {p0, p4, p5}, Lcom/miui/home/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1458
    :cond_2
    if-nez v1, :cond_3

    .line 1459
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1460
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1462
    :cond_3
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1465
    if-eqz v3, :cond_4

    .line 1466
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1469
    :cond_4
    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1470
    if-eqz p4, :cond_5

    .line 1471
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1475
    :cond_5
    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1476
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1478
    :cond_6
    iput v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    goto :goto_0
.end method

.method public initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mApp:Lcom/miui/home/launcher/LauncherApplication;

    move-object/from16 p1, v0

    .line 473
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v4, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-object/from16 v6, v18

    .line 477
    .local v6, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :goto_0
    if-nez v6, :cond_2

    .line 478
    const-string v18, "Launcher.Model"

    const-string v19, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_1
    return-void

    .line 476
    .end local v6           #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 482
    .restart local v6       #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_2
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 485
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, action:Ljava/lang/String;
    const-string v18, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 487
    .local v11, isAccessControl:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/AllAppsList;->clear()V

    .line 488
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    if-eqz v11, :cond_1a

    .line 492
    :cond_3
    if-eqz v11, :cond_6

    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 494
    .local v14, packageName:Ljava/lang/String;
    :goto_2
    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_4
    const/16 v17, 0x1

    .line 497
    .local v17, replacing:Z
    :goto_3
    if-eqz v11, :cond_8

    const-string v18, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/high16 v20, 0x200

    and-int v18, v18, v20

    const/high16 v20, 0x200

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v12, 0x1

    .line 500
    .local v12, isAccessControlHide:Z
    :goto_4
    const-string v18, "android.intent.extra.DONT_KILL_APP"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 502
    .local v7, dontKillApp:Z
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xe

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    or-int v7, v7, v18

    .line 506
    :cond_5
    if-eqz v11, :cond_a

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 507
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 508
    monitor-exit v19

    goto/16 :goto_1

    .line 640
    .end local v3           #action:Ljava/lang/String;
    .end local v7           #dontKillApp:Z
    .end local v11           #isAccessControl:Z
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 492
    .restart local v3       #action:Ljava/lang/String;
    .restart local v11       #isAccessControl:Z
    :cond_6
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 494
    .restart local v14       #packageName:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 497
    .restart local v17       #replacing:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 503
    .restart local v7       #dontKillApp:Z
    .restart local v12       #isAccessControlHide:Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 511
    :cond_a
    if-eqz v11, :cond_b

    .line 512
    const-string v18, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/high16 v20, 0x200

    and-int v18, v18, v20

    const-string v20, "android.intent.extra.INITIAL_INTENTS"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/high16 v21, 0x200

    and-int v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 516
    monitor-exit v19

    goto/16 :goto_1

    .line 520
    :cond_b
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    .line 522
    :cond_c
    monitor-exit v19

    goto/16 :goto_1

    .line 525
    :cond_d
    invoke-static {v14}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v14, v7}, Lcom/miui/home/launcher/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 538
    :try_start_3
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 560
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 564
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_15

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 567
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 568
    .local v10, info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconCache;->remove(Ljava/lang/String;)V

    goto :goto_7

    .line 528
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :catch_0
    move-exception v8

    .line 529
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v18, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    monitor-exit v19

    goto/16 :goto_1

    .line 540
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_10
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 541
    if-nez v17, :cond_e

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 546
    :cond_11
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 547
    if-nez v17, :cond_12

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 550
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 552
    :cond_13
    if-eqz v11, :cond_e

    .line 553
    if-eqz v12, :cond_14

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 556
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 572
    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_16

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/launcher/LauncherModel$6;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 581
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_17

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/miui/home/launcher/LauncherModel$7;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 590
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/miui/home/launcher/LauncherModel$8;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 639
    .end local v7           #dontKillApp:Z
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/AllAppsList;->clear()V

    .line 640
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_19

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    .line 644
    :cond_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 645
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 596
    :cond_1a
    :try_start_4
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1b

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 598
    :cond_1b
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 600
    .local v15, packages:[Ljava/lang/String;
    if-eqz v15, :cond_1c

    array-length v0, v15

    move/from16 v18, v0

    if-nez v18, :cond_1d

    .line 601
    :cond_1c
    monitor-exit v19

    goto/16 :goto_1

    .line 603
    :cond_1d
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 604
    move-object v5, v15

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_9
    if-ge v9, v13, :cond_1e

    aget-object v14, v5, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 606
    .restart local v14       #packageName:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/miui/home/launcher/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 604
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 610
    :catch_1
    move-exception v8

    .line 611
    .restart local v8       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v18, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    monitor-exit v19

    goto/16 :goto_1

    .line 615
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_18

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/miui/home/launcher/LauncherModel$9;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 624
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    :cond_1f
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 625
    move-object v5, v15

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v13, v5

    .restart local v13       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_a
    if-ge v9, v13, :cond_20

    aget-object v14, v5, v9

    .line 626
    .restart local v14       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 625
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 628
    .end local v14           #packageName:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_18

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/launcher/LauncherModel$10;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_8
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoader isLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 680
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p2, 0x1

    .line 681
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 682
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 683
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    :cond_1
    monitor-exit v1

    .line 686
    return-void

    .line 680
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 689
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 693
    :cond_0
    monitor-exit v1

    .line 694
    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1641
    iget-boolean v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_1

    .line 1643
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1645
    if-eqz v2, :cond_0

    .line 1646
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1647
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1648
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1655
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1656
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to save icon bitmap for info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1663
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1648
    goto :goto_0

    .line 1652
    :catch_0
    move-exception v1

    goto :goto_0
.end method
