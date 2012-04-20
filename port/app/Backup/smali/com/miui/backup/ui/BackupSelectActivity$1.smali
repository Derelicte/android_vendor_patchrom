.class Lcom/miui/backup/ui/BackupSelectActivity$1;
.super Ljava/lang/Object;
.source "BackupSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BackupSelectActivity;->startExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/BackupSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BackupSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/backup/ui/BackupSelectActivity$1;->this$0:Lcom/miui/backup/ui/BackupSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/backup/ui/BackupSelectActivity$1;->this$0:Lcom/miui/backup/ui/BackupSelectActivity;

    #calls: Lcom/miui/backup/ui/BaseSelectList;->startExecution()V
    invoke-static {v0}, Lcom/miui/backup/ui/BackupSelectActivity;->access$001(Lcom/miui/backup/ui/BackupSelectActivity;)V

    .line 155
    return-void
.end method
