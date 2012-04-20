.class public Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;


# instance fields
.field public labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f090017

    const v3, 0x7f090016

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    .local v0, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->titleViewHeight:I

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 127
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 129
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 131
    new-instance v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->titleOffset:I

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f09001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->titleFontSize:I

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f09001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->leftMargin:I

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotWidth:I

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotHeight:I

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverGap:I

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumLabelOffsetY:I

    .line 147
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverWidth:I

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverHeight:I

    .line 151
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    const-class v1, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    .line 117
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
