.class public Lcom/miui/bugreport/PreviewActivity;
.super Landroid/app/ListActivity;
.source "PreviewActivity.java"


# instance fields
.field private mAdapter:Lcom/miui/bugreport/UserFeedbackReportAdapter;

.field private mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bugreport/PreviewActivity;)Lcom/miui/bugreport/UserFeedbackReport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_feedback_report"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v1, p0, Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;

    .line 23
    new-instance v1, Lcom/miui/bugreport/UserFeedbackReportAdapter;

    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-direct {v1, p0, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;-><init>(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)V

    iput-object v1, p0, Lcom/miui/bugreport/PreviewActivity;->mAdapter:Lcom/miui/bugreport/UserFeedbackReportAdapter;

    .line 24
    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity;->mAdapter:Lcom/miui/bugreport/UserFeedbackReportAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 27
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 28
    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 29
    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 38
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 45
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 48
    :sswitch_1
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v2, v2, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const v2, 0x7f040028

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/miui/bugreport/PreviewActivity;->mFeedbackReport:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v2, v2, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 51
    const v2, 0x7f040029

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Lcom/miui/bugreport/PreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/bugreport/PreviewActivity$1;-><init>(Lcom/miui/bugreport/PreviewActivity;)V

    invoke-virtual {p0}, Lcom/miui/bugreport/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/bugreport/Utils;->asyncExecute(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f06000d -> :sswitch_1
    .end sparse-switch
.end method
