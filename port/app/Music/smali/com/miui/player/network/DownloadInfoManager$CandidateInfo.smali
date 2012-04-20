.class Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/DownloadInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CandidateInfo"
.end annotation


# instance fields
.field public final mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDownloadId:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDownloadId:J

    .line 16
    iput-object p3, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mCandidates:Ljava/util/List;

    .line 17
    return-void
.end method
