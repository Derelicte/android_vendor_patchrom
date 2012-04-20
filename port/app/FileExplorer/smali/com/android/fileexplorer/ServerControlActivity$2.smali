.class Lcom/android/fileexplorer/ServerControlActivity$2;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/ServerControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/ServerControlActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/ServerControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/fileexplorer/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/Globals;->setLastError(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    #getter for: Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/fileexplorer/ServerControlActivity;->access$000(Lcom/android/fileexplorer/ServerControlActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-static {v0}, Lorg/swiftp/Globals;->setChrootDir(Ljava/io/File;)V

    .line 226
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    #calls: Lcom/android/fileexplorer/ServerControlActivity;->warnIfNoExternalStorage()V
    invoke-static {v0}, Lcom/android/fileexplorer/ServerControlActivity;->access$100(Lcom/android/fileexplorer/ServerControlActivity;)V

    .line 228
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
