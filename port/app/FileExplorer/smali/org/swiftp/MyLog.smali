.class public Lorg/swiftp/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# instance fields
.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/swiftp/MyLog;->tag:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 65
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 56
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 62
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public l(ILjava/lang/String;)V
    .locals 1
    .parameter "level"
    .parameter "str"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public l(ILjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const-class v1, Lorg/swiftp/MyLog;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 38
    :cond_0
    invoke-static {v0}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-static {}, Lorg/swiftp/Defaults;->getConsoleLogLevel()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 41
    iget-object v2, p0, Lorg/swiftp/MyLog;->tag:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    if-nez p3, :cond_3

    .line 44
    invoke-static {}, Lorg/swiftp/Defaults;->getUiLogLevel()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 45
    invoke-static {p1, v0}, Lcom/android/fileexplorer/FTPServerService;->log(ILjava/lang/String;)V

    .line 48
    :cond_3
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 59
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 60
    return-void
.end method
