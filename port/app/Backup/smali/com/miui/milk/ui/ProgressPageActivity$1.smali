.class Lcom/miui/milk/ui/ProgressPageActivity$1;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ProgressPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, alertDialogMessageId:I
    const/4 v2, 0x0

    .line 75
    .local v2, tempProgressDialogMessageId:I
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #getter for: Lcom/miui/milk/ui/ProgressPageActivity;->mType:I
    invoke-static {v3}, Lcom/miui/milk/ui/ProgressPageActivity;->access$000(Lcom/miui/milk/ui/ProgressPageActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 76
    const v0, 0x7f07005b

    .line 77
    const v2, 0x7f07005d

    .line 82
    :cond_0
    :goto_0
    move v1, v2

    .line 84
    .local v1, progressDialogMessageId:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000d

    new-instance v5, Lcom/miui/milk/ui/ProgressPageActivity$1$1;

    invoke-direct {v5, p0, v1}, Lcom/miui/milk/ui/ProgressPageActivity$1$1;-><init>(Lcom/miui/milk/ui/ProgressPageActivity$1;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 102
    return-void

    .line 78
    .end local v1           #progressDialogMessageId:I
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity$1;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #getter for: Lcom/miui/milk/ui/ProgressPageActivity;->mType:I
    invoke-static {v3}, Lcom/miui/milk/ui/ProgressPageActivity;->access$000(Lcom/miui/milk/ui/ProgressPageActivity;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 79
    const v0, 0x7f07005c

    .line 80
    const v2, 0x7f07005e

    goto :goto_0
.end method
