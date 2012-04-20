.class Lcom/android/systemui/settings/ToggleManager$8;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$8;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$8;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$900(Lcom/android/systemui/settings/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$8;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager;->access$800(Lcom/android/systemui/settings/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$8;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$900(Lcom/android/systemui/settings/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$8;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager;->access$800(Lcom/android/systemui/settings/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    return-void
.end method
