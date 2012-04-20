.class Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;
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
    name = "ZeroSizeCallable"
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
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;IJ)V
    .locals 0
    .parameter
    .parameter "totalMediaObjectCount"
    .parameter "showTypeVersion"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {p1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$902(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 382
    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {p1, p3, p4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1002(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 383
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
    .line 378
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v0, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$802(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/AlbumSetView$ModelListener;->onSizeChanged(IIJ)V

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static {v1, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$502(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    move-result v1

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$402(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I
    invoke-static {v1, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1202(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    move-result v1

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1602(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I

    .line 398
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
