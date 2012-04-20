.class public Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ExpandableListFragment;
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

.field final synthetic this$0:Lcom/miui/milk/ui/ExpandableListFragment;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ExpandableListFragment;Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResourceId"
    .parameter "childResourceId"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 249
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 250
    iput p3, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mGroupResourceId:I

    .line 251
    iput p4, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mChildResourceId:I

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    .line 253
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 258
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 270
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 278
    if-nez p4, :cond_3

    .line 279
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mChildResourceId:I

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 284
    .local v9, view:Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 285
    .local v2, appInfo:Lcom/miui/backup/AppInfo;
    const/4 v5, 0x0

    .line 286
    .local v5, backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v10

    if-nez v10, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 288
    :cond_1
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v10, v10, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .line 289
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v10, v10, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    check-cast v5, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    .line 296
    .restart local v5       #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    :cond_2
    :goto_1
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 297
    .local v4, appTitle:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v11, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    const/high16 v13, 0x4334

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    .line 298
    .local v6, count:I
    iget-object v10, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_7

    .line 299
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_2
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 305
    .local v3, appSummary:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    const v11, 0x7f070093

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->localCount:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v5, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->cloudCount:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/miui/milk/ui/ExpandableListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, sumary:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v10, 0x7f0a0001

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 309
    .local v7, date:Landroid/widget/TextView;
    iget-object v10, v5, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->backupTime:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v10, 0x1020001

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 312
    .local v1, appCheck:Landroid/widget/CheckBox;
    iget-boolean v10, v2, Lcom/miui/backup/AppInfo;->checked:Z

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    return-object v9

    .line 281
    .end local v1           #appCheck:Landroid/widget/CheckBox;
    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v3           #appSummary:Landroid/widget/TextView;
    .end local v4           #appTitle:Landroid/widget/TextView;
    .end local v5           #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    .end local v6           #count:I
    .end local v7           #date:Landroid/widget/TextView;
    .end local v8           #sumary:Ljava/lang/String;
    .end local v9           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v9, p4

    .restart local v9       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 290
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    .restart local v5       #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    :cond_4
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    move/from16 v0, p1

    if-eq v0, v10, :cond_6

    :cond_5
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 292
    :cond_6
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v10, v10, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v2, Lcom/miui/backup/AppInfo;

    .line 293
    .restart local v2       #appInfo:Lcom/miui/backup/AppInfo;
    iget-object v10, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v10, v10, Lcom/miui/milk/ui/ExpandableListFragment;->mSimBackupItems:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    check-cast v5, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    .restart local v5       #backupItem:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    goto/16 :goto_1

    .line 301
    .restart local v4       #appTitle:Landroid/widget/TextView;
    .restart local v6       #count:I
    :cond_7
    iget-object v10, v2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 325
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 330
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    .line 337
    :goto_0
    return-object v0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 337
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x2

    .line 345
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
    .line 350
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
    .line 357
    move v3, p1

    .line 360
    .local v3, gPosition:I
    if-nez p3, :cond_3

    .line 361
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->mGroupResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 366
    .local v5, view:Landroid/view/View;
    :goto_0
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 367
    .local v4, title:Landroid/widget/TextView;
    const v6, 0x1020001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 369
    .local v2, checkAll:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 371
    :cond_1
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v6, v6, Lcom/miui/milk/ui/ExpandableListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 372
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    const v7, 0x7f07008a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/miui/milk/ui/ExpandableListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, accountText:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$100(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$100(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v7, v7, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 375
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .end local v1           #accountText:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v6, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;-><init>(Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;I)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-object v5

    .line 363
    .end local v2           #checkAll:Landroid/widget/CheckBox;
    .end local v4           #title:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    move-object v5, p3

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 377
    .restart local v0       #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .restart local v1       #accountText:Ljava/lang/String;
    .restart local v2       #checkAll:Landroid/widget/CheckBox;
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 379
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .end local v1           #accountText:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    if-eq p1, v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 381
    :cond_7
    const v6, 0x7f07008b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$200(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    #getter for: Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListFragment;->access$200(Lcom/miui/milk/ui/ExpandableListFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    iget-object v7, v7, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 383
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 385
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method
