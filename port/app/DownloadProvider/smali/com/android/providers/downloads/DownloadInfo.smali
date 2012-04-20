.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadInfo$1;,
        Lcom/android/providers/downloads/DownloadInfo$Reader;
    }
.end annotation


# instance fields
.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mAppointName:Ljava/lang/String;

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIfRange:Ljava/lang/String;

.field public mInsufficientAlreadyPosted:Z

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field public mSubDirectory:Ljava/lang/String;

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUid:I

.field public mUri:Ljava/lang/String;

.field public mUriDomain:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 292
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    .line 293
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mInsufficientAlreadyPosted:Z

    .line 295
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .locals 4
    .parameter "networkType"

    .prologue
    .line 486
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_1

    .line 487
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v1

    .line 488
    .local v1, flag:I
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 489
    .local v0, allowAllNetworkTypes:Z
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 490
    const/4 v2, 0x6

    .line 493
    .end local v0           #allowAllNetworkTypes:Z
    .end local v1           #flag:I
    :goto_1
    return v2

    .line 488
    .restart local v1       #flag:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    .end local v1           #flag:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v2

    goto :goto_1
.end method

.method private checkSizeAllowedForNetwork(I)I
    .locals 6
    .parameter "networkType"

    .prologue
    const/4 v1, 0x1

    .line 518
    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 521
    :cond_1
    if-eq p1, v1, :cond_0

    .line 524
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v0

    .line 526
    .local v0, recommendedMaxBytesOverMobile:Ljava/lang/Long;
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 528
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    sparse-switch v0, :sswitch_data_0

    .line 694
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 689
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    goto :goto_0

    .line 692
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private isOnExternalStorage(Ljava/lang/String;)Z
    .locals 6
    .parameter "localUriString"

    .prologue
    const/4 v3, 0x0

    .line 674
    if-nez p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v3

    .line 677
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 678
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private isReadyToStart(JLcom/android/providers/downloads/StorageManager;)Z
    .locals 5
    .parameter "now"
    .parameter "storageManager"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/downloads/DownloadHandler;->hasDownloadInQueue(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown domain for uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_2
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCountPerDomain:I

    if-gt v0, v3, :cond_0

    .line 380
    :cond_3
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 384
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v2, v1

    .line 389
    goto :goto_0

    .line 393
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 397
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-gtz v0, :cond_5

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    .line 400
    :sswitch_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 406
    :sswitch_4
    invoke-virtual {p0, p3}, Lcom/android/providers/downloads/DownloadInfo;->hasEnoughSpace(Lcom/android/providers/downloads/StorageManager;)Z

    move-result v2

    goto :goto_0

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_3
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 445
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 447
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 509
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 503
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkCanUseNetwork()I
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v1, v2}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 431
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 432
    const/4 v1, 0x2

    .line 440
    :goto_0
    return v1

    .line 434
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/4 v1, 0x7

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    const/4 v1, 0x5

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "writer"

    .prologue
    .line 575
    const-string v0, "DownloadInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v0, "  mId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 578
    const-string v0, " mLastMod="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 579
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v0, " mUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 582
    const-string v0, "  mUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    const-string v0, " mMimeType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    const-string v0, " mCookies="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const-string v0, " mReferer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string v0, "  mUserAgent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string v0, "  mFileName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v0, "  mStatus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 592
    const-string v0, " mCurrentBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 593
    const-string v0, " mTotalBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 595
    const-string v0, "  mNumFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 596
    const-string v0, " mRetryAfter="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 597
    return-void

    .line 584
    :cond_0
    const-string v0, "no"

    goto :goto_0

    .line 585
    :cond_1
    const-string v0, "no"

    goto :goto_1
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 571
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1
    .parameter "networkError"

    .prologue
    .line 456
    packed-switch p1, :pswitch_data_0

    .line 476
    const-string v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    .line 458
    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    .line 461
    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    .line 464
    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    .line 467
    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    .line 470
    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 473
    :pswitch_5
    const-string v0, "network is blocked for requesting application"

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 567
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 416
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 420
    goto :goto_0
.end method

.method hasEnoughSpace(Lcom/android/providers/downloads/StorageManager;)Z
    .locals 7
    .parameter "storageManager"

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, spaceIsEnough:Z
    :try_start_0
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iget-wide v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    sub-long/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    .line 637
    :catch_0
    move-exception v1

    goto :goto_0

    .line 636
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method nextAction(J)J
    .locals 6
    .parameter "now"

    .prologue
    const-wide/16 v2, 0x0

    .line 607
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    const-wide/16 v2, -0x1

    .line 617
    :cond_0
    :goto_0
    return-wide v2

    .line 610
    :cond_1
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_0

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    .line 614
    .local v0, when:J
    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    .line 617
    sub-long v2, v0, p1

    goto :goto_0
.end method

.method notifyPauseDueToSize(Z)V
    .locals 3
    .parameter

    .prologue
    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 645
    const-class v1, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 648
    const-string v1, "isWifiRequired"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method postNotificationDueToInsufficientSpace()V
    .locals 9

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->isOnExternalStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v8, 0x7f03001e

    .line 661
    .local v8, notifyResId:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, notifyTitle:Ljava/lang/String;
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    .line 663
    .local v0, notifier:Lcom/android/providers/downloads/DownloadNotification;
    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iget v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v6, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mInsufficientAlreadyPosted:Z

    .line 665
    return-void

    .line 658
    .end local v0           #notifier:Lcom/android/providers/downloads/DownloadNotification;
    .end local v3           #notifyTitle:Ljava/lang/String;
    .end local v8           #notifyResId:I
    :cond_0
    const v8, 0x7f03001f

    goto :goto_0
.end method

.method public restartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    .line 358
    .end local p1
    :goto_0
    return-wide p1

    .line 355
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_1

    .line 356
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    .line 358
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public sendDownloadProgressUpdateIntent()V
    .locals 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 343
    const-string v1, "extra_download_current_bytes"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    const-string v1, "extra_download_total_bytes"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendIntentIfRequested()V
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_2

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 327
    :goto_1
    const-string v1, "extra_download_status"

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/app/MiuiDownloadManager;->translateStatus(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 319
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method shouldScanFile()Z
    .locals 2

    .prologue
    .line 624
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->shouldBeScanned(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDownloadThread()V
    .locals 4

    .prologue
    .line 668
    new-instance v0, Lcom/android/providers/downloads/DownloadThread;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V

    .line 670
    .local v0, downloader:Lcom/android/providers/downloads/DownloadThread;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 671
    return-void
.end method

.method startIfReady(JLcom/android/providers/downloads/StorageManager;)V
    .locals 7
    .parameter "now"
    .parameter "storageManager"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc0

    .line 535
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToStart(JLcom/android/providers/downloads/StorageManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc6

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mInsufficientAlreadyPosted:Z

    if-nez v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->postNotificationDueToInsufficientSpace()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_2

    .line 543
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service spawning thread to handle download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_2
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v1, v5, :cond_3

    .line 546
    iput v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 547
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_3
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v1, v5, :cond_4

    .line 553
    sget-object v2, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mUriDomain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_4
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/providers/downloads/DownloadHandler;->enqueueDownload(Lcom/android/providers/downloads/DownloadInfo;)V

    goto :goto_0

    .line 553
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method
