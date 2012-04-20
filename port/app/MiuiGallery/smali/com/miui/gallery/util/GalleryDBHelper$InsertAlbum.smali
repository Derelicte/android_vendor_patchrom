.class Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;
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
    name = "InsertAlbum"
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
    .line 347
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    .line 349
    return-void
.end method


# virtual methods
.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "sqliteDatabase"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    iget-object v2, p0, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    #calls: Lcom/miui/gallery/util/GalleryDBHelper;->createContentValue(Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;
    invoke-static {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->access$200(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;

    move-result-object v0

    .line 354
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "album"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 355
    return-void
.end method
