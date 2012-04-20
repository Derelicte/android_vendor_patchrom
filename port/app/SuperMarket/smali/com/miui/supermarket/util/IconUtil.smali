.class public Lcom/miui/supermarket/util/IconUtil;
.super Ljava/lang/Object;
.source "IconUtil.java"


# static fields
.field private static mIconLoader:Lcom/miui/supermarket/util/PackageIconLoader;

.field private static mPackageIconItemMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/supermarket/util/PackageIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageIconManager:Lcom/miui/supermarket/util/PackageIconItemManager;

.field private static final sImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/IconUtil;->sImageCache:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/IconUtil;->mPackageIconItemMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAppIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "pkgName"
    .parameter "icon"

    .prologue
    .line 44
    sget-object v0, Lcom/miui/supermarket/util/IconUtil;->sImageCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static getCachedAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 40
    sget-object v0, Lcom/miui/supermarket/util/IconUtil;->sImageCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static getSelectedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "url"
    .parameter "roundImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/miui/supermarket/util/PackageIconItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v2, Lcom/miui/supermarket/util/IconUtil;->mPackageIconItemMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/util/PackageIconItem;

    .line 49
    .local v1, item:Lcom/miui/supermarket/util/PackageIconItem;
    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/miui/supermarket/util/PackageIconItem;

    .end local v1           #item:Lcom/miui/supermarket/util/PackageIconItem;
    sget-object v2, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->ONLINE:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    invoke-direct {v1, v2, p1}, Lcom/miui/supermarket/util/PackageIconItem;-><init>(Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;Ljava/lang/Object;)V

    .line 51
    .restart local v1       #item:Lcom/miui/supermarket/util/PackageIconItem;
    invoke-virtual {v1, p2}, Lcom/miui/supermarket/util/PackageIconItem;->setURL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, p3}, Lcom/miui/supermarket/util/PackageIconItem;->setRoundImage(Z)V

    .line 53
    sget-object v2, Lcom/miui/supermarket/util/IconUtil;->mPackageIconItemMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    sget-object v2, Lcom/miui/supermarket/util/IconUtil;->mPackageIconManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Lcom/miui/supermarket/util/PackageIconItemManager;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/util/PackageIconItemManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/supermarket/util/IconUtil;->mPackageIconManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    .line 58
    new-instance v2, Lcom/miui/supermarket/util/PackageIconLoader;

    sget-object v3, Lcom/miui/supermarket/util/IconUtil;->mPackageIconManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    invoke-direct {v2, p0, v3}, Lcom/miui/supermarket/util/PackageIconLoader;-><init>(Landroid/content/Context;Lcom/miui/supermarket/util/PackageIconItemManager;)V

    sput-object v2, Lcom/miui/supermarket/util/IconUtil;->mIconLoader:Lcom/miui/supermarket/util/PackageIconLoader;

    .line 61
    :cond_1
    sget-object v2, Lcom/miui/supermarket/util/IconUtil;->mPackageIconManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    invoke-virtual {v2, v1}, Lcom/miui/supermarket/util/PackageIconItemManager;->tryGetBitmapLocally(Lcom/miui/supermarket/util/PackageIconItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static isAppIconCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 36
    sget-object v0, Lcom/miui/supermarket/util/IconUtil;->sImageCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static sendFetchImageMessage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .parameter "context"
    .parameter "image"
    .parameter "name"
    .parameter "url"
    .parameter "defResId"
    .parameter "roundImage"

    .prologue
    .line 25
    invoke-static {p0, p2, p3, p5}, Lcom/miui/supermarket/util/IconUtil;->getSelectedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 26
    .local v0, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Lcom/miui/supermarket/util/PackageIconItem;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 31
    sget-object v2, Lcom/miui/supermarket/util/IconUtil;->mIconLoader:Lcom/miui/supermarket/util/PackageIconLoader;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/miui/supermarket/util/PackageIconItem;

    invoke-virtual {v2, p1, v1}, Lcom/miui/supermarket/util/PackageIconLoader;->loadPhoto(Landroid/widget/ImageView;Lcom/miui/supermarket/util/PackageIconItem;)V

    goto :goto_0
.end method
