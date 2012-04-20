.class Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;
.super Ljava/lang/Object;
.source "HistoryBrowserController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NowplayingFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;,
        Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;
    }
.end annotation


# static fields
.field static final LATEST_ARR:[I


# instance fields
.field final CURRENT_DEFAULT_ALBUM_HEIGHT:I

.field final CURRENT_DEFAULT_ALBUM_WIDTH:I

.field final HISTORY_DEFAULT_ALBUM_HEIGHT:I

.field final HISTORY_DEFAULT_ALBUM_WIDTH:I

.field final mActivity:Landroid/app/Activity;

.field private mCurrentFrame:Landroid/widget/ImageView;

.field private final mDefaultAlbum:Landroid/graphics/drawable/Drawable;

.field private final mFirstFrame:Landroid/widget/ImageView;

.field private final mFrame:Landroid/view/View;

.field final mLatestAlbums:[Landroid/widget/ImageView;

.field private final mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mSecondFrame:Landroid/widget/ImageView;

.field private final mSecondaryText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->LATEST_ARR:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .parameter "a"

    .prologue
    const v11, 0x7f020023

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->LATEST_ARR:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    .line 122
    iput-object p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    .line 123
    const v0, 0x7f0c0051

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    .line 124
    const v0, 0x7f0c0055

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPrimaryText:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondaryText:Landroid/widget/TextView;

    .line 126
    new-instance v0, Lcom/miui/player/ui/controller/PlayerCommonController;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f020084

    const v4, 0x7f020080

    const v5, 0x7f02008d

    const v6, 0x7f020062

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/controller/PlayerCommonController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIII)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondFrame:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const v2, 0x7f0c0058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v8

    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const v2, 0x7f0c0059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v9

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    aget-object v0, v0, v9

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    const v2, 0x7f0c005a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v10

    .line 145
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    aget-object v0, v0, v10

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 148
    .local v7, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->CURRENT_DEFAULT_ALBUM_HEIGHT:I

    .line 149
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->CURRENT_DEFAULT_ALBUM_WIDTH:I

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->HISTORY_DEFAULT_ALBUM_HEIGHT:I

    .line 153
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->HISTORY_DEFAULT_ALBUM_WIDTH:I

    .line 155
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    new-instance v1, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$1;-><init>(Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 343
    .local v2, i:I
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mLatestAlbums:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 344
    .local v1, historyView:Landroid/view/View;
    if-ne p1, v1, :cond_1

    .line 350
    .end local v1           #historyView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->LATEST_ARR:[I

    aget v6, v6, v2

    invoke-static {v5, v6}, Lcom/miui/player/service/ServiceHelper;->playHistory(Landroid/content/Context;I)V

    .line 351
    return-void

    .line 347
    .restart local v1       #historyView:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public refreshAll()V
    .locals 10

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->refreshCurrent()V

    .line 253
    iget-object v8, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 254
    .local v7, sp:Landroid/content/SharedPreferences;
    sget-object v8, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->LATEST_ARR:[I

    array-length v8, v8

    new-array v5, v8, [J

    .line 255
    .local v5, latestIds:[J
    const/4 v1, 0x0

    .line 256
    .local v1, i:I
    sget-object v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->LATEST_ARR:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget v4, v0, v3

    .line 257
    .local v4, latest:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-static {v7, v4}, Lcom/miui/player/service/HistoryManager;->loadAudioId(Landroid/content/SharedPreferences;I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 256
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 260
    .end local v4           #latest:I
    :cond_0
    new-instance v8, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;

    invoke-direct {v8, p0, v5}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;-><init>(Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;[J)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    return-void
.end method

.method public refreshCurrent()V
    .locals 15

    .prologue
    .line 182
    sget-object v13, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 183
    .local v13, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v13, :cond_0

    .line 226
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {v13}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v14

    .line 189
    .local v14, tr:Ljava/lang/String;
    invoke-interface {v13}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, al:Ljava/lang/String;
    invoke-interface {v13}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, ar:Ljava/lang/String;
    invoke-interface {v13}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 193
    .local v1, albumId:J
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 195
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondaryText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v4, v3}, Lcom/miui/player/ui/UIHelper;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v12, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;

    .line 198
    .local v12, oldFrame:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    if-ne v12, v0, :cond_2

    iget-object v9, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mSecondFrame:Landroid/widget/ImageView;

    .line 200
    .local v9, current:Landroid/widget/ImageView;
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    iget v6, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->CURRENT_DEFAULT_ALBUM_WIDTH:I

    iget v7, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->CURRENT_DEFAULT_ALBUM_HEIGHT:I

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 202
    .local v8, bm:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 203
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    iput-object v9, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;

    .line 214
    :goto_2
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;

    if-eq v0, v12, :cond_1

    .line 215
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f040001

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 216
    .local v11, fadeOut:Landroid/view/animation/Animation;
    new-instance v0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;

    iget-object v5, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v12, v5}, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 217
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x7f04

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 220
    .local v10, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1           #albumId:J
    .end local v3           #al:Ljava/lang/String;
    .end local v4           #ar:Ljava/lang/String;
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v9           #current:Landroid/widget/ImageView;
    .end local v10           #fadeIn:Landroid/view/animation/Animation;
    .end local v11           #fadeOut:Landroid/view/animation/Animation;
    .end local v12           #oldFrame:Landroid/widget/ImageView;
    .end local v14           #tr:Ljava/lang/String;
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_0

    .line 198
    .restart local v1       #albumId:J
    .restart local v3       #al:Ljava/lang/String;
    .restart local v4       #ar:Ljava/lang/String;
    .restart local v12       #oldFrame:Landroid/widget/ImageView;
    .restart local v14       #tr:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFirstFrame:Landroid/widget/ImageView;

    goto :goto_1

    .line 206
    .restart local v8       #bm:Landroid/graphics/Bitmap;
    .restart local v9       #current:Landroid/widget/ImageView;
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    if-ne v0, v5, :cond_4

    .line 208
    iput-object v12, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;

    goto :goto_2

    .line 222
    .end local v1           #albumId:J
    .end local v3           #al:Ljava/lang/String;
    .end local v4           #ar:Ljava/lang/String;
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v9           #current:Landroid/widget/ImageView;
    .end local v12           #oldFrame:Landroid/widget/ImageView;
    .end local v14           #tr:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 210
    .restart local v1       #albumId:J
    .restart local v3       #al:Ljava/lang/String;
    .restart local v4       #ar:Ljava/lang/String;
    .restart local v8       #bm:Landroid/graphics/Bitmap;
    .restart local v9       #current:Landroid/widget/ImageView;
    .restart local v12       #oldFrame:Landroid/widget/ImageView;
    .restart local v14       #tr:Ljava/lang/String;
    :cond_4
    iput-object v9, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mCurrentFrame:Landroid/widget/ImageView;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public refreshPlayState()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 179
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;->mFrame:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
