.class final Lcom/lbe/security/service/core/internal/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/internal/h;


# direct methods
.method synthetic constructor <init>(Lcom/lbe/security/service/core/internal/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lbe/security/service/core/internal/b;-><init>(Lcom/lbe/security/service/core/internal/h;B)V

    return-void
.end method

.method private constructor <init>(Lcom/lbe/security/service/core/internal/h;B)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/b;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/b;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/h;->c()Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/lbe/security/service/core/internal/b;->removeMessages(I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/lbe/security/service/core/internal/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/b;->a:Lcom/lbe/security/service/core/internal/h;

    iget-object v0, v0, Lcom/lbe/security/service/core/internal/h;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/internal/b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
