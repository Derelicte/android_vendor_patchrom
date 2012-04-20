.class public Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;,
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;,
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "configuration_state"

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "data_channel_state"

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "notification_channel_state"

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "settings_uri"

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "voicemail_access_uri"

    aput-object v2, v0, v1

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method private getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 207
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, sourcePackage:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->getOverallState(III)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    move-result-object v7

    .line 214
    .local v7, overallState:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;
    invoke-virtual {v7}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->getAction()Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    move-result-object v6

    .line 217
    .local v6, action:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    if-eq v6, v2, :cond_0

    .line 221
    const/4 v5, 0x0

    .line 222
    .local v5, actionUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v2, :cond_3

    .line 223
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 232
    :cond_2
    new-instance v8, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-virtual {v7}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallLogMessageId()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallDetailsMessageId()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->getMessageId()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;-><init>(Ljava/lang/String;IIILandroid/net/Uri;)V

    invoke-virtual {v7}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->getPriority()I

    move-result v2

    invoke-direct {v8, v0, v2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;-><init>(Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;I)V

    move-object v0, v8

    goto :goto_0

    .line 225
    :cond_3
    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v2, :cond_2

    .line 226
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 228
    if-nez v5, :cond_2

    goto :goto_0
.end method

.method private getOverallState(III)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 2
    .parameter "configurationState"
    .parameter "dataChannelState"
    .parameter "notificationChannelState"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 241
    if-nez p1, :cond_5

    .line 243
    if-nez p2, :cond_2

    .line 245
    if-nez p3, :cond_0

    .line 246
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 270
    :goto_0
    return-object v0

    .line 247
    :cond_0
    if-ne p3, v1, :cond_1

    .line 248
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 249
    :cond_1
    if-ne p3, v0, :cond_7

    .line 250
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 252
    :cond_2
    if-ne p2, v0, :cond_7

    .line 254
    if-nez p3, :cond_3

    .line 255
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 256
    :cond_3
    if-ne p3, v1, :cond_4

    .line 257
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 258
    :cond_4
    if-ne p3, v0, :cond_7

    .line 259
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 262
    :cond_5
    if-ne p1, v1, :cond_6

    .line 264
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 265
    :cond_6
    if-ne p1, v0, :cond_7

    .line 267
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    .line 270
    :cond_7
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0
.end method

.method private isVoicemailSourceActive(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private reorderMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, messageWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;>;"
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$1;-><init>(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, reorderMessages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .line 198
    .local v1, messageWrapper:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    #getter for: Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mMessage:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$100(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1           #messageWrapper:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getNumberActivityVoicemailSources(Landroid/database/Cursor;)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, count:I
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 174
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->isVoicemailSourceActive(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return v0
.end method

.method public getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;>;"
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    move-result-object v0

    .line 162
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0           #message:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->reorderMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
