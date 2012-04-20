.class public Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;
.super Ljava/lang/Object;
.source "SuperMarketUtil.java"

# interfaces
.implements Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/SuperMarketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory",
        "<",
        "Lcom/miui/supermarket/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->mInstance:Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->mInstance:Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    invoke-direct {v0}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->mInstance:Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    .line 387
    :cond_0
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->mInstance:Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    return-object v0
.end method


# virtual methods
.method public create(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;
    .locals 4
    .parameter "obj"
    .parameter "appIconUrl"
    .parameter "userIconUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 391
    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->query(Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;

    move-result-object v0

    .line 393
    .local v0, info:Lcom/miui/supermarket/AppInfo;
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/miui/supermarket/AppInfo;

    .end local v0           #info:Lcom/miui/supermarket/AppInfo;
    invoke-direct {v0, p1, p2}, Lcom/miui/supermarket/AppInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 395
    .restart local v0       #info:Lcom/miui/supermarket/AppInfo;
    invoke-static {v1, v0}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->insert(Ljava/lang/String;Lcom/miui/supermarket/AppInfo;)V

    .line 402
    :goto_0
    return-object v0

    .line 397
    :cond_0
    iget-object v2, v0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    const-string v3, "download"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/miui/supermarket/AppInfo$CommentStatistics;->download:I

    .line 398
    iget-object v2, v0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    const-string v3, "commentsCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/miui/supermarket/AppInfo$CommentStatistics;->comment:I

    goto :goto_0
.end method

.method public bridge synthetic create(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->create(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;

    move-result-object v0

    return-object v0
.end method
