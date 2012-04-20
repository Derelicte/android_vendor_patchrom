.class final Lcom/android/contacts/calllog/IntentProvider$3;
.super Lcom/android/contacts/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;IIJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    iput p2, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$position:I

    iput p3, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    iput-wide p4, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$id:J

    invoke-direct {p0}, Lcom/android/contacts/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 116
    iget-object v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, cursor:Landroid/database/Cursor;
    iget v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$position:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 118
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const/4 v3, 0x0

    .line 145
    :goto_0
    return-object v3

    .line 122
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v3, intent:Landroid/content/Intent;
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, voicemailUri:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 126
    const-string v5, "EXTRA_VOICEMAIL_URI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    :cond_1
    const-string v5, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 133
    iget v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    new-array v1, v5, [J

    .line 135
    .local v1, ids:[J
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget v5, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$groupSize:I

    if-ge v2, v5, :cond_2

    .line 136
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :cond_2
    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0

    .line 142
    .end local v1           #ids:[J
    .end local v2           #index:I
    :cond_3
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/contacts/calllog/IntentProvider$3;->val$id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
