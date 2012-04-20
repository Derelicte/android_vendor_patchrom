.class Lcom/miui/gallery/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/miui/gallery/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/miui/gallery/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 664
    return-void
.end method

.method public pop()Lcom/miui/gallery/ui/TileImageView$Tile;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 651
    .local v0, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mNext:Lcom/miui/gallery/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 652
    :cond_0
    return-object v0
.end method

.method public push(Lcom/miui/gallery/ui/TileImageView$Tile;)Z
    .locals 2
    .parameter "tile"

    .prologue
    .line 656
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 657
    .local v0, wasEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    iput-object v1, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mNext:Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 658
    iput-object p1, p0, Lcom/miui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 659
    return v0

    .line 656
    .end local v0           #wasEmpty:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
