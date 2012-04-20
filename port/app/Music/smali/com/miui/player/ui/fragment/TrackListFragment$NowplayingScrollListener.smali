.class Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;
.super Ljava/lang/Object;
.source "TrackListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/TrackListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NowplayingScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/TrackListFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/TrackListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;->this$0:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment$NowplayingScrollListener;->this$0:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/player/ui/fragment/TrackListFragment;->setNowplayingFrame(III)V

    .line 554
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 559
    return-void
.end method
