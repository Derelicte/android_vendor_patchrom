.class Lcom/android/updater/BaseFragment$3$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/BaseFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/updater/BaseFragment$3;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/updater/BaseFragment$3$2;->this$1:Lcom/android/updater/BaseFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.miui.backup"

    const-string v3, "com.miui.backup.BackupActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/updater/BaseFragment$3$2;->this$1:Lcom/android/updater/BaseFragment$3;

    iget-object v2, v2, Lcom/android/updater/BaseFragment$3;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v2, v1}, Lcom/android/updater/BaseFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/updater/BaseFragment$3$2;->this$1:Lcom/android/updater/BaseFragment$3;

    iget-object v2, v2, Lcom/android/updater/BaseFragment$3;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f050031

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 264
    iget-object v2, p0, Lcom/android/updater/BaseFragment$3$2;->this$1:Lcom/android/updater/BaseFragment$3;

    iget-object v2, v2, Lcom/android/updater/BaseFragment$3;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v2}, Lcom/android/updater/BaseFragment;->applyUpdate()V

    goto :goto_0
.end method
