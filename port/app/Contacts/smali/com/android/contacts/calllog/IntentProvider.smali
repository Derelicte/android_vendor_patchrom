.class public abstract Lcom/android/contacts/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;
    .locals 6
    .parameter "adapter"
    .parameter "position"
    .parameter "id"
    .parameter "groupSize"

    .prologue
    .line 113
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$3;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/calllog/IntentProvider$3;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;IIJ)V

    return-object v0
.end method

.method public static getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;
    .locals 7
    .parameter "callType"
    .parameter "number"
    .parameter "voicemailUri"
    .parameter "voicemailRowId"

    .prologue
    .line 93
    const-wide/16 v5, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/calllog/IntentProvider;->getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/contacts/calllog/IntentProvider;
    .locals 1
    .parameter "callType"
    .parameter "number"
    .parameter "voicemailUri"
    .parameter "voicemailRowId"
    .parameter "dataId"

    .prologue
    .line 99
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 100
    invoke-static {p3, p4, p2}, Lcom/android/contacts/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-static {p1, p5, p6}, Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;
    .locals 1
    .parameter "rowId"
    .parameter "voicemailUri"

    .prologue
    .line 75
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/calllog/IntentProvider$2;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;
    .locals 1
    .parameter "number"
    .parameter "dataId"

    .prologue
    .line 44
    new-instance v0, Lcom/android/contacts/calllog/IntentProvider$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/contacts/calllog/IntentProvider$1;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
