.class public Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/AccountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field public nickname:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    return-void
.end method
