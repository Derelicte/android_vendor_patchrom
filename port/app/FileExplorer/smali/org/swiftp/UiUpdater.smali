.class public Lorg/swiftp/UiUpdater;
.super Ljava/lang/Object;
.source "UiUpdater.java"


# static fields
.field protected static clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field protected static myLog:Lorg/swiftp/MyLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/swiftp/MyLog;

    const-string v1, "UiUpdater"

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/UiUpdater;->myLog:Lorg/swiftp/MyLog;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerClient(Landroid/os/Handler;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 32
    sget-object v0, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
.end method

.method public static unregisterClient(Landroid/os/Handler;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 38
    :goto_0
    sget-object v0, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public static updateClients()V
    .locals 3

    .prologue
    .line 46
    sget-object v2, Lorg/swiftp/UiUpdater;->clients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 47
    .local v0, client:Landroid/os/Handler;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 49
    .end local v0           #client:Landroid/os/Handler;
    :cond_0
    return-void
.end method
