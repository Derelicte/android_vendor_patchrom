.class Lcom/miui/backup/ui/ProgressPageActivity$3;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$3;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 196
    iget-object v5, p0, Lcom/miui/backup/ui/ProgressPageActivity$3;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Lcom/miui/backup/ui/ProgressPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 197
    .local v3, nm:Landroid/app/NotificationManager;
    sget-object v0, Lcom/miui/backup/BackupRestoreTask;->ALL_NOTIFY_IDS:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 198
    .local v4, notifyId:I
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v4           #notifyId:I
    :cond_0
    iget-object v5, p0, Lcom/miui/backup/ui/ProgressPageActivity$3;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v5}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 201
    return-void
.end method
