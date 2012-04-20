.class Lcom/android/updater/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/BaseFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/updater/BaseFragment$1;->this$0:Lcom/android/updater/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/updater/BaseFragment$1;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v0}, Lcom/android/updater/BaseFragment;->rebootRecovery()V

    .line 127
    return-void
.end method
