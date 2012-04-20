.class Lcom/android/systemui/settings/ToggleManager$12;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleManager;->shutdown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;

.field final synthetic val$isReboot:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$12;->this$0:Lcom/android/systemui/settings/ToggleManager;

    iput-boolean p2, p0, Lcom/android/systemui/settings/ToggleManager$12;->val$isReboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$12;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$12;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$900(Lcom/android/systemui/settings/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/settings/ToggleManager$12$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleManager$12$1;-><init>(Lcom/android/systemui/settings/ToggleManager$12;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1450
    return-void
.end method
