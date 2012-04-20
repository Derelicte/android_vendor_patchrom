.class Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "LocalBackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    .line 190
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/backup/ui/LocalBackupFragment;->access$000(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 198
    .local v0, checkedIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/backup/ui/LocalBackupFragment;->access$100(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;-><init>(Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x30b008b
        :pswitch_0
    .end packed-switch
.end method
