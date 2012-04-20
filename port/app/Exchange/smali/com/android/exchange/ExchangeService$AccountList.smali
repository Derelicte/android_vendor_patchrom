.class Lcom/android/exchange/ExchangeService$AccountList;
.super Ljava/util/ArrayList;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/emailcommon/provider/Account;)Z
    .locals 3
    .parameter "account"

    .prologue
    .line 543
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    .line 545
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/android/emailcommon/provider/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method public contains(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 551
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 552
    const/4 v2, 0x1

    .line 555
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getById(J)Lcom/android/emailcommon/provider/Account;
    .locals 4
    .parameter "id"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 560
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 564
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
