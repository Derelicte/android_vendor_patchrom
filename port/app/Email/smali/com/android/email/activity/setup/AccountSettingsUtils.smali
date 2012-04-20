.class public Lcom/android/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4
    .parameter "context"
    .parameter "passwordField"

    .prologue
    const/16 v3, 0x20

    .line 306
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 307
    .local v1, password:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 308
    .local v0, length:I
    if-lez v0, :cond_1

    .line 309
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 310
    :cond_0
    const v2, 0x7f0800ba

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1
    return-void
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 59
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 60
    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 56
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 2
    .parameter "context"
    .parameter "domain"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 93
    .local v0, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v0, :cond_0

    .line 94
    const v1, 0x7f05000a

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 96
    :cond_0
    if-nez v0, :cond_1

    .line 97
    const v1, 0x7f050009

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 99
    :cond_1
    return-object v0
.end method

.method static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 10
    .parameter "context"
    .parameter "domain"
    .parameter "resourceId"

    .prologue
    const/4 v9, 0x2

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 114
    .local v4, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    move-object v2, v1

    .line 115
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v2, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, xmlEventType:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 116
    if-ne v5, v9, :cond_2

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const-string v6, "domain"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 120
    .local v3, providerDomain:Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->matchProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 121
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :try_start_2
    const-string v6, "id"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 123
    const-string v6, "label"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 125
    const-string v6, "note"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v2, v1

    .line 131
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 128
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v0, e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :goto_2
    :try_start_3
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "providers line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Domain contains multiple globals"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .end local v3           #providerDomain:Ljava/lang/String;
    .end local v4           #xml:Landroid/content/res/XmlResourceParser;
    .end local v5           #xmlEventType:I
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Email"

    const-string v7, "Error while trying to load provider settings."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 132
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v4       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v5       #xmlEventType:I
    :cond_2
    if-ne v5, v9, :cond_3

    :try_start_4
    const-string v6, "incoming"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 135
    const-string v6, "uri"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 136
    const-string v6, "username"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :cond_3
    if-ne v5, v9, :cond_4

    const-string v6, "outgoing"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 141
    const-string v6, "uri"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 142
    const-string v6, "username"

    invoke-static {p0, v4, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-string v6, "provider"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    goto :goto_3

    .line 127
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v3       #providerDomain:Ljava/lang/String;
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_5
    move-object v1, v2

    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto/16 :goto_1
.end method

.method public static getAccountContentValues(Lcom/android/emailcommon/provider/Account;)Landroid/content/ContentValues;
    .locals 3
    .parameter "account"

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    const-string v1, "displayName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "senderName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "xml"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 206
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "server"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    const/16 v6, 0x2e

    const/4 v2, 0x0

    .line 273
    const/4 v4, 0x0

    .line 274
    .local v4, keepFirstChar:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 275
    .local v0, firstDotIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 277
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, firstWord:Ljava/lang/String;
    const-string v5, "imap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 280
    .local v2, isImapOrPop:Z
    :cond_1
    const-string v5, "mail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 282
    .local v3, isMail:Z
    if-eqz p1, :cond_3

    .line 284
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    .line 299
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    .end local p0
    .end local p1
    :cond_2
    :goto_0
    return-object p0

    .line 290
    .restart local v1       #firstWord:Ljava/lang/String;
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    .restart local p0
    .restart local p1
    :cond_3
    if-eqz v2, :cond_5

    .line 291
    add-int/lit8 v4, v0, 0x1

    .line 299
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    .end local p1
    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    .restart local v1       #firstWord:Ljava/lang/String;
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    .restart local p1
    :cond_5
    if-eqz v3, :cond_4

    goto :goto_0

    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_6
    move-object p1, p2

    .line 299
    goto :goto_1
.end method

.method static matchProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "testDomain"
    .parameter "providerDomain"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 165
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, testParts:[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, providerParts:[Ljava/lang/String;
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v5

    .line 170
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 171
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, testPart:Ljava/lang/String;
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, providerPart:Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v1           #providerPart:Ljava/lang/String;
    .end local v3           #testPart:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "testPart"
    .parameter "providerPart"

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 183
    .local v2, providerLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v4

    .line 186
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 188
    .local v3, testChar:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 189
    .local v1, providerChar:C
    if-eq v3, v1, :cond_2

    const/16 v5, 0x3f

    if-ne v1, v5, :cond_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v1           #providerChar:C
    .end local v3           #testChar:C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
