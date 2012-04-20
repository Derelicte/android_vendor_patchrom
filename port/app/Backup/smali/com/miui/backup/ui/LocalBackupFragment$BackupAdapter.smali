.class Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;
.super Landroid/widget/SimpleAdapter;
.source "LocalBackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 478
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 479
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 488
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 495
    .local v8, view:Landroid/view/View;
    iget-object v9, p0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;
    invoke-static {v9}, Lcom/miui/backup/ui/LocalBackupFragment;->access$200(Lcom/miui/backup/ui/LocalBackupFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 497
    .local v2, item:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 498
    .local v7, titleView:Landroid/widget/TextView;
    const v9, 0x1020010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 499
    .local v3, summaryView:Landroid/widget/TextView;
    const v9, 0x7f0a000d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 501
    .local v4, target:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;
    invoke-static {v9}, Lcom/miui/backup/ui/LocalBackupFragment;->access$000(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/widget/EditableListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    .line 502
    .local v0, isEditMode:Z
    if-eqz v0, :cond_0

    const/16 v9, 0x8

    :goto_0
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    const-string v9, "title"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 506
    .local v6, title:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/miui/backup/ui/LocalBackupFragment;->access$100(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 510
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    const-string v9, "failed"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 513
    .local v1, isFailed:Z
    const/4 v5, 0x0

    .line 514
    .local v5, textColorId:I
    if-nez v1, :cond_1

    .line 515
    const v5, 0x7f060001

    .line 519
    :goto_2
    iget-object v9, p0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    invoke-virtual {v9}, Lcom/miui/backup/ui/LocalBackupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    return-object v8

    .line 502
    .end local v1           #isFailed:Z
    .end local v5           #textColorId:I
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 517
    .restart local v1       #isFailed:Z
    .restart local v5       #textColorId:I
    .restart local v6       #title:Ljava/lang/String;
    :cond_1
    const v5, 0x7f060002

    goto :goto_2

    .line 507
    .end local v1           #isFailed:Z
    .end local v5           #textColorId:I
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method
