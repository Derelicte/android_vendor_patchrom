.class public Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BaseSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/BaseSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppExpandableListAdapter"
.end annotation


# instance fields
.field private final mChildResourceId:I

.field private final mGroupResourceId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/BaseSelectList;Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResourceId"
    .parameter "childResourceId"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 451
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 452
    iput p3, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    .line 453
    iput p4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    .line 454
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    .line 455
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 460
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 461
    if-nez p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 463
    :cond_0
    if-ne p1, v1, :cond_3

    .line 464
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 469
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 476
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 484
    if-nez p4, :cond_1

    .line 485
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 490
    .local v6, view:Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 491
    .local v2, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    if-nez v7, :cond_3

    .line 492
    if-nez p1, :cond_2

    .line 493
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .line 503
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_0
    :goto_1
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 504
    .local v4, appTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v8, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    const/high16 v10, 0x4334

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    .line 505
    .local v5, count:I
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_5

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_2
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 512
    .local v3, appSummary:Landroid/widget/TextView;
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const v7, 0x1020001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 515
    .local v1, appCheck:Landroid/widget/CheckBox;
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->checked:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->disabled:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->disabled:Z

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 519
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->disabled:Z

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 520
    iget-boolean v7, v2, Lcom/miui/backup/AppInfo;->disabled:Z

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 521
    return-object v6

    .line 487
    .end local v1           #appCheck:Landroid/widget/CheckBox;
    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v3           #appSummary:Landroid/widget/TextView;
    .end local v4           #appTitle:Landroid/widget/TextView;
    .end local v5           #count:I
    .end local v6           #view:Landroid/view/View;
    :cond_1
    move-object/from16 v6, p4

    .restart local v6       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 494
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_0

    .line 495
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 497
    :cond_3
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 498
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 499
    :cond_4
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v7}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 500
    iget-object v7, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v7, v7, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 508
    .restart local v4       #appTitle:Landroid/widget/TextView;
    .restart local v5       #count:I
    :cond_5
    iget-object v7, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 517
    .restart local v1       #appCheck:Landroid/widget/CheckBox;
    .restart local v3       #appSummary:Landroid/widget/TextView;
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 518
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 519
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 520
    :cond_9
    const/4 v7, 0x0

    goto :goto_6
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 526
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 537
    :goto_0
    return v0

    .line 529
    :cond_0
    if-ne p1, v1, :cond_3

    .line 530
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 535
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 537
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 542
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 543
    if-nez p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 553
    :goto_0
    return-object v0

    .line 545
    :cond_0
    if-ne p1, v1, :cond_3

    .line 546
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 549
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 551
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 553
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x2

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 566
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f070077

    const v9, 0x7f070076

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 572
    move v1, p1

    .line 575
    .local v1, gPosition:I
    if-nez p3, :cond_1

    .line 576
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 581
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 582
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 584
    .local v0, checkAll:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-nez v4, :cond_5

    .line 585
    if-nez p1, :cond_3

    .line 586
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 587
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 588
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 616
    :cond_0
    :goto_1
    new-instance v4, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;-><init>(Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    return-object v3

    .line 578
    .end local v0           #checkAll:Landroid/widget/CheckBox;
    .end local v2           #title:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 590
    .restart local v0       #checkAll:Landroid/widget/CheckBox;
    .restart local v2       #title:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 592
    :cond_3
    if-ne p1, v7, :cond_0

    .line 593
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 594
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 595
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 597
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 600
    :cond_5
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 601
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 602
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 603
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 605
    :cond_6
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 607
    :cond_7
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 608
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 609
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 610
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 612
    :cond_8
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 634
    const/4 v0, 0x1

    return v0
.end method
