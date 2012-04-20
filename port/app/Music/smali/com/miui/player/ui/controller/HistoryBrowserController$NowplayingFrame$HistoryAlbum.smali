.class Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;
.super Ljava/lang/Object;
.source "HistoryBrowserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistoryAlbum"
.end annotation


# instance fields
.field public final mAlbum:Landroid/graphics/drawable/Drawable;

.field public final mIndex:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "index"
    .parameter "drawable"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mIndex:I

    .line 117
    iput-object p2, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$HistoryAlbum;->mAlbum:Landroid/graphics/drawable/Drawable;

    .line 118
    return-void
.end method
