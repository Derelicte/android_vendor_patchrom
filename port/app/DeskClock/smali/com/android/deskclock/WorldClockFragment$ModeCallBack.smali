.class Lcom/android/deskclock/WorldClockFragment$ModeCallBack;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "WorldClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WorldClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallBack"
.end annotation


# instance fields
.field private mEditableListView:Landroid/widget/EditableListView;

.field final synthetic this$0:Lcom/android/deskclock/WorldClockFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WorldClockFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    .line 174
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 175
    iput-object p3, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->mEditableListView:Landroid/widget/EditableListView;

    .line 176
    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/WorldClockFragment$ModeCallBack;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->mEditableListView:Landroid/widget/EditableListView;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 192
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/deskclock/WorldClockFragment;->access$400(Lcom/android/deskclock/WorldClockFragment;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 195
    .local v0, checkedIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 196
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 198
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/deskclock/WorldClockFragment;->access$600(Lcom/android/deskclock/WorldClockFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;

    invoke-direct {v3, p0, v0}, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;-><init>(Lcom/android/deskclock/WorldClockFragment$ModeCallBack;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$1;-><init>(Lcom/android/deskclock/WorldClockFragment$ModeCallBack;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 192
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
    .line 180
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/WorldClockFragment;->access$300(Lcom/android/deskclock/WorldClockFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/WorldClockFragment;->access$300(Lcom/android/deskclock/WorldClockFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 188
    return-void
.end method
