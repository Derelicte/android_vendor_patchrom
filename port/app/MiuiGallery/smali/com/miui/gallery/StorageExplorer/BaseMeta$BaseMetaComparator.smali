.class public Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;
.super Ljava/lang/Object;
.source "BaseMeta.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/BaseMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseMetaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/StorageExplorer/BaseMeta;",
        ">;"
    }
.end annotation


# instance fields
.field protected mReverse:Z

.field protected mSortMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->getDiff(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I

    move-result v0

    .line 253
    .local v0, diff:I
    if-nez v0, :cond_2

    .line 254
    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/common/Utils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    check-cast p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .end local p1
    check-cast p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->compare(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I

    move-result v0

    return v0
.end method

.method protected getDiff(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 260
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 261
    iget-wide v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDateModified:J

    iget-wide v2, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDateModified:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 262
    :cond_0
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 263
    iget-wide v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    iget-wide v2, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortMethod()I
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    goto :goto_0
.end method

.method public setSortMethod(I)V
    .locals 1
    .parameter "method"

    .prologue
    .line 269
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    .line 270
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    .line 271
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
