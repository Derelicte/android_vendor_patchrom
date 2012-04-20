.class public Lcom/miui/home/launcher/gadget/PhotoFrame;
.super Lcom/miui/home/launcher/gadget/ConfigableGadget;
.source "PhotoFrame.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mEditView:Landroid/widget/ImageView;

.field mFirstResume:Z

.field mPhotoView:Landroid/widget/ImageView;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mFirstResume:Z

    .line 45
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    .line 51
    iput p2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mRequestCode:I

    .line 52
    return-void
.end method

.method private generateFromTheme()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const v5, 0xf4240

    .line 203
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getItemId()J

    move-result-wide v10

    invoke-virtual {v3, v4, v10, v11}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->prepareBackup(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v7

    .line 207
    :cond_1
    new-instance v6, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getGadgetId()I

    move-result v3

    invoke-direct {v6, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 208
    .local v6, backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    invoke-virtual {v6}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, path:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v8, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 212
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    new-instance v3, Lmiui/util/InputStreamLoader;

    const-string v4, "frame.png"

    invoke-direct {v3, v9, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, frame:Landroid/graphics/Bitmap;
    new-instance v3, Lmiui/util/InputStreamLoader;

    const-string v4, "filter.png"

    invoke-direct {v3, v9, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    .local v1, filter:Landroid/graphics/Bitmap;
    new-instance v3, Lmiui/util/InputStreamLoader;

    const-string v4, "image.png"

    invoke-direct {v3, v9, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 218
    .local v2, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 219
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 223
    :cond_2
    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    :cond_3
    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_4
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 223
    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    :cond_5
    if-eqz v1, :cond_6

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_6
    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_7

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    :cond_7
    if-eqz v1, :cond_8

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_8
    if-eqz v2, :cond_9

    .line 232
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    throw v3
.end method

.method private getCachePath(Z)Ljava/lang/String;
    .locals 4
    .parameter "createIfNeed"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const-string v2, "photoframe"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultRes()I
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getGadgetId()I

    move-result v0

    .line 192
    .local v0, gadgetId:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 193
    const v1, 0x7f020047

    .line 199
    :goto_0
    return v1

    .line 195
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 196
    const v1, 0x7f020049

    goto :goto_0

    .line 199
    :cond_1
    const v1, 0x7f02004b

    goto :goto_0
.end method

.method private getGadgetId()I
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 243
    .local v0, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    return v1
.end method

.method private updateViews()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getCachedPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->generateFromTheme()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getDefaultRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method deleteCachedPhoto()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const-string v3, "photoframe"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method getCachedPhoto()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 168
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getCachePath(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v4

    .line 172
    :cond_1
    const/4 v2, 0x0

    .line 174
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 179
    if-eqz v3, :cond_0

    .line 181
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v5

    goto :goto_0

    .line 176
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    if-eqz v2, :cond_0

    .line 181
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 182
    :catch_2
    move-exception v5

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 181
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 183
    :cond_2
    :goto_3
    throw v4

    .line 182
    :catch_3
    move-exception v5

    goto :goto_3

    .line 179
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 176
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    return-object v0
.end method

.method moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, srcFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.PHOTO_FRAME_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callback_id"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    const-string v1, "config_as_json"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->loadConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "image_entry"

    const-string v2, "image.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "frame_entry"

    const-string v2, "frame.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "filter_entry"

    const-string v2, "filter.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "size_descript_key"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v1, "backup_photo_frame_key"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getItemId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "system_theme_path_key"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 56
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 57
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const v3, 0x7f030019

    invoke-static {v2, v3, p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 59
    .local v1, mainWrap:Landroid/view/ViewGroup;
    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    .line 61
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->updateViews()V

    .line 70
    return-void
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDeleted()V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->deleteCachedPhoto()V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 93
    const-string v0, "config_as_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->saveConfig(Ljava/lang/String;)Z

    .line 94
    const-string v0, "pick_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getCachePath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrame;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "backup_zip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->getItemId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrame;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrame;->updateViews()V

    .line 97
    return-void
.end method
