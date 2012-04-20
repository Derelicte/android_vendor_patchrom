.class Lcom/miui/bugreport/BugReportActivity$1;
.super Ljava/lang/Object;
.source "BugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bugreport/BugReportActivity;->getSystemLog()V
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
    .line 162
    iput-object p1, p0, Lcom/miui/bugreport/BugReportActivity$1;->this$0:Lcom/miui/bugreport/BugReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity$1;->this$0:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {}, Lcom/miui/bugreport/Utils;->dumpSystemData()Ljava/io/File;

    move-result-object v1

    #setter for: Lcom/miui/bugreport/BugReportActivity;->mSystemLog:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/miui/bugreport/BugReportActivity;->access$002(Lcom/miui/bugreport/BugReportActivity;Ljava/io/File;)Ljava/io/File;

    .line 166
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity$1;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;
    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->access$100(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity$1;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mSystemLog:Ljava/io/File;
    invoke-static {v1}, Lcom/miui/bugreport/BugReportActivity;->access$000(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    .line 167
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity$1;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mSystemLogCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->access$200(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/miui/bugreport/BugReportActivity$1$1;

    invoke-direct {v1, p0}, Lcom/miui/bugreport/BugReportActivity$1$1;-><init>(Lcom/miui/bugreport/BugReportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
