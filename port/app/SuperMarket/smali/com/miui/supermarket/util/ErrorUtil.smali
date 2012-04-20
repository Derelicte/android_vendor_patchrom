.class public Lcom/miui/supermarket/util/ErrorUtil;
.super Ljava/lang/Object;
.source "ErrorUtil.java"


# static fields
.field private static mErrorObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/ErrorObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/ErrorUtil;->mErrorObserverList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyAllOnPackageInstallError(Ljava/lang/String;I)V
    .locals 4
    .parameter "pkgName"
    .parameter "failCode"

    .prologue
    .line 49
    sget-object v3, Lcom/miui/supermarket/util/ErrorUtil;->mErrorObserverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/ErrorObserver;

    .line 50
    .local v2, observer:Lcom/miui/supermarket/ErrorObserver;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/supermarket/ErrorObserver;->obtainErrorMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 51
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 52
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    invoke-interface {v2, v1}, Lcom/miui/supermarket/ErrorObserver;->sendErrorMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 55
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #observer:Lcom/miui/supermarket/ErrorObserver;
    :cond_0
    return-void
.end method

.method public static notifyGettingPathError(Lcom/miui/supermarket/ErrorObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "observer"
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 58
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/miui/supermarket/ErrorObserver;->obtainErrorMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 60
    invoke-interface {p0, v0}, Lcom/miui/supermarket/ErrorObserver;->sendErrorMessage(Landroid/os/Message;)V

    .line 61
    return-void
.end method

.method public static obtainMessage(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .parameter "handler"
    .parameter "msgId"

    .prologue
    .line 31
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processGettingPathError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V
    .locals 5
    .parameter "context"
    .parameter "msg"
    .parameter "processor"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, displayName:Ljava/lang/String;
    const v2, 0x7f060083

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/supermarket/util/ErrorUtil;->showHint(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p2, v1, v0}, Lcom/miui/supermarket/ErrorProcessor;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static processPackageInstallError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V
    .locals 2
    .parameter "context"
    .parameter "msg"
    .parameter "processor"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 65
    .local v0, failCode:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, pkgName:Ljava/lang/String;
    invoke-interface {p2, v1, v0}, Lcom/miui/supermarket/ErrorProcessor;->onPackageInstallError(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public static registerErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 42
    sget-object v0, Lcom/miui/supermarket/util/ErrorUtil;->mErrorObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    :cond_0
    return-void
.end method

.method private static showHint(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    return-void
.end method

.method private static showHint(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "hint"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method

.method public static showServerErrorHint(Landroid/content/Context;Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "resp"

    .prologue
    .line 19
    invoke-static {p1}, Lcom/miui/supermarket/util/ServerResponseUtil;->code2Res(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/supermarket/util/ErrorUtil;->showHint(Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method public static unregisterErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 45
    sget-object v0, Lcom/miui/supermarket/util/ErrorUtil;->mErrorObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
