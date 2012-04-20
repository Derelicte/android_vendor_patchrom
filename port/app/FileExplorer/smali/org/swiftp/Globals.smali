.class public Lorg/swiftp/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static chrootDir:Ljava/io/File;

.field private static context:Landroid/content/Context;

.field private static lastError:Ljava/lang/String;

.field private static proxyConnector:Lorg/swiftp/ProxyConnector;

.field private static username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    .line 30
    sput-object v2, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 31
    sput-object v2, Lorg/swiftp/Globals;->username:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChrootDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/swiftp/Globals;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getProxyConnector()Lorg/swiftp/ProxyConnector;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    goto :goto_0
.end method

.method public static setChrootDir(Ljava/io/File;)V
    .locals 1
    .parameter "chrootDir"

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sput-object p0, Lorg/swiftp/Globals;->chrootDir:Ljava/io/File;

    .line 54
    :cond_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 70
    sput-object p0, Lorg/swiftp/Globals;->context:Landroid/content/Context;

    .line 72
    :cond_0
    return-void
.end method

.method public static setLastError(Ljava/lang/String;)V
    .locals 0
    .parameter "lastError"

    .prologue
    .line 61
    sput-object p0, Lorg/swiftp/Globals;->lastError:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static setProxyConnector(Lorg/swiftp/ProxyConnector;)V
    .locals 0
    .parameter "proxyConnector"

    .prologue
    .line 43
    sput-object p0, Lorg/swiftp/Globals;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 44
    return-void
.end method
