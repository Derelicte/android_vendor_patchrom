.class Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-wide p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->mVersion:J

    .line 307
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 7
    .parameter "version"

    .prologue
    .line 310
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J

    move-result-object v4

    .line 311
    .local v4, setVersion:[J
    array-length v2, v4

    .line 312
    .local v2, length:I
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v0

    .local v0, i:I
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 313
    rem-int v1, v0, v2

    .line 314
    .local v1, index:I
    aget-wide v5, v4, v1

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    .line 318
    .end local v0           #i:I
    .end local v1           #index:I
    :goto_1
    return v0

    .line 312
    .restart local v0       #i:I
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v1           #index:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-wide v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 324
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    .line 329
    :goto_0
    return-object v1

    .line 325
    :cond_0
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

    invoke-direct {v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter$1;)V

    .line 326
    .local v1, info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->version:J

    .line 327
    iput v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    .line 328
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->size:I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
