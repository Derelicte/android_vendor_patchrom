.class Lcom/android/systemui/settings/ToggleManager$12$1;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleManager$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/ToggleManager$12;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$12$1;->this$1:Lcom/android/systemui/settings/ToggleManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$12$1;->this$1:Lcom/android/systemui/settings/ToggleManager$12;

    iget-boolean v1, v1, Lcom/android/systemui/settings/ToggleManager$12;->val$isReboot:Z

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$12$1;->this$1:Lcom/android/systemui/settings/ToggleManager$12;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleManager$12;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager;->access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1448
    :goto_0
    return-void

    .line 1444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$12$1;->this$1:Lcom/android/systemui/settings/ToggleManager$12;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleManager$12;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager;->access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
