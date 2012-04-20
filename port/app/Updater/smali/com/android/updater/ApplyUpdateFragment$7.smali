.class Lcom/android/updater/ApplyUpdateFragment$7;
.super Ljava/lang/Object;
.source "ApplyUpdateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V
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
    .line 658
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x8

    .line 660
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 661
    .local v0, updateState:Lcom/android/updater/UpdateState;
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-virtual {v2}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 662
    .local v1, view:Landroid/view/View;
    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$700(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$800(Lcom/android/updater/ApplyUpdateFragment;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 665
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$900(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$1000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 668
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$1000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$7$1;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$7$1;-><init>(Lcom/android/updater/ApplyUpdateFragment$7;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$1200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 674
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment$7;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/updater/ApplyUpdateFragment;->access$1200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$7$2;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$7$2;-><init>(Lcom/android/updater/ApplyUpdateFragment$7;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    return-void
.end method
