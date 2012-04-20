.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mNeedsSave:Z

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncIntervalPref:Landroid/preference/ListPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 288
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/MailboxSettings$1;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/MailboxSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updateObjects()V

    return-void
.end method

.method private enablePreferences(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 129
    return-void
.end method

.method private getSyncInterval()I
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 269
    .local v0, syncInterval:I
    :goto_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 271
    :cond_0
    const/4 v0, -0x2

    .line 273
    :cond_1
    return v0

    .line 261
    .end local v0           #syncInterval:I
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-nez v1, :cond_3

    .line 263
    const/4 v0, -0x1

    .restart local v0       #syncInterval:I
    goto :goto_0

    .line 265
    .end local v0           #syncInterval:I
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .restart local v0       #syncInterval:I
    goto :goto_0
.end method

.method private getSyncLookback()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_0
.end method

.method private onDataLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 223
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 228
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v2, v3}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, mailboxName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    const v2, 0x7f080158

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;Lcom/android/emailcommon/provider/Account;)V

    .line 239
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    .line 245
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 246
    return-void

    .line 233
    :cond_0
    const v2, 0x7f080159

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/MailboxSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveToDatabase()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "Email"

    const-string v1, "Saving mailbox settings..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 344
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 345
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 346
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 348
    .local v5, context:Landroid/content/Context;
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/MailboxSettings$2;-><init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/MailboxSettings$2;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method public static setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;Lcom/android/emailcommon/provider/Account;)V
    .locals 12
    .parameter "context"
    .parameter "pref"
    .parameter "account"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 192
    .local v6, resources:Landroid/content/res/Resources;
    const v8, 0x7f060004

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    .local v0, entries:[Ljava/lang/CharSequence;
    const v8, 0x7f060005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 197
    .local v7, values:[Ljava/lang/CharSequence;
    iget-wide v8, p2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 198
    iget-wide v8, p2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 199
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v3, :cond_1

    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-eqz v8, :cond_1

    .line 200
    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    add-int/lit8 v2, v8, 0x1

    .line 202
    .local v2, maxEntry:I
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 203
    .local v4, policyEntries:[Ljava/lang/CharSequence;
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 204
    .local v5, policyValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    aget-object v8, v0, v1

    aput-object v8, v4, v1

    .line 206
    aget-object v8, v7, v1

    aput-object v8, v5, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    move-object v0, v4

    .line 210
    move-object v7, v5

    .line 214
    .end local v1           #i:I
    .end local v2           #maxEntry:I
    .end local v3           #policy:Lcom/android/emailcommon/provider/Policy;
    .end local v4           #policyEntries:[Ljava/lang/CharSequence;
    .end local v5           #policyValues:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public static final start(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method private updateObjects()V
    .locals 5

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    .local v0, syncInterval:I
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    .local v1, syncLookback:I
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 315
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v0, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 319
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v1, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v0, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 322
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_0
.end method

.method private updatePreferenceSummary()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x4

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "MAILBOX_ID"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 92
    .local v1, mailboxId:J
    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string v3, "check_frequency"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    .line 100
    const-string v3, "sync_window"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    .line 102
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 108
    if-eqz p1, :cond_2

    .line 109
    const-string v3, "MailboxSettings.account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Account;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 110
    const-string v3, "MailboxSettings.mailbox"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 111
    const-string v3, "MailboxSettings.needsSave"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v3, :cond_3

    .line 114
    new-instance v4, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/android/email/activity/setup/MailboxSettings;J)V

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 116
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 145
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onBackPressed()V

    .line 382
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "MailboxSettings.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    const-string v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v0, "MailboxSettings.needsSave"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method
