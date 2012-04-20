.class Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapter;
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
.field private final mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

    .line 338
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
    .line 333
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 343
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    move-result-object v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-object v9

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

    .line 345
    .local v0, info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-wide v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J
    invoke-static {v4, v5, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$602(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 347
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v4

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->size:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v4

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->showTypeVersion:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 350
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$802(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 351
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$902(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 352
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-wide v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->showTypeVersion:J

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {v4, v5, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1002(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 353
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {v7}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v7

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/miui/gallery/ui/AlbumSetView$ModelListener;->onSizeChanged(IIJ)V

    .line 357
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$502(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 358
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1202(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 361
    :cond_5
    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 362
    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v5

    array-length v5, v5

    rem-int v3, v4, v5

    .line 363
    .local v3, pos:I
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J

    move-result-object v4

    iget-wide v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->version:J

    aput-wide v5, v4, v3

    .line 364
    iget-object v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v1

    .line 365
    .local v1, itemVersion:J
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J

    move-result-object v4

    aput-wide v1, v4, v3

    .line 367
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    aput-object v5, v4, v3

    .line 368
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    aput-object v5, v4, v3

    .line 369
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1600(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 371
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v4

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    iget v6, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->showType:I

    invoke-interface {v4, v5, v6}, Lcom/miui/gallery/ui/AlbumSetView$ModelListener;->onWindowContentChanged(II)V

    goto/16 :goto_0
.end method
