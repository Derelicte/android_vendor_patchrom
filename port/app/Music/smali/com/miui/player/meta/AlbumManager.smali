.class public Lcom/miui/player/meta/AlbumManager;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;,
        Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;,
        Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;,
        Lcom/miui/player/meta/AlbumManager$BitmapDecoder;
    }
.end annotation


# static fields
.field private static BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

.field private static final sArtworkUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    .line 31
    sget-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    sget-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 327
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    return-void
.end method

.method public static getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 491
    .local v2, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 492
    const/4 v1, 0x0

    .line 494
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 495
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 498
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, p2, p3, v3}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 502
    if-eqz v1, :cond_0

    .line 503
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v3

    .line 499
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 502
    if-eqz v1, :cond_1

    .line 503
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 501
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 502
    if-eqz v1, :cond_2

    .line 503
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 506
    :cond_2
    :goto_2
    throw v3

    .line 505
    .restart local v0       #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static getArtistQuickFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v2, 0x0

    .line 195
    :goto_0
    return-object v2

    .line 190
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 191
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 192
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 194
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;

    invoke-direct {v0, p0}, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;
    invoke-static {v0, p1, p2, v1}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, ret:Landroid/net/Uri;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 461
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 465
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 466
    :try_start_0
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 467
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 469
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 470
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 471
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 472
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 473
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 474
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 475
    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 476
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_1

    .line 477
    move-object v3, v4

    .line 486
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v3

    .line 482
    :catch_0
    move-exception v5

    goto :goto_0

    .line 481
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"
    .parameter "fromDB"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 532
    const/4 v6, 0x0

    .line 534
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 535
    .local v5, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 538
    if-eqz p5, :cond_0

    const-string v0, "android_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move v3, p6

    move v4, p7

    .line 539
    invoke-static/range {v0 .. v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 541
    :cond_0
    if-nez v6, :cond_1

    .line 542
    invoke-static {p3, p4, p6, p7, v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 545
    :cond_1
    if-eqz v6, :cond_2

    new-instance v0, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;

    invoke-direct {v0, v6}, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v4, 0x0

    .line 333
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-object v4

    .line 336
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 337
    .local v2, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 338
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 342
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 345
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    invoke-static {v0, p3, p4, p5}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 349
    if-eqz v1, :cond_0

    .line 350
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v5

    goto :goto_0

    .line 346
    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v5

    .line 349
    if-eqz v1, :cond_0

    .line 350
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 352
    :catch_2
    move-exception v5

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v4

    .line 349
    if-eqz v1, :cond_2

    .line 350
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 353
    :cond_2
    :goto_1
    throw v4

    .line 352
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private static getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-static {p0, p1}, Lcom/miui/player/meta/AlbumManager;->isValidAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    const-string v3, "album"

    invoke-static {p0, p1, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;

    invoke-direct {v0, v1}, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;
    invoke-static {v0, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, ret:Ljava/io/InputStream;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    move-object v3, v2

    .line 222
    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 207
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 208
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 209
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 211
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_1
    :goto_1
    move-object v3, v2

    .line 222
    .end local v2           #ret:Ljava/io/InputStream;
    .restart local v3       #ret:Ljava/io/InputStream;
    goto :goto_0

    .line 212
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 216
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v2

    .line 220
    goto :goto_1

    .line 218
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, ret:Ljava/io/InputStream;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 228
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 233
    :try_start_0
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 234
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 236
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 238
    .local v0, fd:Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    move-object v2, v3

    .line 243
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #ret:Ljava/io/InputStream;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 241
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v4, 0x0

    .line 419
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gez v6, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v4

    .line 422
    :cond_1
    const/4 v4, 0x0

    .line 423
    .local v4, ret:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 424
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 425
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 426
    const/4 v2, 0x0

    .line 428
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 429
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 430
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 431
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 432
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 433
    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 434
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v6, :cond_2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v6, :cond_2

    .line 435
    move-object v4, v5

    .line 447
    :cond_2
    if-eqz v2, :cond_0

    .line 448
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v6

    goto :goto_0

    .line 437
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 441
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 447
    if-eqz v2, :cond_0

    .line 448
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 450
    :catch_2
    move-exception v6

    goto :goto_0

    .line 443
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 447
    if-eqz v2, :cond_0

    .line 448
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 450
    :catch_4
    move-exception v6

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v6

    .line 447
    if-eqz v2, :cond_3

    .line 448
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 451
    :cond_3
    :goto_1
    throw v6

    .line 450
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method private static getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "decoder"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/player/meta/AlbumManager$BitmapDecoder;->decode(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-object v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 290
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 291
    .local v4, height:I
    int-to-float v1, v3

    int-to-float v2, v4

    div-float v9, v1, v2

    .line 292
    .local v9, radio:F
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v10, v1, v2

    .line 293
    .local v10, scaleRadio:F
    const/4 v8, 0x0

    .line 294
    .local v8, isCut:Z
    sub-float v1, v9, v10

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 295
    int-to-float v1, v4

    mul-float/2addr v1, v10

    float-to-int v3, v1

    .line 296
    const/4 v8, 0x1

    .line 304
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 305
    .local v11, tmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 306
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 307
    if-eq v11, v0, :cond_2

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 310
    :cond_2
    move-object v0, v11

    .line 312
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 313
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 315
    if-eq v11, v0, :cond_4

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_4
    move-object v0, v11

    :cond_5
    :goto_2
    move-object v1, v0

    .line 324
    goto :goto_0

    .line 297
    .end local v11           #tmp:Landroid/graphics/Bitmap;
    :cond_6
    sub-float v1, v9, v10

    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 298
    int-to-float v1, v3

    div-float/2addr v1, v10

    float-to-int v4, v1

    .line 299
    const/4 v8, 0x1

    goto :goto_1

    .line 320
    .restart local v11       #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 321
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"
    .parameter "fromDB"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 514
    const/4 v6, 0x0

    .line 516
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 517
    .local v5, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 520
    if-eqz p5, :cond_0

    const-string v0, "android_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move v3, p6

    move v4, p7

    .line 521
    invoke-static/range {v0 .. v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 523
    :cond_0
    if-nez v6, :cond_1

    .line 524
    invoke-static {p3, p4, p6, p7, v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 527
    :cond_1
    return-object v6
.end method

.method static getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "opt"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 268
    const/4 v2, 0x1

    .line 269
    .local v2, sampleSize:I
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 270
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v1, v3, 0x1

    .line 271
    .local v1, nextWidth:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v0, v3, 0x1

    .line 272
    .local v0, nextHeight:I
    :goto_0
    if-le v1, p1, :cond_0

    if-le v0, p2, :cond_0

    .line 273
    shl-int/lit8 v2, v2, 0x1

    .line 274
    shr-int/lit8 v1, v1, 0x1

    .line 275
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0           #nextHeight:I
    .end local v1           #nextWidth:I
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 279
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    return-object p0
.end method

.method public static isArtworkQuickExist(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Z
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "opt"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 385
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 386
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 390
    const/4 v5, 0x1

    iput-boolean v5, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 391
    const/4 v5, 0x0

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 392
    const/4 v5, 0x0

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 393
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 394
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v5, :cond_1

    .line 403
    if-eqz v0, :cond_0

    .line 404
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 410
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return v3

    .line 403
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    if-eqz v0, :cond_2

    .line 404
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_1
    move v3, v4

    .line 410
    goto :goto_0

    .line 398
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 403
    if-eqz v0, :cond_2

    .line 404
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 406
    :catch_1
    move-exception v3

    goto :goto_1

    .line 399
    :catch_2
    move-exception v3

    .line 403
    if-eqz v0, :cond_2

    .line 404
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 406
    :catch_3
    move-exception v3

    goto :goto_1

    .line 402
    :catchall_0
    move-exception v3

    .line 403
    if-eqz v0, :cond_3

    .line 404
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 407
    :cond_3
    :goto_2
    throw v3

    .line 406
    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v4

    goto :goto_2
.end method

.method private static isValidAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ar"
    .parameter "al"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 122
    .local v0, isValidAlbum:Z
    :goto_0
    invoke-static {p0}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 124
    .local v1, isValidArtist:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isValidAlbum:Z
    .end local v1           #isValidArtist:Z
    :cond_2
    move v0, v3

    .line 121
    goto :goto_0

    .restart local v0       #isValidAlbum:Z
    :cond_3
    move v1, v3

    .line 122
    goto :goto_1
.end method
