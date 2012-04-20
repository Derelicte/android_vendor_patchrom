.class Lcom/android/updater/ApplyUpdateFragment$4;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ApplyUpdateFragment;->confirmCancel()V
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
    .line 485
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$4;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$4;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-virtual {v0}, Lcom/android/updater/tasks/DownloadUpdateManager;->cancel()V

    .line 488
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$4;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 489
    return-void
.end method
