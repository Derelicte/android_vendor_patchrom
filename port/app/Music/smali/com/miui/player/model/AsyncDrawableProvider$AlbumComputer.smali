.class public Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;
.super Ljava/lang/Object;
.source "AsyncDrawableProvider.java"

# interfaces
.implements Lcom/miui/player/util/LRUCache$ValueComputer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumComputer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/util/LRUCache$ValueComputer",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/AsyncDrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.AlbumComputer;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreCount(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.AlbumComputer;"
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/AsyncDrawableProvider;->isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic ignoreCount(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 286
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.AlbumComputer;"
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;->ignoreCount(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
