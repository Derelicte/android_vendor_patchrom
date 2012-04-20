.class Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-wide p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    .line 268
    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 272
    new-instance v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    invoke-direct {v2, v7}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter$1;)V

    .line 273
    .local v2, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    iget-wide v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    .line 274
    .local v5, version:J
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumDataAdapter;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    .line 275
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$600(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v8

    iput v8, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    .line 276
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$700(Lcom/miui/gallery/app/AlbumDataAdapter;)[J

    move-result-object v4

    .line 279
    .local v4, setVersion:[J
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$800(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v0

    .local v0, i:I
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$900(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 280
    rem-int/lit16 v1, v0, 0x3e8

    .line 281
    .local v1, index:I
    aget-wide v8, v4, v1

    cmp-long v8, v8, v5

    if-eqz v8, :cond_1

    .line 282
    iput v0, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    .line 283
    const/16 v7, 0x40

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    .line 289
    .end local v1           #index:I
    .end local v2           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 279
    .restart local v1       #index:I
    .restart local v2       #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v1           #index:I
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumDataAdapter;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    move-object v2, v7

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
