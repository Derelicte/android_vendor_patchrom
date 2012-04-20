.class Lcom/android/updater/ApplyUpdateFragment$7$2;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ApplyUpdateFragment$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/updater/ApplyUpdateFragment$7;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$7$2;->this$1:Lcom/android/updater/ApplyUpdateFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment$7$2;->this$1:Lcom/android/updater/ApplyUpdateFragment$7;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #calls: Lcom/android/updater/ApplyUpdateFragment;->copyToClipboard()V
    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->access$1300(Lcom/android/updater/ApplyUpdateFragment;)V

    .line 677
    return-void
.end method
