.class public Lcom/miui/gallery/data/LocalVideo$DeleteLocalVideo;
.super Ljava/lang/Object;
.source "LocalVideo.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteLocalVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocalVideo;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/LocalVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/gallery/data/LocalVideo$DeleteLocalVideo;->this$0:Lcom/miui/gallery/data/LocalVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/data/LocalVideo$DeleteLocalVideo;->this$0:Lcom/miui/gallery/data/LocalVideo;

    #getter for: Lcom/miui/gallery/data/LocalVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;
    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->access$100(Lcom/miui/gallery/data/LocalVideo;)Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo$DeleteLocalVideo;->this$0:Lcom/miui/gallery/data/LocalVideo;

    #calls: Lcom/miui/gallery/data/LocalVideo;->getBaseUri()Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/gallery/data/LocalVideo;->access$000(Lcom/miui/gallery/data/LocalVideo;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/data/LocalVideo$DeleteLocalVideo;->this$0:Lcom/miui/gallery/data/LocalVideo;

    iget v5, v5, Lcom/miui/gallery/data/LocalVideo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    return-void
.end method
