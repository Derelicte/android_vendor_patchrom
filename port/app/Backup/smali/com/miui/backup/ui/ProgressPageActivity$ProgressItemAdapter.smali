.class public Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/backup/CmdRunningInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/backup/CmdRunningInfo;>;"
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    .line 397
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    .line 398
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 399
    iput p3, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mResourceId:I

    .line 400
    iput-object p2, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    .line 401
    return-void
.end method

.method private getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "finishedSize"

    .prologue
    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getProgressDisplay(I)Ljava/lang/String;
    .locals 2
    .parameter "progress"

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 405
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 407
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/backup/CmdRunningInfo;

    .line 409
    .local v4, runningInfo:Lcom/miui/backup/CmdRunningInfo;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 410
    .local v5, titleView:Landroid/widget/TextView;
    iget-object v7, v4, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v7, 0x7f0a0016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 413
    .local v3, progressBar:Landroid/widget/ProgressBar;
    const v7, 0x7f0a0017

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 414
    .local v2, infoView:Landroid/widget/TextView;
    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 416
    .local v0, imageView:Landroid/widget/ImageView;
    const-string v1, ""

    .line 417
    .local v1, info:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x3070008

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 418
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v7, :pswitch_data_0

    .line 500
    :goto_0
    return-object v6

    .line 420
    :pswitch_0
    const v7, 0x7f070051

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 421
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 422
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    const v7, 0x7f02000e

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 427
    :pswitch_1
    const v7, 0x7f070045

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 428
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 429
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v7, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 434
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070046

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 442
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v7}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 446
    :pswitch_3
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 448
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 449
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    :pswitch_4
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v7}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 457
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 458
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 462
    :pswitch_5
    iget-boolean v7, v4, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    if-eqz v7, :cond_1

    .line 463
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f07004f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 470
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    const v7, 0x7f02000f

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 465
    :cond_1
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f070050

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 475
    :pswitch_6
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    if-nez v7, :cond_2

    .line 476
    const v7, 0x7f07004c

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 481
    :goto_3
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 482
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    const v7, 0x7f02000e

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 478
    :cond_2
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f07004b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v11}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 487
    :pswitch_7
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v7}, Lcom/miui/backup/ui/ProgressPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    if-nez v7, :cond_3

    .line 489
    const v7, 0x7f07004e

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 494
    :goto_4
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 495
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    const v7, 0x7f02000e

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 491
    :cond_3
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f07004d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v11}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 418
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
