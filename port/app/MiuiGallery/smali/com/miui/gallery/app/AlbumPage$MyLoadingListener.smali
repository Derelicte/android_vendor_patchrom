.class Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPage;

    #getter for: Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPage;->access$1400(Lcom/miui/gallery/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumPage;->access$1500(Lcom/miui/gallery/app/AlbumPage;I)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumPage;->access$1600(Lcom/miui/gallery/app/AlbumPage;I)V

    .line 672
    return-void
.end method
