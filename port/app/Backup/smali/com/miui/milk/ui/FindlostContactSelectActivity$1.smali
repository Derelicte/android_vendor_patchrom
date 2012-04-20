.class Lcom/miui/milk/ui/FindlostContactSelectActivity$1;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    new-instance v1, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {v1, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$002(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    .line 210
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
