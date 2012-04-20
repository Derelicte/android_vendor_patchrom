.class Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 759
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 755
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    .line 764
    .local v0, item:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 765
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$2200(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/HighlightDrawer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 766
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->size()I

    move-result v0

    return v0
.end method
