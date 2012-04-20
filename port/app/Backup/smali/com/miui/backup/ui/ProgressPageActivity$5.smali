.class Lcom/miui/backup/ui/ProgressPageActivity$5;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->refreshOnFinished()V
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
    .line 312
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$5;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 315
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->clearAllNotifications()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$5;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 319
    return-void
.end method
