.class Lcom/android/updater/MainFragment$2;
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
    .line 318
    iput-object p1, p0, Lcom/android/updater/MainFragment$2;->this$0:Lcom/android/updater/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/updater/MainFragment$2;->this$0:Lcom/android/updater/MainFragment;

    iget-object v0, v0, Lcom/android/updater/MainFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/MainFragment$2;->this$0:Lcom/android/updater/MainFragment;

    invoke-static {v0, v1}, Lcom/android/updater/utils/SysUtils;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 321
    return-void
.end method
