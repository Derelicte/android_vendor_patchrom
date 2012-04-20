.class Lcom/miui/notes/gtask/remote/GTaskASyncTask$1;
.super Ljava/lang/Object;
.source "GTaskASyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/gtask/remote/GTaskASyncTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/gtask/remote/GTaskASyncTask;


# direct methods
.method constructor <init>(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask$1;->this$0:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask$1;->this$0:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    #getter for: Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mOnCompleteListener:Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;
    invoke-static {v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->access$000(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;->onComplete()V

    .line 103
    return-void
.end method
