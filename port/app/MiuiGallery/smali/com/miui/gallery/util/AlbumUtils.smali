.class public Lcom/miui/gallery/util/AlbumUtils;
.super Ljava/lang/Object;
.source "AlbumUtils.java"


# static fields
.field public static CAMERA_PATH:Ljava/lang/String;

.field public static EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

.field public static final EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

.field public static INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

.field public static final INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

.field private static mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private static sContext:Landroid/content/Context;

.field private static sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/handwritings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlbumSetSortMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 113
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;

    move-result-object v0

    .line 114
    .local v0, sortMenu:Landroid/view/SubMenu;
    const/4 v1, 0x4

    const/4 v2, 0x2

    const v3, 0x7f0d00fe

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 115
    const/4 v1, -0x4

    const/4 v2, 0x3

    const v3, 0x7f0d00ff

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 116
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 117
    return-void
.end method

.method public static addAlbumSortMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 105
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;

    move-result-object v0

    .line 106
    .local v0, sortMenu:Landroid/view/SubMenu;
    const v1, 0x7f0d00fc

    invoke-static {v0, v2, v2, v1}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 107
    const/4 v1, -0x2

    const/4 v2, 0x3

    const v3, 0x7f0d00fd

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 108
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 109
    return-void
.end method

.method public static addDefaultRecentAlbums()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 75
    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v7, v2, v6

    sget-object v6, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v6, v2, v9

    const/4 v6, 0x2

    sget-object v7, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x5

    sget-object v7, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 81
    .local v2, defaultRecentAlbums:[Ljava/lang/String;
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 82
    .local v3, filePath:Ljava/lang/String;
    sget-object v6, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v6, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 83
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #album:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, v3}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v0       #album:Lcom/miui/gallery/data/DBAlbum;
    invoke-virtual {v0, v9}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    .line 88
    sget-object v6, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v7, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v8, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v6, v7}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v0           #album:Lcom/miui/gallery/data/DBAlbum;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static addMenuItem(Landroid/view/Menu;III)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 121
    return-void
.end method

.method private static addMenuItem(Landroid/view/Menu;IIII)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconId"

    .prologue
    .line 124
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 125
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p4, :cond_0

    .line 126
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 128
    :cond_0
    return-void
.end method

