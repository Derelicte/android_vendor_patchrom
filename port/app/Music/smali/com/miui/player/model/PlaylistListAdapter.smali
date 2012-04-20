.class public Lcom/miui/player/model/PlaylistListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "PlaylistListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/PlaylistListAdapter$PlaylistConverter;
    }
.end annotation


# static fields
.field public static final PLAYLIST_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

.field private mIdIdx:I

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/PlaylistListAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"

    .prologue
    .line 56
    const-string v7, "name"

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    .line 58
    invoke-direct {p0, p4}, Lcom/miui/player/model/PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 59
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mTitleIdx:I

    .line 64
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mIdIdx:I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 73
    .local v2, id:J
    const v7, 0x7f0c004c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 74
    .local v4, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v7, v2, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->findPresetItem(J)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    move-result-object v5

    .line 75
    .local v5, playlist:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget v7, v5, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mIconResId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_0
    const v7, 0x7f0c006c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, tv:Landroid/widget/TextView;
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v7, 0x7f0c0089

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 86
    .restart local v6       #tv:Landroid/widget/TextView;
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-eqz v7, :cond_1

    .line 87
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    long-to-int v8, v2

    invoke-virtual {v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPresetRecordCount(I)I

    move-result v0

    .line 89
    .local v0, count:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f09

    invoke-virtual {v7, v8, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 90
    .local v1, format:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0           #count:I
    .end local v1           #format:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 79
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 92
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 p1, 0x0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/player/model/PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 107
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 108
    return-void
.end method
