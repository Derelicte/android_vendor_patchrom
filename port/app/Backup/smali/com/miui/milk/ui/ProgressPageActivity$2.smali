.class Lcom/miui/milk/ui/ProgressPageActivity$2;
.super Landroid/os/Handler;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #calls: Lcom/miui/milk/ui/ProgressPageActivity;->updateProgressBar()V
    invoke-static {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->access$200(Lcom/miui/milk/ui/ProgressPageActivity;)V

    .line 188
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const-wide/16 v1, 0x1f4

    #calls: Lcom/miui/milk/ui/ProgressPageActivity;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->access$300(Lcom/miui/milk/ui/ProgressPageActivity;J)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
