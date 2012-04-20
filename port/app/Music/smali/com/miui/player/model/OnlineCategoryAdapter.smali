.class public Lcom/miui/player/model/OnlineCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;
    }
.end annotation


# static fields
.field private static final SONG_PREVIEW_ID:[I


# instance fields
.field private final mActivity:Lcom/miui/player/ui/OnlineCategoryActivity;

.field private mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x78t 0x0t 0xct 0x7ft
        0x79t 0x0t 0xct 0x7ft
        0x7at 0x0t 0xct 0x7ft
        0x7bt 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Lcom/miui/player/ui/OnlineCategoryActivity;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongCategoryItemCount()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    move-object v3, p2

    .line 66
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 67
    iget-object v4, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 70
    :cond_0
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    .line 71
    const v4, 0x7f020075

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-result-object v1

    .line 77
    .local v1, categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    const v4, 0x7f0c0076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, categoryName:Landroid/widget/TextView;
    iget-object v4, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Lcom/miui/player/util/SongListCache;->instance()Lcom/miui/player/util/SongListCache;

    move-result-object v0

    .line 81
    .local v0, cache:Lcom/miui/player/util/SongListCache;
    iget-object v4, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/OnlineCategoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;

    iget-object v6, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v7, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-direct {v5, v6, v3, v7}, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/miui/player/util/SongListCache;->registerWaiter(Landroid/content/Context;Lcom/miui/player/util/SongListCache$SongListWaiter;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 84
    const v4, 0x7f0c0077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    return-object v3

    .line 73
    .end local v0           #cache:Lcom/miui/player/util/SongListCache;
    .end local v1           #categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    .end local v2           #categoryName:Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f020078

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSongPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 13
    .parameter "view"
    .parameter "songList"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 96
    const v9, 0x7f0c0077

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    .local v4, previewWrap:Landroid/view/View;
    if-eqz p2, :cond_0

    iget-object v9, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 99
    :cond_0
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v6, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    .line 105
    .local v6, songItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sget-object v10, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v10, v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 108
    .local v1, end:I
    :goto_0
    const/4 v2, 0x0

    .line 109
    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 110
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    aget v9, v9, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, preview:Landroid/view/View;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 113
    .local v5, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    if-nez v5, :cond_4

    .line 114
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #preview:Landroid/view/View;
    .end local v5           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_3
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v1, v9

    goto :goto_0

    .line 116
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v3       #preview:Landroid/view/View;
    .restart local v5       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_4
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v9, 0x7f0c0081

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 118
    .local v8, songNum:Landroid/widget/TextView;
    const v9, 0x7f0c0082

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 119
    .local v7, songName:Landroid/widget/TextView;
    const v9, 0x7f0c0083

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, artistName:Landroid/widget/TextView;
    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v9, v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v9, v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    .end local v0           #artistName:Landroid/widget/TextView;
    .end local v3           #preview:Landroid/view/View;
    .end local v5           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v7           #songName:Landroid/widget/TextView;
    .end local v8           #songNum:Landroid/widget/TextView;
    :cond_5
    :goto_3
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 127
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    aget v9, v9, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 128
    .restart local v3       #preview:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V
    .locals 0
    .parameter "categoryList"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 38
    return-void
.end method
