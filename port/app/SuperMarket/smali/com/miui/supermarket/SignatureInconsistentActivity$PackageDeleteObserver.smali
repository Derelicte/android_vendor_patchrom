.class Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SignatureInconsistentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/SignatureInconsistentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/SignatureInconsistentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 8
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    invoke-virtual {v0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$000(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/net/Uri;

    move-result-object v7

    new-instance v0, Lcom/miui/supermarket/PackageInstallObserver;

    iget-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$100(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$000(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$200(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$300(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackagePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$400(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/supermarket/PackageInstallObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #getter for: Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$100(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;->this$0:Lcom/miui/supermarket/SignatureInconsistentActivity;

    #calls: Lcom/miui/supermarket/SignatureInconsistentActivity;->handleError()V
    invoke-static {v0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->access$500(Lcom/miui/supermarket/SignatureInconsistentActivity;)V

    goto :goto_0
.end method
