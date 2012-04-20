.class public Lcom/lbe/security/service/RemoteService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/lbe/security/service/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/RemoteService;->a:Lcom/lbe/security/service/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/RemoteService;->a:Lcom/lbe/security/service/e;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    sget-object v0, Lcom/lbe/security/service/RemoteService;->a:Lcom/lbe/security/service/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lbe/security/service/e;

    invoke-direct {v0}, Lcom/lbe/security/service/e;-><init>()V

    sput-object v0, Lcom/lbe/security/service/RemoteService;->a:Lcom/lbe/security/service/e;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
