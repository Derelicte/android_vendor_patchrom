.class Lcom/miui/backup/ui/ProgressPageActivity$4;
.super Landroid/os/Handler;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/ProgressPageActivity;
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
    .line 235
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$4;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$4;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #calls: Lcom/miui/backup/ui/ProgressPageActivity;->refreshNow()V
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$400(Lcom/miui/backup/ui/ProgressPageActivity;)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
