.class public Lcom/miui/supermarket/SignatureInconsistentActivity;
.super Lcom/miui/supermarket/DownloadAlertActivity;
.source "SignatureInconsistentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackagePath:Ljava/lang/String;

.field private mReturnCode:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/miui/supermarket/DownloadAlertActivity;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackagePath:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mReturnCode:I

    .line 24
    iput-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/supermarket/SignatureInconsistentActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/supermarket/SignatureInconsistentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/supermarket/SignatureInconsistentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->handleError()V

    return-void
.end method

.method private handleError()V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackagePath:Ljava/lang/String;

    iget v4, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mReturnCode:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/supermarket/PackageInstallObserver;->packageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected getAlertMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAlertTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    const v0, 0x7f060084

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initMembersViaIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 33
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;

    .line 34
    const-string v0, "pkgDisplayName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mDisplayName:Ljava/lang/String;

    .line 35
    const-string v0, "pkgMgrCode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mReturnCode:I

    .line 36
    const-string v0, "pkgFilePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackagePath:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method protected onCancelClick(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->handleError()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/supermarket/DownloadAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mApplicationContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method protected onNegativeClick(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->handleError()V

    .line 70
    return-void
.end method

.method protected onPositiveClick(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, ret:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v0, 0x1

    .line 60
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/supermarket/SignatureInconsistentActivity;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;

    invoke-direct {v3, p0}, Lcom/miui/supermarket/SignatureInconsistentActivity$PackageDeleteObserver;-><init>(Lcom/miui/supermarket/SignatureInconsistentActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 65
    :goto_1
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/miui/supermarket/SignatureInconsistentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060086

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    goto :goto_0
.end method
