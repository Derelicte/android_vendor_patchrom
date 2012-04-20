.class Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 305
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    move-result-object v9

    if-nez v9, :cond_1

    .line 334
    :cond_0
    return-object v12

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 307
    .local v3, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-wide v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J
    invoke-static {v9, v10, v11}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$502(Lcom/miui/gallery/app/AlbumDataAdapter;J)J

    .line 308
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v9

    iget v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    if-eq v9, v10, :cond_4

    .line 309
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v9, v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$602(Lcom/miui/gallery/app/AlbumDataAdapter;I)I

    .line 310
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/ui/AlbumView$ModelListener;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/ui/AlbumView$ModelListener;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/miui/gallery/ui/AlbumView$ModelListener;->onSizeChanged(I)V

    .line 311
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    if-le v9, v10, :cond_3

    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    #setter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I
    invoke-static {v9, v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$902(Lcom/miui/gallery/app/AlbumDataAdapter;I)I

    .line 312
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    if-le v9, v10, :cond_4

    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    #setter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I
    invoke-static {v9, v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1102(Lcom/miui/gallery/app/AlbumDataAdapter;I)I

    .line 315
    :cond_4
    iget-object v6, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 317
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-eqz v6, :cond_0

    .line 318
    iget v9, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 319
    .local v7, start:I
    iget v9, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 321
    .local v0, end:I
    move v1, v7

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 322
    rem-int/lit16 v2, v1, 0x3e8

    .line 323
    .local v2, index:I
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$700(Lcom/miui/gallery/app/AlbumDataAdapter;)[J

    move-result-object v9

    iget-wide v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    aput-wide v10, v9, v2

    .line 324
    iget v9, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    sub-int v9, v1, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/data/MediaItem;

    .line 325
    .local v8, updateItem:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    .line 326
    .local v4, itemVersion:J
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1200(Lcom/miui/gallery/app/AlbumDataAdapter;)[J

    move-result-object v9

    aget-wide v9, v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_5

    .line 327
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1200(Lcom/miui/gallery/app/AlbumDataAdapter;)[J

    move-result-object v9

    aput-wide v4, v9, v2

    .line 328
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1300(Lcom/miui/gallery/app/AlbumDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v9

    aput-object v8, v9, v2

    .line 329
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/ui/AlbumView$ModelListener;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v9, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 330
    iget-object v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/ui/AlbumView$ModelListener;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/miui/gallery/ui/AlbumView$ModelListener;->onWindowContentChanged(I)V

    .line 321
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
