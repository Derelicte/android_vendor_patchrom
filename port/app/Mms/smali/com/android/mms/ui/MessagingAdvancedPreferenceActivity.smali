.class public Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingAdvancedPreferenceActivity.java"


# instance fields
.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmscAddressPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 157
    new-instance v0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 165
    new-instance v0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method private removeUnavailablePrefs()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 90
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v11

    if-nez v11, :cond_2

    move v7, v9

    .line 92
    .local v7, removeSimRelatedPrefs:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    move v6, v9

    .line 94
    .local v6, removeMmsRelatedPrefs:Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v6, :cond_7

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 96
    .local v5, ps:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v8, toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 99
    .local v4, pc:Landroid/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 100
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 101
    .local v3, p:Landroid/preference/Preference;
    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_sim_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    .line 102
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v2           #j:I
    .end local v3           #p:Landroid/preference/Preference;
    .end local v4           #pc:Landroid/preference/PreferenceCategory;
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    .end local v6           #removeMmsRelatedPrefs:Z
    .end local v7           #removeSimRelatedPrefs:Z
    .end local v8           #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    move v7, v10

    .line 90
    goto :goto_0

    .restart local v7       #removeSimRelatedPrefs:Z
    :cond_3
    move v6, v10

    .line 92
    goto :goto_1

    .line 103
    .restart local v0       #i:I
    .restart local v2       #j:I
    .restart local v3       #p:Landroid/preference/Preference;
    .restart local v4       #pc:Landroid/preference/PreferenceCategory;
    .restart local v5       #ps:Landroid/preference/PreferenceScreen;
    .restart local v6       #removeMmsRelatedPrefs:Z
    .restart local v8       #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_mms_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 104
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 107
    .end local v3           #p:Landroid/preference/Preference;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 108
    .restart local v3       #p:Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 96
    .end local v3           #p:Landroid/preference/Preference;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v4           #pc:Landroid/preference/PreferenceCategory;
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    .end local v8           #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 115
    :cond_8
    const-string v9, "pref_key_other_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_9
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 46
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 47
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 50
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setSmsDisplayLimit()V

    .line 56
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setMmsDisplayLimit()V

    .line 58
    const-string v0, "pref_key_edit_sim_smsc_address"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    .line 59
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->removeUnavailablePrefs()V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->finish()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MiuiSmscAddressSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 139
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0a008c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0a008d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0
.end method
