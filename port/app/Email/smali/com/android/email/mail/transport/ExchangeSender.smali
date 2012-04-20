.class public Lcom/android/email/mail/transport/ExchangeSender;
.super Lcom/android/email/mail/Sender;
.source "ExchangeSender.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "context"
    .parameter "account"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    .line 39
    return-void
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Sender;
    .locals 1
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/android/email/mail/transport/ExchangeSender;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/transport/ExchangeSender;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public sendMessage(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 51
    return-void
.end method
