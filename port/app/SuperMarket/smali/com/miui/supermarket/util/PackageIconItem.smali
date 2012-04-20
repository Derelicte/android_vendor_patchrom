.class public Lcom/miui/supermarket/util/PackageIconItem;
.super Ljava/lang/Object;
.source "PackageIconItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
    }
.end annotation


# instance fields
.field private mCachedBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:Z

.field private mRoundImage:Z

.field private final mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

.field private mUrl:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;Ljava/lang/Object;)V
    .locals 1
    .parameter "storageType"
    .parameter "v"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/supermarket/util/PackageIconItem;->mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    .line 16
    iput-object p2, p0, Lcom/miui/supermarket/util/PackageIconItem;->mValue:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mUrl:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final downloadFailed()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mFailed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 22
    instance-of v2, p1, Lcom/miui/supermarket/util/PackageIconItem;

    if-nez v2, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 25
    check-cast v0, Lcom/miui/supermarket/util/PackageIconItem;

    .line 26
    .local v0, that:Lcom/miui/supermarket/util/PackageIconItem;
    iget-object v2, p0, Lcom/miui/supermarket/util/PackageIconItem;->mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    iget-object v3, v0, Lcom/miui/supermarket/util/PackageIconItem;->mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/supermarket/util/PackageIconItem;->mValue:Ljava/lang/Object;

    iget-object v3, v0, Lcom/miui/supermarket/util/PackageIconItem;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStorageType()Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasLocalCache()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mStorageType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    sget-object v1, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->RESOURCE_ID:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRoundImage()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mRoundImage:Z

    return v0
.end method

.method public final setCachedBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    .line 61
    return-void
.end method

.method public final setDownloadFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/miui/supermarket/util/PackageIconItem;->mFailed:Z

    .line 74
    return-void
.end method

.method public setRoundImage(Z)V
    .locals 0
    .parameter "roundImage"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/miui/supermarket/util/PackageIconItem;->mRoundImage:Z

    .line 49
    return-void
.end method

.method public final setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/supermarket/util/PackageIconItem;->mUrl:Ljava/lang/String;

    .line 40
    return-void
.end method
