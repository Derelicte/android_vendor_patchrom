.class final Lcom/miui/gallery/StorageExplorer/AppHelper$2;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteLocalMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$folderPath:Ljava/lang/String;

.field final synthetic val$mediaItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 228
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/LocalMediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 236
    :cond_1
    return-void
.end method
