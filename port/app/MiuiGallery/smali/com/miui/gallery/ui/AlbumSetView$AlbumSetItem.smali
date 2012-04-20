.class public Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
.super Ljava/lang/Object;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetItem"
.end annotation


# instance fields
.field public bottomCover:Lcom/miui/gallery/ui/DisplayItem;

.field public covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

.field public labelItem:Lcom/miui/gallery/ui/DisplayItem;

.field public setDataVersion:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
