.class Lcom/android/updater/MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/MainFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/MainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/updater/MainFragment$3;->this$0:Lcom/android/updater/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/updater/MainFragment$3;->this$0:Lcom/android/updater/MainFragment;

    iget-object v1, v1, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "current_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Lcom/android/updater/MainFragment$3;->this$0:Lcom/android/updater/MainFragment;

    invoke-virtual {v1, v0}, Lcom/android/updater/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method
