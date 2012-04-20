.class final Lcom/lbe/security/service/privacy/f;
.super Landroid/os/CountDownTimer;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/privacy/j;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/privacy/j;)V
    .locals 2

    const-wide/16 v0, 0x4e20

    iput-object p1, p0, Lcom/lbe/security/service/privacy/f;->a:Lcom/lbe/security/service/privacy/j;

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/f;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->d(Lcom/lbe/security/service/privacy/j;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/f;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->d(Lcom/lbe/security/service/privacy/j;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/f;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->d(Lcom/lbe/security/service/privacy/j;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
