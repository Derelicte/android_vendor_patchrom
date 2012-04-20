.class Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;
.super Lcom/miui/supermarket/PackageInstallObserver;
.source "OpenDownloadOrDownloadCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "content"
    .parameter "packageName"
    .parameter "name"
    .parameter "apkPath"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->this$0:Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/miui/supermarket/PackageInstallObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 101
    const/16 v0, -0x68

    if-ne p2, v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/supermarket/SignatureInconsistentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v1, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "pkgDisplayName"

    iget-object v2, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "pkgMgrCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "pkgFilePath"

    iget-object v2, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/miui/supermarket/OpenDownloadOrDownloadCompleteReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/supermarket/PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0
.end method
