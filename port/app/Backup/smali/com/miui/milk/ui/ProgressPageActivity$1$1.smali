.class Lcom/miui/milk/ui/ProgressPageActivity$1$1;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ProgressPageActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

.field final synthetic val$progressDialogMessageId:I


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

    iput p2, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->val$progressDialogMessageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

    iget-object v1, v1, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const-string v2, ""

    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

    iget-object v3, v3, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    iget v4, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->val$progressDialogMessageId:I

    invoke-virtual {v3, v4}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 92
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$1$1;->this$1:Lcom/miui/milk/ui/ProgressPageActivity$1;

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 94
    invoke-static {}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->cancelService()V

    .line 97
    :cond_0
    return-void
.end method
