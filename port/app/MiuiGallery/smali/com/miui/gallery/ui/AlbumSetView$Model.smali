.class public interface abstract Lcom/miui/gallery/ui/AlbumSetView$Model;
.super Ljava/lang/Object;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;
.end method

.method public abstract getMediaSet(I)Lcom/miui/gallery/data/MediaSet;
.end method

.method public abstract setActiveWindow(II)V
.end method

.method public abstract setModelListener(Lcom/miui/gallery/ui/AlbumSetView$ModelListener;)V
.end method

.method public abstract size()I
.end method
