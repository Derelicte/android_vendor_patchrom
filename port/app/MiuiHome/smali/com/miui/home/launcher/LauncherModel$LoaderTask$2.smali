.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;
.super Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v0, p1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    #getter for: Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$600(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const-string v0, "Launcher.Model"

    const-string v1, "Finally removing useless icons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsRemoved(Ljava/util/ArrayList;)V

    .line 814
    :cond_0
    return-void
.end method
