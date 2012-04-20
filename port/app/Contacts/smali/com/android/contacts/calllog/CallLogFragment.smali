.class public Lcom/android/contacts/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# instance fields
.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mScrollToTop:Z

.field private mShowOptionsMenu:Z

.field private mShowingVoicemailOnly:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->invalidateCache()V

    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startCallsQuery()V

    .line 339
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 340
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V

    .line 341
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 346
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 348
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 349
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 357
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 351
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallLogFragment"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .parameter "voicemailSourcesAvailable"

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 239
    return-void
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 367
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 362
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .parameter "onEntry"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 377
    if-nez p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 381
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 383
    :cond_1
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 389
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .parameter "statusCursor"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 171
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 178
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_1
    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :cond_2
    iget-object v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/calllog/CallLogFragment$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    .line 283
    .local v4, position:I
    if-gez v4, :cond_0

    .line 287
    const/4 v4, 0x0

    .line 289
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 290
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "-3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 301
    .restart local v3       #number:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 302
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "sip"

    invoke-static {v6, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    const/high16 v5, 0x1080

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 307
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 308
    .local v0, callType:I
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eq v0, v6, :cond_4

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    .line 312
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v5, v3}, Lcom/android/contacts/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    invoke-static {v6, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public fetchCalls()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailOnly()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    goto :goto_0
.end method

.method public getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 101
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 103
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 106
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 107
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 245
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 140
    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 142
    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 143
    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 144
    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 145
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 204
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 258
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 168
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 161
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 162
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 209
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 210
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, currentCountryIso:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 154
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 156
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 2
    .parameter "statusCursor"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 121
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 122
    .local v0, activeSources:I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 123
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    .line 231
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 235
    :cond_0
    return-void
.end method
