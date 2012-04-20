.class final Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/DownloadCache;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/miui/gallery/data/DownloadCache;

    .line 256
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 257
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 261
    sget-object v4, Lcom/miui/gallery/data/DownloadEntry;->SCHEMA:Lcom/miui/gallery/common/EntrySchema;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 263
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/miui/gallery/data/DownloadCache;

    #getter for: Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v4}, Lcom/miui/gallery/data/DownloadCache;->access$100(Lcom/miui/gallery/data/DownloadCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 264
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    const-string v4, "DownloadCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #file:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 273
    sget-object v0, Lcom/miui/gallery/data/DownloadEntry;->SCHEMA:Lcom/miui/gallery/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    return-void
.end method