.method private static addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const v1, 0x7f0d00f9

    invoke-interface {p0, v2, v2, v2, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 96
    .local v0, sortMenu:Landroid/view/SubMenu;
    const v1, 0x7f0d00fa

    invoke-static {v0, v3, v2, v1}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 97
    const/4 v1, -0x1

    const v2, 0x7f0d00fb

    invoke-static {v0, v1, v3, v2}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 98
    const/4 v1, 0x3

    const/4 v2, 0x4

    const v3, 0x7f0d0100

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 99
    const/4 v1, -0x3

    const/4 v2, 0x5

    const v3, 0x7f0d0101

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 100
    return-object v0
.end method

.method public static findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumSortBy(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {p0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 138
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getSortBy()I

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 141
    :cond_0
    const-string v1, "album should not be null here"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public static getBucketDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"
    .parameter "bucketName"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, id:I
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const v0, 0x7f0d00be

    .line 178
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .end local p1
    :goto_1
    return-object p1

    .line 162
    .restart local p1
    :cond_1
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    const v0, 0x7f0d00bf

    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    const v0, 0x7f0d00c0

    goto :goto_0

    .line 168
    :cond_3
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    const v0, 0x7f0d00c1

    goto :goto_0

    .line 171
    :cond_4
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    const v0, 0x7f0d00c2

    goto :goto_0

    .line 174
    :cond_5
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const v0, 0x7f0d00c3

    goto :goto_0

    .line 178
    :cond_6
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_1
.end method

.method public static increaseAlbumVisitCount(Ljava/lang/String;)V
    .locals 4
    .parameter "bucketPath"

    .prologue
    .line 186
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 188
    .local v0, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 190
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 191
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 199
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    .line 200
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadRecentAlbumCache()V

    .line 201
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0       #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 196
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    sput-object p0, Lcom/miui/gallery/util/AlbumUtils;->sContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper;

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 65
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 66
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private static isAlbumFlag(Ljava/lang/String;I)Z
    .locals 3
    .parameter "filePath"
    .parameter "flag"

    .prologue
    .line 370
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 371
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_1

    .line 372
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 373
    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v1

    .line 379
    :goto_0
    return v1

    .line 375
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHiddenAlbum(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 343
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    .line 344
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/AllAlbumCache;->getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    .line 345
    .local v1, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v1, :cond_0

    .line 348
    const/4 v2, 0x1

    .line 350
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v2

    goto :goto_0
.end method

.method public static isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z
    .locals 5
    .parameter "dbAlbum"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, result:Z
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/settings/PreferenceHelper;->isAutoCreateRecentAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v1

    .line 365
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 358
    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-ne v1, v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static isRecentAlbum(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 328
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    .line 329
    .local v0, recentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/RecentAlbumCache;->getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareOptionsMenu(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "sortBy"

    .prologue
    .line 132
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 133
    return-void
.end method

.method public static reloadAlbumCache()V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    .line 407
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/DataManager;->getAllMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 408
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/AllAlbumCache;->reloadCache()Z

    .line 409
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/RecentAlbumCache;->reloadCache()Z

    .line 410
    return-void
.end method

.method public static reloadRecentAlbumCache()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    .line 414
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/RecentAlbumCache;->reloadCache()Z

    .line 415
    return-void
.end method

.method public static removeAlbumFlag(Ljava/lang/String;I)Z
    .locals 5
    .parameter "filePath"
    .parameter "flag"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, shouldModifyDatabase:Z
    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 298
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_4

    .line 299
    if-ne p1, v3, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBAlbum;->setIsHiddenRecent(Z)V

    .line 304
    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    .line 307
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 308
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DBAlbum;->setIsHidden(Z)V

    .line 314
    :cond_2
    if-eqz v1, :cond_3

    .line 315
    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v3, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v4, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 321
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    .line 323
    return v1

    .line 318
    :cond_4
    const-string v2, "The album must be already in database"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeRecentAlbum(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, databaseModified:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    if-eqz v0, :cond_2

    .line 223
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 225
    :cond_2
    return-void
.end method

.method public static setAlbumFlag(Ljava/lang/String;I)Z
    .locals 6
    .parameter "filePath"
    .parameter "flag"

    .prologue
    const/4 v5, 0x1

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, shouldModifyDatabase:Z
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 256
    .local v0, albumFind:Lcom/miui/gallery/data/DBAlbum;
    const/4 v1, 0x1

    .line 257
    .local v1, isUpdateAlbum:Z
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #albumFind:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v0       #albumFind:Lcom/miui/gallery/data/DBAlbum;
    const/4 v1, 0x0

    .line 261
    const/4 v2, 0x1

    .line 263
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v3

    if-eq v3, v5, :cond_1

    .line 265
    const/4 v2, 0x1

    .line 267
    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/DBAlbum;->setIsHidden(Z)V

    .line 270
    :cond_1
    if-ne p1, v5, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-eq v3, v5, :cond_3

    .line 272
    :cond_2
    const/4 v2, 0x1

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 275
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBAlbum;->setIsHiddenRecent(Z)V

    .line 277
    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    .line 280
    :cond_3
    if-eqz v1, :cond_5

    .line 281
    if-eqz v2, :cond_4

    .line 282
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v4, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v5, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 289
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    .line 290
    return v2

    .line 285
    :cond_5
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v4, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v5, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_0
.end method

.method public static setAlbumSortBy(Ljava/lang/String;I)V
    .locals 4
    .parameter "filePath"
    .parameter "sortBy"

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-static {p0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 148
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/DBAlbum;->setSortBy(I)V

    .line 150
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v1, "album should not be null here, because increaseAlbumVisitCount() will help insert the album already"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setRecentAlbum(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 205
    .local v0, databaseModified:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 213
    :cond_2
    return-void
.end method

.method private static toggleAlbumFlag(Ljava/lang/String;I)Z
    .locals 2
    .parameter "filePath"
    .parameter "flag"

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, databaseModified:Z
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->isAlbumFlag(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 248
    :cond_0
    return v0

    .line 242
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static toggleHiddenAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 232
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleAlbumFlag(Ljava/lang/String;I)Z

    .line 233
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 234
    return-void
.end method

.method public static toggleRecentAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleAlbumFlag(Ljava/lang/String;I)Z

    .line 229
    return-void
.end method
