.class public Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;
.super Ljava/lang/Object;
.source "SuperMarketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/SuperMarketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoCache"
.end annotation


# static fields
.field private static mAppInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->mAppInfoCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->mAppInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 357
    return-void
.end method

.method public static insert(Ljava/lang/String;Lcom/miui/supermarket/AppInfo;)V
    .locals 1
    .parameter "pkgName"
    .parameter "info"

    .prologue
    .line 352
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->mAppInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public static query(Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 348
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->mAppInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->mAppInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/AppInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
