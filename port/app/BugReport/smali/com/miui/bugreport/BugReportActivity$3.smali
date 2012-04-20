.class Lcom/miui/bugreport/BugReportActivity$3;
.super Ljava/lang/Object;
.source "BugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bugreport/BugReportActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bugreport/BugReportActivity;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/BugReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mFeedbackReportBuilder:Lcom/miui/bugreport/UserFeedbackReportBuilder;
    invoke-static {v1}, Lcom/miui/bugreport/BugReportActivity;->access$500(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReportBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;
    invoke-static {v3}, Lcom/miui/bugreport/BugReportActivity;->access$100(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/bugreport/UserFeedbackReportBuilder;->getReportIntent(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    invoke-virtual {v1, v0}, Lcom/miui/bugreport/BugReportActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity$3;->this$0:Lcom/miui/bugreport/BugReportActivity;

    invoke-virtual {v1}, Lcom/miui/bugreport/BugReportActivity;->finish()V

    .line 307
    return-void

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method
