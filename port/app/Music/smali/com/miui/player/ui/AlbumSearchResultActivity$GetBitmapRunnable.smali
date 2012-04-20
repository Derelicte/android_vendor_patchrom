.class Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;
.super Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetBitmapRunnable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetAsyncRunnable;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method
