.class public final Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUri(IZ)Landroid/net/Uri;
    .locals 1
    .parameter "type"
    .parameter "internal"

    .prologue
    .line 47
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getUri(IZJ)Landroid/net/Uri;
    .locals 1
    .parameter "type"
    .parameter "internal"
    .parameter "id"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->getUri(IZ)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static triggerMediaMounted()V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForInternalStorage()V

    .line 198
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForExternalStorage()V

    .line 199
    return-void
.end method

.method public static triggerMediaMountedForExternalStorage()V
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForStorage(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static triggerMediaMountedForInternalStorage()V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForStorage(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private static triggerMediaMountedForStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "storageRoot"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
