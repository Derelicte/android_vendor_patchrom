.class public Lcom/miui/supermarket/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/AppInfo$CommentStatistics;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public displayVersion:Ljava/lang/String;

.field public iconName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public size:I

.field public statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/supermarket/AppInfo;->size:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->description:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 21
    new-instance v0, Lcom/miui/supermarket/AppInfo$CommentStatistics;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/AppInfo$CommentStatistics;-><init>(Lcom/miui/supermarket/AppInfo;)V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "obj"
    .parameter "appIconUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/supermarket/AppInfo;->size:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->description:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 25
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 26
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    .line 27
    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    .line 28
    const-string v0, "versionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    .line 29
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/miui/supermarket/util/SuperMarketUtil;->combineHttpURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    .line 31
    const-string v0, "fileSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/supermarket/AppInfo;->size:I

    .line 32
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->description:Ljava/lang/String;

    .line 33
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/miui/supermarket/AppInfo$CommentStatistics;

    invoke-direct {v0, p0, p1}, Lcom/miui/supermarket/AppInfo$CommentStatistics;-><init>(Lcom/miui/supermarket/AppInfo;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 36
    return-void
.end method
