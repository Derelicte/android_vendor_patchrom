.class public Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
.super Lmiui/app/resourcebrowser/resource/ZipResourceCache;
.source "ThemeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeInfoCacheNode"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mClockPhotoSize:Ljava/lang/String;

.field private mCoverThumbnailPath:Ljava/lang/String;

.field private previewIndex:[I

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;

.field private thumbnailIndex:[I

.field private tmpPreview:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tmpThumbnail:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->this$0:Lcom/android/thememanager/ThemeInfo;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/resource/ZipResourceCache;-><init>()V

    .line 717
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 718
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 726
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 727
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    return-void
.end method

.method private buildIndex()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 775
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 776
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 782
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 783
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    :cond_2
    iput-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 786
    iput-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    .line 787
    return-void
.end method

.method private getCacheImage(JZZ)Ljava/util/ArrayList;
    .locals 11
    .parameter "flag"
    .parameter "forThumbnail"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v6, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    .line 822
    .local v3, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 823
    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 827
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v0, v7, v2

    .line 828
    .local v0, componentFlag:J
    and-long v7, p1, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 829
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v4

    .line 830
    .local v4, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, j:I
    :goto_2
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 831
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 820
    .end local v0           #componentFlag:J
    .end local v2           #i:I
    .end local v3           #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #j:I
    :cond_1
    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    goto :goto_0

    .line 826
    .restart local v0       #componentFlag:J
    .restart local v2       #i:I
    .restart local v3       #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 836
    .end local v0           #componentFlag:J
    :cond_3
    return-object v6
.end method

.method private getCacheIndex(JZ)Landroid/util/Pair;
    .locals 5
    .parameter "flag"
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v1

    .line 795
    .local v1, startIndex:I
    add-int/lit8 v0, v1, 0x1

    .line 797
    .local v0, endIndex:I
    if-ltz v1, :cond_2

    .line 798
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v1, v2, v1

    .line 799
    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v0, v2, v0

    .line 804
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v1, v2, v1

    goto :goto_0

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v0, v2, v0

    goto :goto_1

    .line 801
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getIndexOfFlagInStoredOrder(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 808
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 809
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 813
    .end local v0           #i:I
    :goto_1
    return v0

    .line 808
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->readCache(Ljava/io/ObjectInputStream;)V

    .line 755
    return-void
.end method

.method private reduceThumbnail(Ljava/util/ArrayList;J)V
    .locals 3
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 763
    const-wide/16 v1, 0x20

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 765
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 764
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 767
    .end local v0           #i:I
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 768
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 772
    :cond_1
    return-void
.end method

.method private setCacheImage(JLjava/util/ArrayList;Z)V
    .locals 2
    .parameter "flag"
    .parameter
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v0

    .line 841
    .local v0, storedOrder:I
    if-ltz v0, :cond_0

    .line 842
    if-eqz p4, :cond_1

    .line 843
    invoke-direct {p0, p3, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->reduceThumbnail(Ljava/util/ArrayList;J)V

    .line 844
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->writeCache(Ljava/io/ObjectOutputStream;)V

    .line 751
    return-void
.end method


# virtual methods
.method public containClockPhotoFrameSize(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "size"
    .parameter "forClock"

    .prologue
    .line 899
    if-eqz p2, :cond_1

    const-string v0, "c"

    .line 900
    .local v0, idPrefix:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 901
    const-string v1, ""

    iput-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 899
    .end local v0           #idPrefix:Ljava/lang/String;
    :cond_1
    const-string v0, "p"

    goto :goto_0

    .line 903
    .restart local v0       #idPrefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public finishCached()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->buildIndex()V

    .line 791
    return-void
.end method

.method public getCacheImageNumber(JZ)I
    .locals 9
    .parameter "flag"
    .parameter "forThumbnail"

    .prologue
    .line 872
    const/4 v4, 0x0

    .line 873
    .local v4, sum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 874
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v0, v5, v2

    .line 875
    .local v0, componentFlag:J
    and-long v5, p1, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 876
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v3

    .line 877
    .local v3, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v6, v5

    add-int/2addr v4, v5

    .line 873
    .end local v3           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    .end local v0           #componentFlag:J
    :cond_1
    return v4
.end method

.method public getCachePreview(J)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 856
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCacheThumbnail(JZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;
    .locals 6
    .parameter "forClock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 909
    .local v4, size:Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->containClockPhotoFrameSize(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 910
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    .end local v4           #size:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method protected readImageInformation(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/resource/ZipResourceCache;->readImageInformation(Ljava/io/ObjectInputStream;)V

    .line 743
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 744
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 745
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setCachePreview(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 869
    return-void
.end method

.method public setCacheThumbnail(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 861
    return-void
.end method

.method public setClockPhotoFrameSize(Ljava/util/List;Z)V
    .locals 5
    .parameter
    .parameter "forClock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    const-string v2, "c"

    .line 886
    .local v2, idPrefix:Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 885
    .end local v1           #i:I
    .end local v2           #idPrefix:Ljava/lang/String;
    :cond_1
    const-string v2, "p"

    goto :goto_0

    .line 892
    .restart local v1       #i:I
    .restart local v2       #idPrefix:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 893
    const-string v3, ""

    iput-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 895
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 896
    return-void
.end method

.method public setCoverThumbnail(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 865
    return-void
.end method

.method protected writeImageInformation(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/resource/ZipResourceCache;->writeImageInformation(Ljava/io/ObjectOutputStream;)V

    .line 733
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 737
    return-void
.end method
