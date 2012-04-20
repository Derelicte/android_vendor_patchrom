.class Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;
.super Ljava/lang/Object;
.source "OnlineCategoryAdapter.java"

# interfaces
.implements Lcom/miui/player/util/SongListCache$SongListWaiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SongPreviewWaiter"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/OnlineCategoryActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "a"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mView:Ljava/lang/ref/WeakReference;

    .line 143
    iput-object p3, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    const v0, 0x7f0c0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 4
    .parameter "songList"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/OnlineCategoryActivity;

    .line 151
    .local v0, a:Lcom/miui/player/ui/OnlineCategoryActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 156
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v0, v1, p1}, Lcom/miui/player/ui/OnlineCategoryActivity;->updateItemPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    goto :goto_0
.end method
