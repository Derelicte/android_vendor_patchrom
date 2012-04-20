.class Lcom/android/updater/BaseFragment$3$1;
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
    .line 269
    iput-object p1, p0, Lcom/android/updater/BaseFragment$3$1;->this$1:Lcom/android/updater/BaseFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/updater/BaseFragment$3$1;->this$1:Lcom/android/updater/BaseFragment$3;

    iget-object v0, v0, Lcom/android/updater/BaseFragment$3;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v0}, Lcom/android/updater/BaseFragment;->applyUpdate()V

    .line 272
    return-void
.end method
