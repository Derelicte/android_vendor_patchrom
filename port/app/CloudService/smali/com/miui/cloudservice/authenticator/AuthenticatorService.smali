.class public Lcom/miui/cloudservice/authenticator/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# static fields
.field private static author:Lcom/miui/cloudservice/authenticator/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getAuthenticator()Lcom/miui/cloudservice/authenticator/Authenticator;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/miui/cloudservice/authenticator/AuthenticatorService;->author:Lcom/miui/cloudservice/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/miui/cloudservice/authenticator/Authenticator;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/authenticator/Authenticator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/cloudservice/authenticator/AuthenticatorService;->author:Lcom/miui/cloudservice/authenticator/Authenticator;

    .line 23
    :cond_0
    sget-object v0, Lcom/miui/cloudservice/authenticator/AuthenticatorService;->author:Lcom/miui/cloudservice/authenticator/Authenticator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/AuthenticatorService;->getAuthenticator()Lcom/miui/cloudservice/authenticator/Authenticator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
