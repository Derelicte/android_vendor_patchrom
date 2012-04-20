.class Lcom/android/email/provider/ContentCache$Statistics;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private hitTimes:J

.field private hits:J

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCursorCount:I

.field private mHitCount:I

.field private mInvalidateCount:I

.field private mMissCount:I

.field private final mName:Ljava/lang/String;

.field private mOpCount:I

.field private mProjectionMissCount:I

.field private mStaleCount:I

.field private mTokenCount:I

.field private miss:J

.field private missTimes:J


# direct methods
.method constructor <init>(Lcom/android/email/provider/ContentCache;)V
    .locals 3
    .parameter "cache"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    .line 769
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    .line 771
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    .line 774
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    .line 776
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    .line 778
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mOpCount:I

    .line 780
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    .line 781
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    .line 782
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    .line 783
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    .line 786
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCursorCount:I

    .line 787
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mTokenCount:I

    .line 790
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    .line 791
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    #getter for: Lcom/android/email/provider/ContentCache;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/provider/ContentCache;->access$1300(Lcom/android/email/provider/ContentCache;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    .line 792
    return-void
.end method

.method static synthetic access$1008(Lcom/android/email/provider/ContentCache$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 761
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    return-wide v0
.end method

.method static synthetic access$1114(Lcom/android/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 761
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    return-wide v0
.end method

.method static synthetic access$1208(Lcom/android/email/provider/ContentCache$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 761
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    return v0
.end method

.method static synthetic access$914(Lcom/android/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 761
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    return-wide v0
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 815
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 819
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 823
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string v2, "No cache"

    .line 835
    :goto_0
    return-object v2

    .line 824
    :cond_0
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int v1, v2, v3

    .line 825
    .local v1, totalTries:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v3, "Cursors"

    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCursorCount:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    const-string v2, "Hits"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    const-string v2, "Misses"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v4, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    const-string v2, "Inval"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    const-string v3, "Tokens"

    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mTokenCount:I

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    const-string v2, "Hit%"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    const-string v2, "\nHit time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    const-string v2, "Miss time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCache;->size()I

    move-result v2

    goto :goto_1

    .line 831
    :cond_2
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    iget-object v2, v2, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCache$TokenList;->size()I

    move-result v2

    goto :goto_2
.end method
