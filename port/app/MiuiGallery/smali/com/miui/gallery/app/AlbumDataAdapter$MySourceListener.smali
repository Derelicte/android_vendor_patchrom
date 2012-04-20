.class Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->notifyDirty()V

    .line 230
    :cond_0
    return-void
.end method
