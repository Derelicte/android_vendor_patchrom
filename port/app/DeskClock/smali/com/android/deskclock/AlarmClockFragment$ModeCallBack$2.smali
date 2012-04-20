.class Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 273
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->val$checkedIds:[J

    if-eqz v5, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->val$checkedIds:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v1, v0, v3

    .line 275
    .local v1, checkedId:J
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/app/Activity;

    move-result-object v5

    long-to-int v6, v1

    invoke-static {v5, v6}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v0           #arr$:[J
    .end local v1           #checkedId:J
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    iget-object v5, v5, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/android/deskclock/AlarmClockFragment;->access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 279
    return-void
.end method
