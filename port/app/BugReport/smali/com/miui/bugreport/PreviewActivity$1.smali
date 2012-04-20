.class Lcom/miui/bugreport/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bugreport/PreviewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bugreport/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/PreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/miui/bugreport/UserFeedbackReportBuilder;

    invoke-direct {v0}, Lcom/miui/bugreport/UserFeedbackReportBuilder;-><init>()V

    .line 60
    .local v0, builder:Lcom/miui/bugreport/UserFeedbackReportBuilder;
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    iget-object v3, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    #getter for: Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;
    invoke-static {v3}, Lcom/miui/bugreport/PreviewActivity;->access$000(Lcom/miui/bugreport/PreviewActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/bugreport/UserFeedbackReportBuilder;->getReportIntent(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    invoke-virtual {v2, v1}, Lcom/miui/bugreport/PreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #builder:Lcom/miui/bugreport/UserFeedbackReportBuilder;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/miui/bugreport/PreviewActivity;->setResult(I)V

    .line 66
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity$1;->this$0:Lcom/miui/bugreport/PreviewActivity;

    invoke-virtual {v2}, Lcom/miui/bugreport/PreviewActivity;->finish()V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method
