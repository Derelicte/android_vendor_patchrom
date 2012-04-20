.class public Lcom/miui/gallery/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcom/miui/gallery/data/DownloadCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/DownloadCache;JLjava/io/File;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "cacheFile"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$Entry;->this$0:Lcom/miui/gallery/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p2, p0, Lcom/miui/gallery/data/DownloadCache$Entry;->mId:J

    .line 284
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 285
    return-void
.end method
