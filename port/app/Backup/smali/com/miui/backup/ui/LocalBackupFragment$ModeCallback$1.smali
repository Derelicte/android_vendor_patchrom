.class Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;
.super Ljava/lang/Object;
.source "LocalBackupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;->this$1:Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;

    iput-object p2, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 205
    new-instance v0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;->this$1:Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;

    iget-object v1, v1, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback$1;->val$checkedIds:[J

    invoke-direct {v0, v1, v2}, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;[J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method
