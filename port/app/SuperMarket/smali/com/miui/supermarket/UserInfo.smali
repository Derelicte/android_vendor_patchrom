.class public Lcom/miui/supermarket/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public caresNum:I

.field public commentsNum:I

.field public fansNum:I

.field public iconName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isCared:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/UserInfo;->id:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/UserInfo;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/UserInfo;->iconName:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/miui/supermarket/UserInfo;->fansNum:I

    .line 13
    iput v1, p0, Lcom/miui/supermarket/UserInfo;->caresNum:I

    .line 14
    iput v1, p0, Lcom/miui/supermarket/UserInfo;->commentsNum:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/supermarket/UserInfo;->isCared:Z

    .line 18
    return-void
.end method
