.class Lcom/miui/bugreport/BugReportActivity$2$1;
.super Ljava/lang/Object;
.source "BugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bugreport/BugReportActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/bugreport/BugReportActivity$2;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/BugReportActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/bugreport/BugReportActivity$2$1;->this$1:Lcom/miui/bugreport/BugReportActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity$2$1;->this$1:Lcom/miui/bugreport/BugReportActivity$2;

    iget-object v0, v0, Lcom/miui/bugreport/BugReportActivity$2;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mBugreportCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->access$400(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity$2$1;->this$1:Lcom/miui/bugreport/BugReportActivity$2;

    iget-object v0, v0, Lcom/miui/bugreport/BugReportActivity$2;->this$0:Lcom/miui/bugreport/BugReportActivity;

    #getter for: Lcom/miui/bugreport/BugReportActivity;->mBugreport:Ljava/io/File;
    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->access$300(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 217
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
