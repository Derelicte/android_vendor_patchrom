.class public Lcom/miui/supermarket/AppInfo$CommentStatistics;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentStatistics"
.end annotation


# instance fields
.field public comment:I

.field public download:I

.field public downloaded:Z

.field public friendComment:I

.field final synthetic this$0:Lcom/miui/supermarket/AppInfo;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/AppInfo;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->this$0:Lcom/miui/supermarket/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->download:I

    .line 40
    iput v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->comment:I

    .line 41
    iput v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->friendComment:I

    .line 42
    iput-boolean v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->downloaded:Z

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/miui/supermarket/AppInfo;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->this$0:Lcom/miui/supermarket/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->download:I

    .line 40
    iput v1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->comment:I

    .line 41
    iput v1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->friendComment:I

    .line 42
    iput-boolean v1, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->downloaded:Z

    .line 48
    const-string v0, "download"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->download:I

    .line 49
    const-string v0, "commentsCount"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->comment:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/supermarket/AppInfo$CommentStatistics;->downloaded:Z

    .line 52
    return-void
.end method
