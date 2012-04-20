.class final Lcom/lbe/security/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/LBEApplication;


# direct methods
.method constructor <init>(Lcom/lbe/security/LBEApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/b;->a:Lcom/lbe/security/LBEApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method
