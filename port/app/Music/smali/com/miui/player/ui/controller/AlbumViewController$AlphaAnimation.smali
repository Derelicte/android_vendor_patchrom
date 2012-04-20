.class Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/AlbumViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaAnimation"
.end annotation


# instance fields
.field private final mEnd:I

.field private final mImageView:Landroid/widget/ImageView;

.field private final mStart:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;II)V
    .locals 2
    .parameter "iv"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 175
    iput p2, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mStart:I

    .line 176
    iput p3, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mEnd:I

    .line 177
    iput-object p1, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mImageView:Landroid/widget/ImageView;

    .line 178
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->setDuration(J)V

    .line 179
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 182
    iget v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mEnd:I

    iget v3, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 183
    .local v0, offset:I
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 184
    return-void
.end method
