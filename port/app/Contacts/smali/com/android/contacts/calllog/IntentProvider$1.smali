.class final Lcom/android/contacts/calllog/IntentProvider$1;
.super Lcom/android/contacts/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dataId:J

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$dataId:J

    iput-object p3, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    iget-wide v3, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$dataId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "sip"

    iget-object v4, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    return-object v0

    .line 56
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 60
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 61
    .local v1, mimeType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const-string v1, "vnd.android.cursor.item/sip_address"

    .line 64
    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/contacts/calllog/IntentProvider$1;->val$dataId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 65
    .restart local v2       #uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
