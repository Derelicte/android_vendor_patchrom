.class Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$1;
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


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 285
    return-void
.end method
