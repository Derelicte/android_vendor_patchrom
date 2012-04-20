.class Lcom/miui/backup/ui/ProgressPageActivity$2;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const/4 v1, 0x2

    #calls: Lcom/miui/backup/ui/ProgressPageActivity;->createDialog(I)V
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;I)V

    .line 154
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$100(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$100(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mProgressBg:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$200(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->cancelTask()V

    .line 160
    :cond_0
    return-void
.end method
