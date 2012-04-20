.class public Lcom/miui/notes/ui/NotesPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "NotesPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;
    }
.end annotation


# instance fields
.field private mAccountCategory:Landroid/preference/PreferenceCategory;

.field private mHasAddedAccount:Z

.field private mOriAccounts:[Landroid/accounts/Account;

.field private mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 355
    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->showSelectAccountAlertDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->showChangeAccountConfirmAlertDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setSyncAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/notes/ui/NotesPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->removeSyncAccount()V

    return-void
.end method

.method private getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 277
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 278
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getLastSyncTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 350
    const-string v1, "notes_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "pref_last_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 336
    const-string v1, "notes_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_account_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadAccountPreference()V
    .locals 3

    .prologue
    .line 109
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 111
    new-instance v0, Lcom/miui/notes/ui/AccountPreference;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/AccountPreference;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, accountPref:Lcom/miui/notes/ui/AccountPreference;
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, defaultAccount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/AccountPreference;->setDefaultAccount(Ljava/lang/String;)V

    .line 116
    :cond_0
    const v2, 0x7f09004c

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    const v2, 0x7f09004d

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Lcom/miui/notes/ui/NotesPreferenceActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity$1;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    return-void
.end method

.method private loadSyncButton()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 143
    const v4, 0x7f0d0029

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 144
    .local v3, syncButton:Landroid/widget/Button;
    const v4, 0x7f0d002a

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    .local v2, lastSyncTimeView:Landroid/widget/TextView;
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const v4, 0x7f090055

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v4, Lcom/miui/notes/ui/NotesPreferenceActivity$2;

    invoke-direct {v4, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$2;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_0
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->getProgressString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_2
    return-void

    .line 156
    :cond_0
    const v4, 0x7f090054

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v4, Lcom/miui/notes/ui/NotesPreferenceActivity$3;

    invoke-direct {v4, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$3;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 164
    goto :goto_1

    .line 171
    :cond_2
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getLastSyncTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 172
    .local v0, lastSyncTime:J
    const-wide/16 v7, 0x0

    cmp-long v4, v0, v7

    if-eqz v4, :cond_3

    .line 173
    const v4, 0x7f09004e

    new-array v5, v5, [Ljava/lang/Object;

    const v7, 0x7f09004f

    invoke-virtual {p0, v7}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 178
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshUI()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->loadAccountPreference()V

    .line 185
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->loadSyncButton()V

    .line 186
    return-void
.end method

.method private removeSyncAccount()V
    .locals 4

    .prologue
    .line 313
    const-string v2, "notes_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_account_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "pref_key_account_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_0
    const-string v2, "pref_last_sync_time"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const-string v2, "pref_last_sync_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miui/notes/ui/NotesPreferenceActivity$8;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$8;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 333
    return-void
.end method

.method public static setLastSyncTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 342
    const-string v2, "notes_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_last_sync_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method private setSyncAccount(Ljava/lang/String;)V
    .locals 5
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string v2, "notes_preferences"

    invoke-virtual {p0, v2, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 286
    const-string v2, "pref_key_account_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setLastSyncTime(Landroid/content/Context;J)V

    .line 296
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miui/notes/ui/NotesPreferenceActivity$7;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$7;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 306
    const v2, 0x7f09005b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 310
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 288
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #settings:Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "pref_key_account_name"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showChangeAccountConfirmAlertDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 250
    .local v4, titleView:Landroid/view/View;
    const/high16 v5, 0x7f0d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 251
    .local v3, titleTextView:Landroid/widget/TextView;
    const v5, 0x7f090056

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v5, 0x7f0d0001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    .local v2, subtitleTextView:Landroid/widget/TextView;
    const v5, 0x7f090057

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f090051

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const v5, 0x7f090052

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    const/4 v5, 0x2

    const v6, 0x7f090053

    invoke-virtual {p0, v6}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 262
    .local v1, menuItemArray:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/miui/notes/ui/NotesPreferenceActivity$6;

    invoke-direct {v5, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$6;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 274
    return-void
.end method

.method private showSelectAccountAlertDialog()V
    .locals 22

    .prologue
    .line 189
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v9, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const/high16 v20, 0x7f03

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 192
    .local v18, titleView:Landroid/view/View;
    const/high16 v19, 0x7f0d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 193
    .local v17, titleTextView:Landroid/widget/TextView;
    const v19, 0x7f090058

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v19, 0x7f0d0001

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 195
    .local v16, subtitleTextView:Landroid/widget/TextView;
    const v19, 0x7f090059

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 201
    .local v3, accounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, defAccount:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .line 204
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    .line 206
    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 207
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/CharSequence;

    .line 208
    .local v14, items:[Ljava/lang/CharSequence;
    move-object v13, v14

    .line 209
    .local v13, itemMapping:[Ljava/lang/CharSequence;
    const/4 v6, -0x1

    .line 210
    .local v6, checkedItem:I
    const/4 v11, 0x0

    .line 211
    .local v11, index:I
    move-object v5, v3

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v12, v11

    .end local v11           #index:I
    .local v12, index:I
    :goto_0
    if-ge v10, v15, :cond_1

    aget-object v2, v5, v10

    .line 212
    .local v2, account:Landroid/accounts/Account;
    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 213
    move v6, v12

    .line 215
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v14, v12

    .line 211
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 217
    .end local v2           #account:Landroid/accounts/Account;
    :cond_1
    new-instance v19, Lcom/miui/notes/ui/NotesPreferenceActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/miui/notes/ui/NotesPreferenceActivity$4;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;[Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v14, v6, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v6           #checkedItem:I
    .end local v10           #i$:I
    .end local v12           #index:I
    .end local v13           #itemMapping:[Ljava/lang/CharSequence;
    .end local v14           #items:[Ljava/lang/CharSequence;
    .end local v15           #len$:I
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f030001

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 229
    .local v4, addAccountView:Landroid/view/View;
    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    .line 232
    .local v8, dialog:Landroid/app/AlertDialog;
    new-instance v19, Lcom/miui/notes/ui/NotesPreferenceActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/miui/notes/ui/NotesPreferenceActivity$5;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    const-string v2, "pref_sync_account_key"

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    .line 61
    new-instance v2, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-direct {v2, p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Lcom/miui/notes/ui/NotesPreferenceActivity$1;)V

    iput-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.miui.notes.gtask.remote.gtask_sync_service"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    iput-object v4, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, header:Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 376
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    iget-boolean v10, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    if-eqz v10, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 80
    .local v2, accounts:[Landroid/accounts/Account;
    iget-object v10, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    if-eqz v10, :cond_1

    array-length v10, v2

    iget-object v11, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    array-length v11, v11

    if-le v10, v11, :cond_1

    .line 81
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v3, v7

    .line 82
    .local v0, accountNew:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 83
    .local v5, found:Z
    iget-object v4, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v1, v4, v6

    .line 84
    .local v1, accountOld:Landroid/accounts/Account;
    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 85
    const/4 v5, 0x1

    .line 89
    .end local v1           #accountOld:Landroid/accounts/Account;
    :cond_0
    if-nez v5, :cond_3

    .line 90
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setSyncAccount(Ljava/lang/String;)V

    .line 97
    .end local v0           #accountNew:Landroid/accounts/Account;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #found:Z
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V

    .line 98
    return-void

    .line 83
    .restart local v0       #accountNew:Landroid/accounts/Account;
    .restart local v1       #accountOld:Landroid/accounts/Account;
    .restart local v2       #accounts:[Landroid/accounts/Account;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v5       #found:Z
    .restart local v6       #i$:I
    .restart local v9       #len$:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    .end local v1           #accountOld:Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0
.end method
