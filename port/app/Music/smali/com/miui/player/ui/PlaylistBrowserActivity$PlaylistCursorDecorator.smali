.class Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;
.super Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistCursorDecorator"
.end annotation


# instance fields
.field private final mItemInfo:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor$CursorConverter;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)V
    .locals 1
    .parameter "converter"
    .parameter "items"

    .prologue
    .line 533
    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 534
    iput-object p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mItemInfo:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 535
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mergedCursor(Landroid/database/Cursor;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)Landroid/database/Cursor;
    .locals 10
    .parameter "c"
    .parameter "items"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 547
    if-nez p0, :cond_0

    .line 548
    const/4 p0, 0x0

    .line 562
    .end local p0
    :goto_0
    return-object p0

    .line 550
    .restart local p0
    :cond_0
    instance-of v6, p0, Landroid/database/MergeCursor;

    if-eqz v6, :cond_1

    .line 552
    const-string v6, "PlaylistBrowserActivity"

    const-string v7, "Already wrapped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :cond_1
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 556
    .local v4, presetPlaylists:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    new-array v5, v6, [Ljava/lang/Object;

    .line 557
    .local v5, record:[Ljava/lang/Object;
    move-object v0, p1

    .local v0, arr$:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 558
    .local v2, item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    iget v6, v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 559
    iget-object v6, v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mName:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 560
    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_2
    new-instance v6, Landroid/database/MergeCursor;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    aput-object v4, v7, v8

    aput-object p0, v7, v9

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v6

    goto :goto_0
.end method


# virtual methods
.method public decorate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mItemInfo:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mItemInfo:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    invoke-static {p1, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mergedCursor(Landroid/database/Cursor;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)Landroid/database/Cursor;

    move-result-object p1

    .line 543
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->decorate(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
