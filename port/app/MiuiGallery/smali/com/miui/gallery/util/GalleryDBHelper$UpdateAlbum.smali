.class Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateAlbum"
.end annotation


# instance fields
.field private mAlbum:Lcom/miui/gallery/data/DBAlbum;

.field final synthetic this$0:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V
    .locals 0
    .parameter
    .parameter "album"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    .line 332
    return-void
.end method


# virtual methods
.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "sqliteDatabase"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    iget-object v2, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    #calls: Lcom/miui/gallery/util/GalleryDBHelper;->createContentValue(Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;
    invoke-static {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->access$200(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;

    move-result-object v0

    .line 337
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "album"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/gallery/util/GalleryDBHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_ID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 340
    return-void
.end method
