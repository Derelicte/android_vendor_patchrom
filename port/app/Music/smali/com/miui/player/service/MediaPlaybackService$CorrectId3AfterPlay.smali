.class public Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CorrectId3AfterPlay"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "appointName"
    .parameter "details"

    .prologue
    .line 1395
    invoke-static {p1, p3, p4}, Lcom/miui/player/network/MP3Downloader;->correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    return-void
.end method
