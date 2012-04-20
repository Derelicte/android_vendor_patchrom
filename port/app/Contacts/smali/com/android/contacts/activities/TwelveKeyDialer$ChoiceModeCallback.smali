.class Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceModeCallback"
.end annotation


# instance fields
.field ConfirmDeleteCallLogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mDialpadButtonsVisibility:I

.field private mDigitsContainerVisibility:I

.field private mEditBeforeCallMenu:Landroid/view/MenuItem;

.field private mIpCallMenu:Landroid/view/MenuItem;

.field private mIpPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/activities/TwelveKeyDialer;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    .line 1423
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 1614
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;)V

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->ConfirmDeleteCallLogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1424
    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private addSelectedCallNumberToBlackList()V
    .locals 4

    .prologue
    .line 1569
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->checkSafeyForMultiItemsAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1573
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string v1, "numbers"

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1578
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private callNumberWithIp()V
    .locals 3

    .prologue
    .line 1528
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->checkSafeyForSingleItemAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 1533
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private checkSafeyForMultiItemsAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1591
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, numbers:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v1, :cond_1

    .line 1594
    :cond_0
    const/4 v1, 0x0

    .line 1596
    :cond_1
    return v1
.end method

.method private checkSafeyForSingleItemAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1582
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, numbers:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v1, :cond_1

    .line 1585
    :cond_0
    const/4 v1, 0x0

    .line 1587
    :cond_1
    return v1
.end method

.method private deleteSelectedCallLog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1600
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->checkSafeyForMultiItemsAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1604
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const v2, 0x7f0b0205

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->ConfirmDeleteCallLogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private editNumberBeforeCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1537
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->checkSafeyForSingleItemAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    iput v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mDigitsContainerVisibility:I

    .line 1542
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private sendSmsToSelectedCallNumber()V
    .locals 8

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->checkSafeyForMultiItemsAction()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v3

    .line 1551
    .local v3, numbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1552
    .local v0, formatedNumbers:Ljava/lang/StringBuilder;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #formatedNumbers:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1554
    .restart local v0       #formatedNumbers:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1555
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    .line 1556
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1558
    :cond_2
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1561
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1563
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v4, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1564
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private updateMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1458
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    .line 1459
    .local v0, checkedItemCount:I
    if-lez v0, :cond_0

    .line 1460
    if-ne v0, v7, :cond_2

    .line 1461
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpCallMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1463
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpCallMenu:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const v3, 0x7f0b0209

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpPrefix:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1467
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mEditBeforeCallMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1473
    :cond_0
    :goto_1
    return-void

    .line 1465
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpCallMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1469
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpCallMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1470
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mEditBeforeCallMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1500
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const v2, 0x7f0b0203

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1524
    :goto_0
    return v3

    .line 1505
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1510
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->deleteSelectedCallLog()V

    goto :goto_0

    .line 1507
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->sendSmsToSelectedCallNumber()V

    goto :goto_0

    .line 1513
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->addSelectedCallNumberToBlackList()V

    goto :goto_0

    .line 1516
    :sswitch_3
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->callNumberWithIp()V

    goto :goto_0

    .line 1519
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->editNumberBeforeCall()V

    goto :goto_0

    .line 1505
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07015c -> :sswitch_0
        0x7f070170 -> :sswitch_1
        0x7f070171 -> :sswitch_3
        0x7f070172 -> :sswitch_4
        0x7f070173 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .parameter "mode"
    .parameter "checked"

    .prologue
    .line 1494
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 1495
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->updateMenu()V

    .line 1496
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 1428
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 1429
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1430
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/calllog/DialerListAdapter;->setChoiceMode(Z)V

    .line 1431
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1400(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mDialpadButtonsVisibility:I

    .line 1433
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1500(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mDigitsContainerVisibility:I

    .line 1434
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    const v1, 0x7f070171

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpCallMenu:Landroid/view/MenuItem;

    .line 1438
    const v1, 0x7f070172

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mEditBeforeCallMenu:Landroid/view/MenuItem;

    .line 1439
    const v1, 0x7f07015c

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1442
    .local v0, delete:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/calllog/DialerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->isCallRecord(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1450
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoip_prefix"

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mIpPrefix:Ljava/lang/String;

    .line 1453
    return v4

    .line 1445
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1446
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1500(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1477
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1478
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/calllog/DialerListAdapter;->setChoiceMode(Z)V

    .line 1479
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1400(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mDialpadButtonsVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1500(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mDigitsContainerVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 1488
    invoke-super/range {p0 .. p5}, Landroid/widget/EditableListView$EditableModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1489
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->updateMenu()V

    .line 1490
    return-void
.end method
