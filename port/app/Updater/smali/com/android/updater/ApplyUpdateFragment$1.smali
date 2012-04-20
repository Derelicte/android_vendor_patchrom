.class Lcom/android/updater/ApplyUpdateFragment$1;
.super Landroid/os/Handler;
.source "ApplyUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ApplyUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_0

    .line 135
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v9, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 104
    :try_start_0
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 133
    :cond_1
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v7

    .line 107
    .local v7, updateState:Lcom/android/updater/UpdateState;
    iget-wide v1, v7, Lcom/android/updater/UpdateState;->mProgressScopeDuration:J

    .line 108
    .local v1, duration:J
    const-wide/16 v3, 0x0

    .line 109
    .local v3, elapsed:J
    const-wide/16 v10, 0x0

    cmp-long v8, v1, v10

    if-lez v8, :cond_3

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v7, Lcom/android/updater/UpdateState;->mProgressScopeTime:J

    sub-long v3, v10, v12

    .line 111
    cmp-long v8, v3, v1

    if-gez v8, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x3e8

    const-wide/16 v11, 0x1f4

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :goto_2
    const-wide/high16 v10, 0x3ff0

    long-to-double v12, v3

    mul-double/2addr v10, v12

    long-to-double v12, v1

    div-double/2addr v10, v12

    double-to-float v5, v10

    .line 117
    .local v5, fraction:F
    const/high16 v8, 0x3f80

    cmpl-float v8, v5, v8

    if-lez v8, :cond_2

    const/high16 v5, 0x3f80

    .line 118
    :cond_2
    iget v8, v7, Lcom/android/updater/UpdateState;->mProgress:F

    cmpg-float v8, v5, v8

    if-ltz v8, :cond_1

    .line 121
    iput v5, v7, Lcom/android/updater/UpdateState;->mProgress:F

    .line 123
    .end local v5           #fraction:F
    :cond_3
    iget v8, v7, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    iget v10, v7, Lcom/android/updater/UpdateState;->mProgress:F

    iget v11, v7, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v8, v10

    float-to-int v6, v8

    .line 124
    .local v6, progress:I
    invoke-static {v6}, Lcom/android/updater/InstallUpdateService;->notifyProgress(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$100(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    const v11, 0x7f050008

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 133
    .end local v1           #duration:J
    .end local v3           #elapsed:J
    .end local v6           #progress:I
    .end local v7           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 114
    .restart local v1       #duration:J
    .restart local v3       #elapsed:J
    .restart local v7       #updateState:Lcom/android/updater/UpdateState;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 130
    .end local v1           #duration:J
    .end local v3           #elapsed:J
    .end local v7           #updateState:Lcom/android/updater/UpdateState;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/updater/ApplyUpdateFragment$1;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #calls: Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V
    invoke-static {v8}, Lcom/android/updater/ApplyUpdateFragment;->access$300(Lcom/android/updater/ApplyUpdateFragment;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
