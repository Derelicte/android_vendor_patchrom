.class Lcom/android/updater/MainFragment$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/MainFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/MainFragment;

.field final synthetic val$slidingButtonForBranch:Lmiui/widget/SlidingButton;

.field final synthetic val$slidingButtonForWifi:Lmiui/widget/SlidingButton;


# direct methods
.method constructor <init>(Lcom/android/updater/MainFragment;Lmiui/widget/SlidingButton;Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/updater/MainFragment$1;->this$0:Lcom/android/updater/MainFragment;

    iput-object p2, p0, Lcom/android/updater/MainFragment$1;->val$slidingButtonForWifi:Lmiui/widget/SlidingButton;

    iput-object p3, p0, Lcom/android/updater/MainFragment$1;->val$slidingButtonForBranch:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/updater/MainFragment$1;->this$0:Lcom/android/updater/MainFragment;

    iget-object v0, v0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/MainFragment$1;->val$slidingButtonForWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/updater/utils/SysUtils;->setCheckUpdateOnlyWifiAvailable(Landroid/content/Context;Z)V

    .line 208
    iget-object v0, p0, Lcom/android/updater/MainFragment$1;->this$0:Lcom/android/updater/MainFragment;

    iget-object v0, v0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/MainFragment$1;->val$slidingButtonForBranch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/updater/utils/SysUtils;->setUpdateStableVersionOnly(Landroid/content/Context;Z)V

    .line 209
    return-void
.end method
