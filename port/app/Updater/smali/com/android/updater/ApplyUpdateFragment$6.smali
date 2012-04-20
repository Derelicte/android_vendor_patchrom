.class Lcom/android/updater/ApplyUpdateFragment$6;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ApplyUpdateFragment;
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
    .line 568
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$6;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$6;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$6;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v2, v2, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v0, v1, v2}, Lcom/android/updater/utils/SysUtils;->downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$6;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment$6;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v1, v1, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->downloadRequestedUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 574
    :cond_0
    return-void
.end method
