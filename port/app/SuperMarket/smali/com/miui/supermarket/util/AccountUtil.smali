.class public Lcom/miui/supermarket/util/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

.field private static mCareActionTrails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsCommentsObsolete:Z

.field private static mUnboundErrorCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

.field private static mUserId:Ljava/lang/String;

.field private static mUserInfo:Lcom/miui/supermarket/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "AccountUtil"

    sput-object v0, Lcom/miui/supermarket/util/AccountUtil;->LOGTAG:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/miui/supermarket/util/AccountUtil;->mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    .line 20
    sput-object v1, Lcom/miui/supermarket/util/AccountUtil;->mUserInfo:Lcom/miui/supermarket/UserInfo;

    .line 21
    sput-object v1, Lcom/miui/supermarket/util/AccountUtil;->mUserId:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    sput-object v0, Lcom/miui/supermarket/util/AccountUtil;->mUnboundErrorCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/supermarket/util/AccountUtil;->mIsCommentsObsolete:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/AccountUtil;->mCareActionTrails:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static getAccountInfoImpl(Landroid/content/Context;)Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
    .locals 6
    .parameter "paramContext"

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    invoke-direct {v0}, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;-><init>()V

    .line 98
    .local v0, accountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 99
    .local v2, localAccountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.miui.auth"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 100
    .local v1, arrayOfAccount:[Landroid/accounts/Account;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 101
    aget-object v3, v1, v5

    const-string v4, "nickname"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    .line 102
    aget-object v3, v1, v5

    const-string v4, "token"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    .line 103
    sget-object v3, Lcom/miui/supermarket/util/AccountUtil;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nickname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v3, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .end local v0           #accountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
    :goto_0
    return-object v0

    .restart local v0       #accountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/miui/supermarket/util/AccountUtil;->loadAccount(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lcom/miui/supermarket/util/AccountUtil;->mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/supermarket/util/AccountUtil;->mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    iget-object v0, v0, Lcom/miui/supermarket/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAccount(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    sget-object v0, Lcom/miui/supermarket/util/AccountUtil;->mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/miui/supermarket/util/AccountUtil;->getAccountInfoImpl(Landroid/content/Context;)Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/supermarket/util/AccountUtil;->mAccountInfo:Lcom/miui/supermarket/util/AccountUtil$AccountInfo;

    .line 76
    :cond_0
    return-void
.end method
