.class public Lcom/miui/gallery/data/LocalImage;
.super Lcom/miui/gallery/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalImage$DeleteLocalImage;,
        Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;,
        Lcom/miui/gallery/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final ITEM_PATH:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

.field private static MICROTHUMBNAIL_TARGET_SIZE:I

.field static final PROJECTION:[Ljava/lang/String;

.field private static sThumbnailTargetSize:I


# instance fields
.field public height:I

.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field public final mIsInternalMedia:Z

.field public rotation:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    .line 73
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 229
    sput v3, Lcom/miui/gallery/data/LocalImage;->sThumbnailTargetSize:I

    .line 231
    sput v3, Lcom/miui/gallery/data/LocalImage;->MICROTHUMBNAIL_TARGET_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"
    .parameter "isInternalMedia"

    .prologue
    .line 100
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 101
    iput-boolean p4, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    .line 102
    iput-object p2, p0, Lcom/miui/gallery/data/LocalImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 103
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZI)V
    .locals 5
    .parameter "path"
    .parameter "application"
    .parameter "isInternalMedia"
    .parameter "id"

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 108
    iput-object p2, p0, Lcom/miui/gallery/data/LocalImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 109
    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, resolver:Landroid/content/ContentResolver;
    iput-boolean p3, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    .line 112
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p4}, Lcom/miui/gallery/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 114
    const-string v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalImage - cannot get cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-direct {p0, v0}, Lcom/miui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find data for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/LocalImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/LocalImage;)Lcom/miui/gallery/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/data/LocalImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    return-object v0
.end method

.method private static calcThumbnailTargetSize()I
    .locals 3

    .prologue
    .line 234
    sget v1, Lcom/miui/gallery/data/LocalImage;->sThumbnailTargetSize:I

    if-nez v1, :cond_0

    .line 235
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 236
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/miui/gallery/data/LocalImage;->sThumbnailTargetSize:I

    .line 238
    :cond_0
    sget v1, Lcom/miui/gallery/data/LocalImage;->sThumbnailTargetSize:I

    return v1
.end method

.method private getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "file path should not be empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 339
    goto :goto_0
.end method

.method public static getBaseUri(Z)Landroid/net/Uri;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 335
    if-eqz p0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getExternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getInternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getItemPath(Z)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    goto :goto_0
.end method

.method static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 242
    packed-switch p0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->calcThumbnailTargetSize()I

    move-result v0

    .line 249
    :goto_0
    return v0

    .line 246
    :pswitch_1
    sget v0, Lcom/miui/gallery/data/LocalImage;->MICROTHUMBNAIL_TARGET_SIZE:I

    if-nez v0, :cond_0

    .line 247
    const/16 v0, 0xb9

    sput v0, Lcom/miui/gallery/data/LocalImage;->MICROTHUMBNAIL_TARGET_SIZE:I

    .line 249
    :cond_0
    sget v0, Lcom/miui/gallery/data/LocalImage;->MICROTHUMBNAIL_TARGET_SIZE:I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    .line 146
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 148
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    .line 149
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    .line 150
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    .line 151
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    .line 152
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    .line 153
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 154
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    .line 155
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    .line 156
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 157
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    .line 158
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    .line 159
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocalImage;->delete(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public delete(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 305
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 306
    new-instance v0, Lcom/miui/gallery/data/LocalImage$DeleteLocalImage;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/LocalImage$DeleteLocalImage;-><init>(Lcom/miui/gallery/data/LocalImage;)V

    invoke-static {p1, p0, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteLocalMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/LocalMediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 307
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 355
    invoke-super {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 356
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/data/MediaDetails;->extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V

    .line 358
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 277
    const/16 v0, 0x62d

    .line 279
    .local v0, operation:I
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    or-int/lit8 v0, v0, 0x40

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    or-int/lit8 v0, v0, 0x2

    .line 287
    :cond_1
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    iget-wide v3, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    or-int/lit8 v0, v0, 0x10

    .line 290
    :cond_2
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->mPath:Lcom/miui/gallery/data/Path;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;ILjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 316
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 318
    iget v2, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    .line 319
    .local v1, rotation:I
    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x168

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 322
    .local v0, isJpeg:Z
    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GalleryUtils;->updateOrientation(ILjava/lang/String;Z)V

    .line 324
    if-eqz v0, :cond_1

    .line 326
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 328
    :cond_1
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 164
    new-instance v0, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 165
    .local v0, uh:Lcom/miui/gallery/util/UpdateHelper;
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 168
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    .line 169
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    .line 170
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    .line 172
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    .line 174
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 177
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    .line 178
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    .line 179
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 180
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    .line 181
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    .line 182
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
