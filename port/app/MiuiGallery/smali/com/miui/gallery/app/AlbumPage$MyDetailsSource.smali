.class Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iput p1, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 703
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 699
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 708
    .local v0, item:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPage;->access$1800(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/HighlightDrawer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 710
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 712
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->size()I

    move-result v0

    return v0
.end method
