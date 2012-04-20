.class final Lcom/lbe/security/ui/a/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/a/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lbe/security/ui/a/c;

    invoke-static {v1, v0}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/d;Lcom/lbe/security/ui/a/c;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v0}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v0}, Lcom/lbe/security/ui/a/d;->b(Lcom/lbe/security/ui/a/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v1}, Lcom/lbe/security/ui/a/d;->b(Lcom/lbe/security/ui/a/d;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v1}, Lcom/lbe/security/ui/a/d;->b(Lcom/lbe/security/ui/a/d;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v2}, Lcom/lbe/security/ui/a/d;->b(Lcom/lbe/security/ui/a/d;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    div-int/lit8 v2, v0, 0xa

    invoke-static {v1, v2}, Lcom/lbe/security/ui/a/d;->a(Lcom/lbe/security/ui/a/d;I)V

    :cond_1
    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/ui/a/b;->a:Lcom/lbe/security/ui/a/d;

    invoke-static {v0}, Lcom/lbe/security/ui/a/d;->c(Lcom/lbe/security/ui/a/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/a/b;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lcom/lbe/security/ui/a/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/lbe/security/ui/a/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
