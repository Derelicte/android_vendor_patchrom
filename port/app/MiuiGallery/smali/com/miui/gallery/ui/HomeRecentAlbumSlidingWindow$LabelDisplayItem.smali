.class Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "HomeRecentAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelDisplayItem"
.end annotation


# instance fields
.field private mLastWidth:I

.field private final mSlotIndex:I

.field private mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;I)V
    .locals 0
    .parameter
    .parameter "slotIndex"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 297
    iput p2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    .line 298
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 338
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 5
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 325
    iget v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    if-eq v3, v4, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v3}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v0

    .line 330
    .local v0, s:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    iget v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    neg-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 331
    .local v1, x:I
    iget v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxHeight:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumLabelOffsetY:I

    sub-int v2, v3, v4

    .line 332
    .local v2, y:I
    iget-object v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    iget v4, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    add-int/2addr v4, v1

    invoke-virtual {v3, p1, v4, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 333
    const/4 v3, 0x0

    return v3
.end method

.method public updateContent()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 302
    const-string v2, ""

    .line 304
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$400(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    invoke-interface {v4, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 305
    .local v1, set:Lcom/miui/gallery/data/MediaSet;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTitle:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    const/4 v3, 0x0

    .line 320
    :goto_0
    return v3

    .line 313
    :cond_1
    iput-object v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTitle:Ljava/lang/String;

    .line 314
    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iput v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    .line 316
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v0

    .line 317
    .local v0, s:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    iget v4, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    int-to-float v4, v4

    const/4 v5, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iget v7, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v2, v4, v5, v6, v3}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    goto :goto_0
.end method
