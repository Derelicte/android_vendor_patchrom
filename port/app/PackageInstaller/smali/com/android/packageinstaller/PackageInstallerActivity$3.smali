.class Lcom/android/packageinstaller/PackageInstallerActivity$3;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    const-string v0, "PackageInstaller"

    const-string v1, "initiate installation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 145
    return-void
.end method
