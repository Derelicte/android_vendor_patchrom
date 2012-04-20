.class public Lcom/lbe/security/service/a/i;
.super Lcom/lbe/security/service/a/d;


# instance fields
.field private a:Lcom/lbe/security/bean/e;


# direct methods
.method public constructor <init>(Lcom/lbe/security/service/a/g;Lcom/lbe/security/bean/e;)V
    .locals 1

    invoke-virtual {p2}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lbe/security/service/a/d;-><init>(Lcom/lbe/security/service/a/g;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lbe/security/service/a/i;->a:Lcom/lbe/security/bean/e;

    return-void
.end method


# virtual methods
.method public final d()Lcom/lbe/security/bean/e;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/a/i;->a:Lcom/lbe/security/bean/e;

    return-object v0
.end method
