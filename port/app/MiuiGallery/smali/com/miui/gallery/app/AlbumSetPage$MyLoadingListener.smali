.class Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #getter for: Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$1800(Lcom/miui/gallery/app/AlbumSetPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$1900(Lcom/miui/gallery/app/AlbumSetPage;I)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->access$2000(Lcom/miui/gallery/app/AlbumSetPage;I)V

    .line 730
    return-void
.end method
