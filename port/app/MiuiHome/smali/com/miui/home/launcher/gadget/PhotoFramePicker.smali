.class public Lcom/miui/home/launcher/gadget/PhotoFramePicker;
.super Landroid/app/Activity;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$1;,
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;,
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;
    }
.end annotation


# instance fields
.field mBackupPhotoFramePath:Ljava/lang/String;

.field private mCallbackId:J

.field mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

.field mCurrentPhotoFramePath:Ljava/lang/String;

.field private mDisplayPixels:I

.field mFilterEntryName:Ljava/lang/String;

.field mFrameEntryName:Ljava/lang/String;

.field mImageEntryName:Ljava/lang/String;

.field mImageUri:Landroid/net/Uri;

.field mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

.field private mInitMatrixValues:[F

.field mInitRotateDegrees:I

.field mSizeDescript:Ljava/lang/String;

.field mSystemThemePath:Ljava/lang/String;

.field mThemeZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    .line 71
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 73
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    .line 288
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 290
    return-void
.end method

.method private static getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 391
    const-string v1, "photo_frame_picker"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 392
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parse(Ljava/lang/String;)Z
    .locals 11
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x9

    .line 343
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, json:Lorg/json/JSONObject;
    const-string v8, "image_uri"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, photo:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 346
    .local v4, photoUri:Landroid/net/Uri;
    :cond_0
    const-string v8, "theme_path_key"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, themePath:Ljava/lang/String;
    const-string v8, "matrix"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 348
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 349
    .local v7, values:[F
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 350
    const/16 v8, 0x9

    new-array v7, v8, [F

    .line 351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 352
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v7, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0           #i:I
    :cond_1
    const-string v8, "rotate"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 357
    .local v5, rotate:I
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 358
    iput-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 359
    iput-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 360
    iput v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    const/4 v8, 0x1

    .line 365
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #photo:Ljava/lang/String;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v5           #rotate:I
    .end local v6           #themePath:Ljava/lang/String;
    .end local v7           #values:[F
    :goto_1
    return v8

    .line 362
    :catch_0
    move-exception v8

    .line 365
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateViews(Z)V
    .locals 8
    .parameter "keepValues"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->recyleAllBitmap()V

    .line 227
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_0

    .line 229
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->cancel(Z)Z

    .line 230
    iput-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 233
    :cond_0
    new-instance v0, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v0, loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    invoke-static {v0, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    new-instance v0, Lmiui/util/InputStreamLoader;

    .end local v0           #loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .restart local v0       #loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    invoke-static {v0, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    new-instance v2, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v2, streamLoader:Lmiui/util/InputStreamLoader;
    :goto_0
    invoke-static {v2}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 242
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 243
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    const v4, 0x7fffffff

    invoke-static {v2, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    if-eqz p1, :cond_2

    .line 245
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v3, v4, v6}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setMatrixValues()V

    .line 256
    :goto_1
    return-void

    .line 238
    .end local v1           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #streamLoader:Lmiui/util/InputStreamLoader;
    :cond_1
    new-instance v2, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 248
    .restart local v1       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #streamLoader:Lmiui/util/InputStreamLoader;
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v3, v5, v5}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 249
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->resetMatrix()V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v3, v7}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    new-instance v3, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;-><init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Z)V

    iput-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 254
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method commit()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 196
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_0

    .line 221
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, backupFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "photo_frame.zip"

    invoke-static {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, tempFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 207
    const/16 v2, 0x1f9

    .line 208
    .local v2, extraPerms:I
    or-int/lit16 v3, v2, 0x1b0

    .line 209
    .local v3, perms:I
    or-int/lit8 v3, v3, 0x4

    .line 210
    or-int/lit8 v3, v3, 0x2

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 214
    .end local v2           #extraPerms:I
    .end local v3           #perms:I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v1, data:Landroid/content/Intent;
    const-string v5, "callback_id"

    iget-wide v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string v5, "config_as_json"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v5, "pick_result"

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    const-string v7, "photo_frame_picker"

    const-string v8, "photo_frame_result.tmp"

    invoke-virtual {v6, p0, v7, v8}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getPhotoFramePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v5, "backup_zip"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v9, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->finish()V

    goto :goto_0
.end method

.method protected getConfigAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 369
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "theme_path_key"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 373
    const-string v4, "image_uri"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 377
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 378
    .local v3, values:[F
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getMatrixValues([F)V

    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 380
    aget v4, v3, v0

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    const-string v4, "matrix"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v4, "rotate"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getRotateDegrees()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 387
    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #values:[F
    :goto_1
    return-object v4

    .line 385
    :catch_0
    move-exception v4

    .line 387
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    return-void

    .line 136
    :pswitch_0
    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 138
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 142
    :pswitch_1
    if-eqz p3, :cond_0

    .line 143
    const-string v4, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, theme:Ljava/lang/String;
    const-string v4, "photo_frame.zip"

    invoke-static {p0, v4}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, temp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photoframe_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, entryName:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    invoke-static {v1, v2, v0, v4}, Lcom/miui/home/launcher/gadget/Utils;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 149
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getRotateDegrees()I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    .line 150
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 151
    .local v3, values:[F
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getMatrixValues([F)V

    .line 152
    iput-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 153
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/Utils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    .line 84
    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/PhotoFrameView;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 89
    :cond_0
    if-eqz p1, :cond_2

    .line 90
    const-string v2, "callback_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    .line 91
    const-string v2, "image_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 92
    const-string v2, "frame_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 93
    const-string v2, "filter_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 94
    const-string v2, "system_theme_path_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    .line 95
    const-string v2, "size_descript_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    .line 96
    const-string v2, "backup_photo_frame_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const-string v2, "com.android.gallery.ui.PhotoFramePicker"

    const-string v3, "No valid zip found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->finish()V

    .line 118
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v2, "config_as_json"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->parse(Ljava/lang/String;)Z

    .line 111
    .end local v0           #config:Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Lcom/miui/home/launcher/gadget/PhotoFramePicker$1;)V

    .line 112
    .local v1, listener:Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;
    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f070051

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->recyleAllBitmap()V

    .line 166
    new-instance v0, Ljava/io/File;

    const-string v1, "photo_frame.zip"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 168
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "callback_id"

    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 124
    const-string v0, "config_as_json"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "image_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "frame_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "filter_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "size_descript_key"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "system_theme_path_key"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method selectFrame()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SHOW_COMPONENT_NAME"

    const-string v2, "photo_frame"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "android.intent.extra.SHOW_COMPONENT_SIZE"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method selectPhoto()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method

.method setMatrixValues()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lcom/miui/home/launcher/gadget/PhotoFrameView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setMatrixValues([F)V

    goto :goto_0
.end method
