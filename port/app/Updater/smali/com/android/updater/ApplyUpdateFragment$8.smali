.class Lcom/android/updater/ApplyUpdateFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ApplyUpdateFragment;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$8;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 698
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$8;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;
    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->access$1400(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$8;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;
    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->access$1400(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
