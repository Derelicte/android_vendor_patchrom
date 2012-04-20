.class Lcom/miui/notes/gtask/remote/GTaskSyncService$1;
.super Ljava/lang/Object;
.source "GTaskSyncService.java"

# interfaces
.implements Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/gtask/remote/GTaskSyncService;->startSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/gtask/remote/GTaskSyncService;


# direct methods
.method constructor <init>(Lcom/miui/notes/gtask/remote/GTaskSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/notes/gtask/remote/GTaskSyncService$1;->this$0:Lcom/miui/notes/gtask/remote/GTaskSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->access$002(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    .line 36
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskSyncService$1;->this$0:Lcom/miui/notes/gtask/remote/GTaskSyncService;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->sendBroadcast(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskSyncService$1;->this$0:Lcom/miui/notes/gtask/remote/GTaskSyncService;

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->stopSelf()V

    .line 38
    return-void
.end method
