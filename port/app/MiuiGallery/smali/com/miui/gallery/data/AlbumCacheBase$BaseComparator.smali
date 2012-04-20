.class Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
.super Ljava/lang/Object;
.source "AlbumCacheBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/AlbumCacheBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/data/DBAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private final mReverse:Z

.field private final mSortMethod:I

.field final synthetic this$0:Lcom/miui/gallery/data/AlbumCacheBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/AlbumCacheBase;I)V
    .locals 1
    .parameter
    .parameter "sortMethod"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->this$0:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-gez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mReverse:Z

    .line 171
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mSortMethod:I

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I
    .locals 6
    .parameter "leftAlbum"
    .parameter "rightAlbum"

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, result:I
    iget v2, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mSortMethod:I

    packed-switch v2, :pswitch_data_0

    .line 195
    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v3

    sub-int v1, v2, v3

    .line 199
    :goto_0
    iget-boolean v2, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mReverse:Z

    if-eqz v2, :cond_0

    neg-int v1, v1

    .end local v1           #result:I
    :cond_0
    return v1

    .line 179
    .restart local v1       #result:I
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 180
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getSortName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 183
    goto :goto_0

    .line 186
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->sign(I)I

    move-result v1

    .line 187
    goto :goto_0

    .line 190
    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v1

    .line 192
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    check-cast p1, Lcom/miui/gallery/data/DBAlbum;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/DBAlbum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->compare(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I

    move-result v0

    return v0
.end method
