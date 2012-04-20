.class public Lcom/miui/supermarket/PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageInstallObserver.java"


# instance fields
.field protected final mApkPath:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mName:Ljava/lang/String;

.field protected final mPackageName:Ljava/lang/String;

.field protected final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "content"
    .parameter "packageName"
    .parameter "name"
    .parameter "apkPath"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/supermarket/PackageInstallObserver;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/miui/supermarket/PackageInstallObserver;->mPackageName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/miui/supermarket/PackageInstallObserver;->mName:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/miui/supermarket/PackageInstallObserver;->mApkPath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/miui/supermarket/PackageInstallObserver;->mUri:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public static packageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "pkgName"
    .parameter "name"
    .parameter "apkPath"
    .parameter "returnCode"

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-static {p0, p1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 54
    .local v2, launchIntent:Landroid/content/Intent;
    invoke-static {p4}, Lcom/miui/supermarket/PackageInstallObserver;->pkgMgrCode2ResId(I)I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, hint:Ljava/lang/String;
    const v3, 0x7f020033

    invoke-static {p0, v2, p2, v1, v3}, Lcom/miui/supermarket/util/SuperMarketUtil;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    if-ne p4, v6, :cond_1

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    .end local v0           #apkFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p1, p4}, Lcom/miui/supermarket/util/ErrorUtil;->notifyAllOnPackageInstallError(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static pkgMgrCode2ResId(I)I
    .locals 1
    .parameter "returnCode"

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 72
    const v0, 0x7f06000f

    :goto_0
    return v0

    .line 70
    :pswitch_0
    const v0, 0x7f06000e

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/supermarket/PackageInstallObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/supermarket/PackageInstallObserver;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/supermarket/PackageInstallObserver;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/supermarket/PackageInstallObserver;->mApkPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/miui/supermarket/PackageInstallObserver;->packageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method
