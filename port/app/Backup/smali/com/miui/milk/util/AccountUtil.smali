.class public Lcom/miui/milk/util/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/util/AccountUtil$AccountInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "paramContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 37
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 38
    .local v0, localAccountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.miui.auth"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 39
    .local v8, arrayOfAccount:[Landroid/accounts/Account;
    array-length v1, v8

    if-lez v1, :cond_0

    .line 40
    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 42
    :cond_0
    const-string v1, "com.miui.auth"

    const-string v2, "miuiToken"

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    move-object v4, v3

    move-object v6, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 44
    return-void
.end method

.method public static getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .locals 4
    .parameter "paramContext"

    .prologue
    .line 16
    new-instance v1, Lcom/miui/milk/util/AccountUtil$AccountInfo;

    invoke-direct {v1}, Lcom/miui/milk/util/AccountUtil$AccountInfo;-><init>()V

    .line 17
    .local v1, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 18
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 20
    .local v2, localAccountManager:Landroid/accounts/AccountManager;
    const-string v3, "nickname"

    invoke-virtual {v2, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/milk/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    .line 21
    const-string v3, "token"

    invoke-virtual {v2, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    .line 23
    .end local v2           #localAccountManager:Landroid/accounts/AccountManager;
    :cond_0
    return-object v1
.end method

.method public static getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 28
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.miui.auth"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 29
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 30
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 33
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
