.class Lcom/google/android/backup/BackupTransportService$4;
.super Ljava/lang/Object;
.source "BackupTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/backup/BackupTransportService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/backup/BackupTransportService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BackupTransportService;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/google/android/backup/BackupTransportService$4;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService$4;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/google/android/backup/BackupTransportService;->access$1000(Lcom/google/android/backup/BackupTransportService;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$4;->this$0:Lcom/google/android/backup/BackupTransportService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 753
    return-void
.end method
