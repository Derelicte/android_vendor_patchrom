.class public abstract Lcom/miui/gallery/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected final mPath:Lcom/miui/gallery/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1, p0}, Lcom/miui/gallery/data/Path;->setObject(Lcom/miui/gallery/data/MediaObject;)V

    .line 72
    iput-object p1, p0, Lcom/miui/gallery/data/MediaObject;->mPath:Lcom/miui/gallery/data/Path;

    .line 73
    iput-wide p2, p0, Lcom/miui/gallery/data/MediaObject;->mDataVersion:J

    .line 74
    return-void
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 135
    const-class v1, Lcom/miui/gallery/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/miui/gallery/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/miui/gallery/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaObject;->delete()V

    .line 91
    return-void
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/miui/gallery/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/miui/gallery/data/MediaDetails;

    invoke-direct {v0}, Lcom/miui/gallery/data/MediaDetails;-><init>()V

    .line 115
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/data/MediaObject;->mPath:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
