.class public final Lcom/android/emailcommon/utility/IntentUtilities;
.super Ljava/lang/Object;
.source "IntentUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "path"

    .prologue
    .line 43
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 44
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    const-string v1, "ui.email.android.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    return-object v0
.end method

.method public static createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->prepareRestartAppIntent(Landroid/content/Intent;)V

    .line 147
    return-object v0
.end method

.method public static createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "data"

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->prepareRestartAppIntent(Landroid/content/Intent;)V

    .line 157
    return-object v0
.end method

.method public static getAccountIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 91
    const-string v0, "ACCOUNT_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountUuidFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-object v2

    .line 116
    :cond_0
    const-string v3, "ACCOUNT_UUID"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, uuid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .end local v1           #uuid:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private static getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 5
    .parameter "intent"
    .parameter "paramName"

    .prologue
    .line 121
    const-wide/16 v0, -0x1

    .line 122
    .local v0, value:J
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-static {v2, p1, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    :cond_0
    return-wide v0
.end method

.method private static getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 2
    .parameter "uri"
    .parameter "paramName"
    .parameter "defaultValue"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 137
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 133
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMailboxIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 98
    const-string v0, "MAILBOX_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMessageIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 105
    const-string v0, "MESSAGE_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static prepareRestartAppIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 161
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const/high16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method public static setAccountId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "accountId"

    .prologue
    .line 54
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "ACCOUNT_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    :cond_0
    return-void
.end method

.method public static setAccountUuid(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 1
    .parameter "b"
    .parameter "mUuid"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    :cond_0
    const-string v0, "ACCOUNT_UUID"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    return-void
.end method

.method public static setMailboxId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "mailboxId"

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "MAILBOX_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    :cond_0
    return-void
.end method

.method public static setMessageId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "messageId"

    .prologue
    .line 72
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "MESSAGE_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    :cond_0
    return-void
.end method
