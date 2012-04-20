.class Lcom/android/updater/BaseFragment$4;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/BaseFragment;->downloadRequestedUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/BaseFragment;

.field final synthetic val$ui:Lcom/android/updater/customTypes/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/android/updater/BaseFragment;Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    iput-object p2, p0, Lcom/android/updater/BaseFragment$4;->val$ui:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/updater/BaseFragment$4;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v1, p0, Lcom/android/updater/BaseFragment$4;->val$ui:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/android/updater/BaseFragment;->doDownloadUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 317
    return-void
.end method
