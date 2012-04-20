.class public Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;
.super Ljava/lang/Object;
.source "AsyncDrawableProvider.java"

# interfaces
.implements Lcom/miui/player/util/LRUCache$EntryVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawableClean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/util/LRUCache$EntryVisitor",
        "<",
        "Ljava/lang/String;",
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
    .line 295
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.DrawableClean;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.DrawableClean;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;->visit(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public visit(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 299
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.DrawableClean;"
    if-eqz p2, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 302
    :cond_0
    return-void
.end method
