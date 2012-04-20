.class Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    .line 241
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 242
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 262
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment;->access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 263
    .local v0, checkedIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 266
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;

    invoke-direct {v3, p0, v0}, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x30b008b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$102(Z)Z

    .line 247
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$102(Z)Z

    .line 254
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 256
    return-void
.end method
