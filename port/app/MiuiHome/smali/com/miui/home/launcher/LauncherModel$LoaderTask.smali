.class Lcom/miui/home/launcher/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mInstalledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackageList:Ljava/lang/String;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private mStopped:Z

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    .line 713
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 714
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 715
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 716
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    .line 717
    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 21

    .prologue
    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1214
    .local v16, t:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    .line 1215
    .local v6, oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    if-nez v6, :cond_0

    .line 1217
    const-string v3, "Launcher.Model"

    const-string v4, "LoaderThread running with no launcher"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :goto_0
    return-void

    .line 1223
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DeferredHandler;->cancel()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1235
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1236
    .local v5, itemClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ItemInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1237
    .local v9, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 1238
    move v7, v15

    .line 1239
    .local v7, start:I
    add-int/lit8 v3, v15, 0x6

    if-gt v3, v9, :cond_1

    const/4 v8, 0x6

    .line 1240
    .local v8, chunkSize:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v19

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1237
    add-int/lit8 v15, v15, 0x6

    goto :goto_1

    .line 1239
    .end local v8           #chunkSize:I
    :cond_1
    sub-int v8, v9, v15

    goto :goto_2

    .line 1250
    .end local v7           #start:I
    :cond_2
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {v12, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1251
    .local v12, foldersClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/miui/home/launcher/FolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1269
    invoke-interface {v6}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v11

    .line 1270
    .local v11, currentScreen:I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1271
    .local v10, appWidgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/LauncherAppWidgetInfo;>;"
    const/4 v3, -0x1

    if-eq v11, v3, :cond_4

    .line 1272
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1274
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_4

    .line 1275
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1276
    .local v18, widget:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    int-to-long v0, v11

    move-wide/from16 v19, v0

    cmp-long v3, v3, v19

    if-nez v3, :cond_3

    .line 1277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1274
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1289
    .end local v18           #widget:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v9, :cond_6

    .line 1290
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1291
    .restart local v18       #widget:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    int-to-long v0, v11

    move-wide/from16 v19, v0

    cmp-long v3, v3, v19

    if-eqz v3, :cond_5

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1289
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1304
    .end local v18           #widget:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    :cond_6
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1305
    .local v14, gadgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1307
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v9, :cond_8

    .line 1308
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 1309
    .local v13, gadget:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget-wide v3, v13, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    int-to-long v0, v11

    move-wide/from16 v19, v0

    cmp-long v3, v3, v19

    if-nez v3, :cond_7

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1307
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1321
    .end local v13           #gadget:Lcom/miui/home/launcher/gadget/GadgetInfo;
    :cond_8
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v9, :cond_a

    .line 1322
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 1323
    .restart local v13       #gadget:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget-wide v3, v13, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    int-to-long v0, v11

    move-wide/from16 v19, v0

    cmp-long v3, v3, v19

    if-eqz v3, :cond_9

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$12;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1321
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1336
    .end local v13           #gadget:Lcom/miui/home/launcher/gadget/GadgetInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$13;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$14;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v4, v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$14;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;J)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private ensureItemUnique(J)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, args:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1028
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    :try_start_1
    const-string v3, "ensureItemUniqueArgPackagelist"

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1031
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v3

    const-string v4, "ensureItemUnique"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1033
    .local v2, r:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v3, "resultBoolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1034
    const/4 v3, 0x1

    .line 1038
    .end local v2           #r:Landroid/os/Bundle;
    :goto_0
    return v3

    .line 1036
    :catch_0
    move-exception v3

    .line 1038
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1036
    .end local v0           #args:Landroid/os/Bundle;
    .restart local v1       #args:Landroid/os/Bundle;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private loadAndBindMissingIcons()V
    .locals 12

    .prologue
    .line 758
    iget-boolean v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v8, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-object v1, v8

    .line 763
    .local v1, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :goto_1
    if-nez v1, :cond_3

    .line 764
    const-string v8, "Launcher.Model"

    const-string v9, "No callback to call back"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    .end local v1           #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 769
    .restart local v1       #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_3
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 770
    const-string v8, "Launcher.Model"

    const-string v9, "No main activity found, the system is so clean"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_4
    const/4 v3, 0x0

    .line 775
    .local v3, count:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 776
    .local v7, updatedPackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 777
    .local v2, cn:Landroid/content/ComponentName;
    iget-boolean v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v8, :cond_0

    .line 781
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 785
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v8, v8, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 790
    :try_start_0
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 796
    :try_start_1
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v10, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 791
    :catch_0
    move-exception v4

    .line 792
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "Launcher.Model"

    const-string v9, "database didnot ready,ignore this package."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 797
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 804
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_6
    iget-boolean v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 805
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 806
    .local v6, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;

    invoke-direct {v9, p0, v6, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 816
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v9, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v9}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    #calls: Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 819
    .end local v6           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    :cond_7
    iget-boolean v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 821
    .local v0, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 822
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;

    invoke-direct {v9, p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 831
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v9, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;
    invoke-static {v9}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    #calls: Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/miui/home/launcher/LauncherModel;->access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result v0

    .line 844
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->access$902(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 845
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 854
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->access$902(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 862
    :goto_0
    return-void

    .line 845
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 861
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 980
    .local v0, appWidgetId:I
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 982
    .local v2, id:J
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 985
    .local v4, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 987
    :cond_0
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 990
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 993
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 994
    .local v1, appWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    iput-wide v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    .line 995
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/database/Cursor;)V

    .line 996
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 998
    iget-wide v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 999
    const-string v5, "Launcher.Model"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v5, v5, Lcom/miui/home/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 958
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 959
    .local v1, id:J
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    #calls: Lcom/miui/home/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    invoke-static {v4, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 960
    .local v0, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->load(Landroid/database/Cursor;)V

    .line 961
    iget-object v4, v0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 962
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 963
    .local v3, titleID:I
    if-eqz v3, :cond_0

    .line 964
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 967
    .end local v3           #titleID:I
    :cond_0
    iget-wide v4, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 969
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v5, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    return-void
.end method

.method private loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1010
    .local v0, gadgetId:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1011
    .local v2, id:J
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1012
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1013
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 1018
    .local v1, gadgetInfo:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iput-wide v2, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 1019
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->load(Landroid/database/Cursor;)V

    .line 1020
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherModel;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadShortcut(Landroid/database/Cursor;I)V
    .locals 19
    .parameter "c"
    .parameter "itemType"

    .prologue
    .line 1044
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1049
    .local v5, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1051
    .local v16, id:J
    if-nez p2, :cond_2

    .line 1052
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 1053
    .local v13, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static/range {v16 .. v17}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1102
    .end local v5           #intent:Landroid/content/Intent;
    .end local v13           #cn:Landroid/content/ComponentName;
    .end local v16           #id:J
    :cond_0
    :goto_0
    return-void

    .line 1045
    :catch_0
    move-exception v14

    .line 1046
    .local v14, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1060
    .end local v14           #e:Ljava/net/URISyntaxException;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v13       #cn:Landroid/content/ComponentName;
    .restart local v16       #id:J
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->ensureItemUnique(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    .end local v13           #cn:Landroid/content/ComponentName;
    :cond_2
    const/16 v18, 0x0

    .line 1066
    .local v18, info:Lcom/miui/home/launcher/ShortcutInfo;
    if-nez p2, :cond_5

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v18

    .line 1069
    if-eqz v18, :cond_3

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_3
    :goto_1
    if-eqz v18, :cond_7

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/miui/home/launcher/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1079
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 1082
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v3, v6

    if-nez v3, :cond_6

    .line 1084
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    move-object/from16 v0, v18

    #calls: Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    invoke-static {v3, v0}, Lcom/miui/home/launcher/LauncherModel;->access$1300(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V

    goto/16 :goto_0

    .line 1073
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x2

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v12}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v18

    goto :goto_1

    .line 1087
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    #calls: Lcom/miui/home/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    invoke-static {v3, v6, v7}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v15

    .line 1088
    .local v15, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_2

    .line 1099
    .end local v15           #folderInfo:Lcom/miui/home/launcher/FolderInfo;
    :cond_7
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", removing it"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static/range {v16 .. v17}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadWorkspace()V
    .locals 26

    .prologue
    .line 1105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1107
    .local v24, t:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1117
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1118
    .local v20, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 1120
    .local v17, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 1121
    .local v23, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1122
    .local v22, packageName:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1123
    .local v10, className:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    .end local v10           #className:Ljava/lang/String;
    .end local v22           #packageName:Ljava/lang/String;
    .end local v23           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1132
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .local v21, packageList:Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 1135
    .local v12, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1137
    .end local v12           #cn:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x29

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1138
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    .line 1143
    .end local v21           #packageList:Ljava/lang/StringBuilder;
    :goto_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v19, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1148
    .local v9, c:Landroid/database/Cursor;
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1150
    const/16 v3, 0x8

    :try_start_1
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1152
    .local v18, itemType:I
    packed-switch v18, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 1155
    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadShortcut(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1170
    .end local v18           #itemType:I
    :catch_0
    move-exception v13

    .line 1171
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Launcher.Model"

    const-string v4, "Desktop items loading interrupted:"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1175
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1140
    .end local v9           #c:Landroid/database/Cursor;
    .end local v19           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstalledPackageList:Ljava/lang/String;

    goto :goto_2

    .line 1159
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v18       #itemType:I
    .restart local v19       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1163
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1167
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1175
    .end local v18           #itemType:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1178
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11

    .line 1182
    .local v11, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1184
    .local v15, id:J
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :try_start_4
    invoke-static/range {v15 .. v16}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1189
    :catch_1
    move-exception v13

    .line 1190
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1191
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v13

    .line 1192
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove id(database readonly) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1196
    .end local v11           #client:Landroid/content/ContentProviderClient;
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .end local v15           #id:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v4, v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;J)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1204
    return-void

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 726
    .local v0, workspaceWaitTime:J
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 738
    :goto_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 740
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v2

    goto :goto_0

    .line 746
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit p0

    .line 751
    return-void

    .line 750
    .end local v0           #workspaceWaitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1356
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 872
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 873
    :try_start_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 875
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    const-string v0, "Launcher.Model"

    const-string v1, "step 1: loading workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 879
    :try_start_1
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 880
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 881
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_1

    .line 918
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 873
    goto :goto_0

    .line 875
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 880
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 888
    :try_start_4
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v0, :cond_2

    .line 889
    const-string v0, "Launcher.Model"

    const-string v2, "Setting thread priority to BACKGROUND"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 892
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 894
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->waitForIdle()V

    .line 896
    const-string v0, "Launcher.Model"

    const-string v1, "step 2: loading missing icons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 898
    :try_start_5
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons()V

    .line 899
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 902
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 903
    const/4 v0, 0x0

    :try_start_6
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 904
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 909
    iput-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 911
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 913
    :try_start_7
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherModel;->access$1102(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 916
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 892
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 899
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 904
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 921
    monitor-enter p0

    .line 922
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 923
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 924
    monitor-exit p0

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 935
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 936
    :try_start_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 937
    monitor-exit v2

    move-object v0, v1

    .line 953
    :goto_0
    return-object v0

    .line 940
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 941
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    #getter for: Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    .line 945
    .local v0, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 946
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 948
    :cond_2
    if-nez v0, :cond_3

    .line 949
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 953
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 954
    .end local v0           #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
