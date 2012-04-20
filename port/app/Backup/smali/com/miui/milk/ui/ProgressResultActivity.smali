.class public Lcom/miui/milk/ui/ProgressResultActivity;
.super Landroid/app/Activity;
.source "ProgressResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;
    }
.end annotation


# instance fields
.field private mNM:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    return-void
.end method

.method private showResultPage()V
    .locals 17

    .prologue
    .line 67
    const v2, 0x7f0a0020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 68
    .local v16, taskResult:Landroid/widget/LinearLayout;
    const v2, 0x7f0a0021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 69
    .local v12, resultImage:Landroid/widget/ImageView;
    const v2, 0x7f0a0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 70
    .local v14, resultTitle:Landroid/widget/TextView;
    const v2, 0x7f0a0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 71
    .local v13, resultSummary:Landroid/widget/TextView;
    const/4 v15, 0x0

    .line 72
    .local v15, task:Lcom/miui/milk/storage/ProgressTask;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TASK_ID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 73
    .local v7, intentTaskId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-lez v2, :cond_2

    .line 74
    new-instance v10, Lcom/miui/milk/storage/ProgressTrackerStore;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    .line 75
    .local v10, progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-virtual {v10, v7, v8}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v15

    .line 76
    if-eqz v15, :cond_1

    .line 79
    iget v2, v15, Lcom/miui/milk/storage/ProgressTask;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 80
    const v2, 0x7f020013

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    const v2, 0x7f020014

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 82
    const v2, 0x7f07006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, result:Ljava/lang/String;
    :goto_0
    iget v2, v15, Lcom/miui/milk/storage/ProgressTask;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070085

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    :goto_1
    iget-wide v2, v15, Lcom/miui/milk/storage/ProgressTask;->date:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-wide v2, v15, Lcom/miui/milk/storage/ProgressTask;->id:J

    invoke-virtual {v10, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskDetails(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 97
    .local v6, taskDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    new-instance v1, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;

    const v4, 0x7f03000f

    const v5, 0x1020016

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;-><init>(Lcom/miui/milk/ui/ProgressResultActivity;Landroid/content/Context;IILjava/util/List;)V

    .line 101
    .local v1, resultArrayAdapter:Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;
    const v2, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 102
    .local v9, listView:Landroid/widget/ListView;
    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    .end local v1           #resultArrayAdapter:Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;
    .end local v6           #taskDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    .end local v9           #listView:Landroid/widget/ListView;
    .end local v11           #result:Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 106
    .end local v10           #progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    :cond_2
    return-void

    .line 84
    .restart local v10       #progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    :cond_3
    const v2, 0x7f020011

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    const v2, 0x7f020012

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 86
    const v2, 0x7f07006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #result:Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_4
    iget v2, v15, Lcom/miui/milk/storage/ProgressTask;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070086

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressResultActivity;->setContentView(I)V

    .line 37
    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, buttonFinish:Landroid/widget/Button;
    new-instance v1, Lcom/miui/milk/ui/ProgressResultActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ProgressResultActivity$1;-><init>(Lcom/miui/milk/ui/ProgressResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    .line 47
    invoke-direct {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->showResultPage()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 54
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 55
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    return-void
.end method
