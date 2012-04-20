.class public Lcom/miui/gallery/app/Config$HomePageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomePageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;


# instance fields
.field public recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f090006

    const v3, 0x7f090005

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    .line 48
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 55
    new-instance v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotWidth:I

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotHeight:I

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverGap:I

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumLabelOffsetY:I

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverWidth:I

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverHeight:I

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleOffset:I

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    .line 77
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const-class v1, Lcom/miui/gallery/app/Config$HomePageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/miui/gallery/app/Config$HomePageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$HomePageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;

    .line 39
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
