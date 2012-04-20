.class Lcom/miui/backup/BackupActivity$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/BackupActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/backup/BackupActivity$1;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$1;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity;->finish()V

    .line 75
    return-void
.end method
