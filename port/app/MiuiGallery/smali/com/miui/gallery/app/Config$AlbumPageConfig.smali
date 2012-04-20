.class public Lcom/miui/gallery/app/Config$AlbumPageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;


# instance fields
.field public slotDetailFontSize:I

.field public slotDetailLabelOffset:I

.field public slotUpCoverBlurHeight:I

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    .line 159
    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailLabelOffset:I

    .line 160
    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 179
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    .line 180
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailLabelOffset:I

    .line 181
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    .line 182
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    const-class v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    .line 166
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
