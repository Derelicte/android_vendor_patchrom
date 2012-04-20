.class Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumHelper"
.end annotation


# instance fields
.field private mAlbumBitmap:Landroid/graphics/Bitmap;

.field private mAlbumPath:Ljava/lang/String;

.field private mAlbumUri:Landroid/net/Uri;

.field private mAlbumUtil:Lmiui/util/AlbumUtil;

.field private mIsTrackChange:Z

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Player;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Lmiui/util/AlbumUtil;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/Player;->access$4000(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/AlbumUtil;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUtil:Lmiui/util/AlbumUtil;

    .line 937
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->initViewSize()V

    .line 938
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Player;Lcom/miui/home/launcher/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->reset()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->setTrackChange(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getTrackChange()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->hasAlbum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getDisplayAlbumBitmap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, bm:Landroid/graphics/Bitmap;
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 987
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 988
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUtil:Lmiui/util/AlbumUtil;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lmiui/util/AlbumUtil;->getAlbumBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 994
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 996
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUtil:Lmiui/util/AlbumUtil;

    invoke-virtual {v2, v0}, Lmiui/util/AlbumUtil;->cutToDefauleAspectRadio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 997
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUtil:Lmiui/util/AlbumUtil;

    const v3, 0x40b4cccd

    invoke-virtual {v2, v0, v3}, Lmiui/util/AlbumUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 998
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 1004
    return-void

    .line 990
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, e:Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private getTrackChange()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    return v0
.end method

.method private hasAlbum()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViewSize()V
    .locals 4

    .prologue
    .line 949
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 950
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 951
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player;->access$4100(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 953
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUtil:Lmiui/util/AlbumUtil;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiui/util/AlbumUtil;->setAspectRadio(F)V

    .line 956
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 979
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    .line 980
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 982
    return-void
.end method

.method private setTrackChange(Z)V
    .locals 0
    .parameter "isTrackChange"

    .prologue
    .line 941
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 942
    return-void
.end method

.method private updateAlbumStatus(Landroid/content/Intent;Z)V
    .locals 1
    .parameter "intent"
    .parameter "needFetchAlbum"

    .prologue
    .line 958
    if-nez p2, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const-string v0, "album_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    .line 962
    const-string v0, "album_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$2500(Lcom/miui/home/launcher/gadget/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V

    goto :goto_0
.end method
