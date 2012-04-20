.class public Lcom/miui/milk/ui/ProgressPageActivity;
.super Landroid/app/Activity;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;
    }
.end annotation


# static fields
.field private static sService:Lcom/miui/milk/service/CloudBackupService;


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field protected mCancelProgressDialog:Landroid/app/ProgressDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFinished:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentTaskId:J

.field private mIsBound:Z

.field private mProgressInfo:Landroid/widget/TextView;

.field private mProgressItemAdapter:Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;

.field private mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

.field private mProgressSummary:Landroid/widget/TextView;

.field private mProgressTitle:Landroid/widget/TextView;

.field private mStatus:I

.field private mTaskDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/storage/ProgressTaskDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskId:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 182
    new-instance v0, Lcom/miui/milk/ui/ProgressPageActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ProgressPageActivity$2;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    .line 370
    new-instance v0, Lcom/miui/milk/ui/ProgressPageActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ProgressPageActivity$3;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/ProgressPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    return v0
.end method

.method static synthetic access$100()Lcom/miui/milk/service/CloudBackupService;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/milk/ui/ProgressPageActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/ui/ProgressPageActivity;->queueNextRefresh(J)V

    return-void
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "TASK_ID"

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->finish()V

    goto :goto_0
.end method

.method private showProgress(Lcom/miui/milk/storage/ProgressTask;)V
    .locals 7
    .parameter "task"

    .prologue
    const/4 v6, 0x2

    .line 244
    iget-wide v3, p1, Lcom/miui/milk/storage/ProgressTask;->id:J

    iput-wide v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, progressAmount:I
    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->max:I

    if-lez v3, :cond_0

    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->current:I

    if-lez v3, :cond_0

    .line 248
    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->current:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p1, Lcom/miui/milk/storage/ProgressTask;->max:I

    div-int v1, v3, v4

    .line 251
    :cond_0
    const/16 v3, 0x64

    if-gt v1, v3, :cond_1

    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v3, v6, :cond_2

    .line 252
    :cond_1
    const/16 v1, 0x64

    .line 255
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/miui/milk/storage/ProgressTask;->description:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p1, Lcom/miui/milk/storage/ProgressTask;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v3, "% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 265
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskDetails(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 272
    if-eqz v0, :cond_5

    .line 273
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressItemAdapter:Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;

    invoke-virtual {v3}, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->notifyDataSetChanged()V

    .line 276
    return-void

    .line 266
    .end local v0           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    :cond_6
    iget v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v3, v6, :cond_4

    .line 267
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    const v4, 0x7f070074

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 196
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1}, Lcom/miui/milk/storage/ProgressTrackerStore;->getRunningTask()Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    .line 197
    .local v0, task:Lcom/miui/milk/storage/ProgressTask;
    if-nez v0, :cond_2

    .line 199
    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_7

    .line 201
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v5, :cond_0

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v9, :cond_0

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v8, :cond_1

    .line 206
    :cond_0
    iput-boolean v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    .line 210
    :cond_1
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v5, :cond_2

    .line 212
    invoke-static {v4}, Lcom/miui/milk/ui/CloudBackupFragment;->setNeedRefresh(Z)V

    .line 220
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 221
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->type:I

    iput v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    .line 223
    iget-boolean v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v5, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v9, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v8, :cond_4

    .line 227
    :cond_3
    iput-boolean v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    .line 229
    :cond_4
    iget-boolean v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    if-eqz v1, :cond_8

    .line 230
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    iput v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStatus:I

    .line 231
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->showProgress(Lcom/miui/milk/storage/ProgressTask;)V

    .line 241
    :cond_6
    return-void

    .line 214
    :cond_7
    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_8
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v4, :cond_9

    .line 234
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 235
    :cond_9
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v5, :cond_5

    .line 236
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    .line 398
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    .line 406
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStatus:I

    if-nez v0, :cond_1

    .line 157
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->cancelService()V

    .line 160
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressSummary:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    new-instance v1, Lcom/miui/milk/ui/ProgressPageActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ProgressPageActivity$1;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;

    const v3, 0x7f03000c

    const v4, 0x1020016

    iget-object v5, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressItemAdapter:Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;

    .line 110
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 111
    .local v6, progressList:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressItemAdapter:Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    new-instance v0, Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-direct {v0, p0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    .line 114
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TASK_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/ProgressPageActivity;->doUnbindService(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 142
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 133
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->switchToBackground()V

    .line 136
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/ProgressPageActivity;->doBindService(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 123
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->queueNextRefresh(J)V

    .line 124
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/miui/milk/ui/ProgressPageActivity;->sService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->switchToForeground()V

    .line 127
    :cond_0
    return-void
.end method
