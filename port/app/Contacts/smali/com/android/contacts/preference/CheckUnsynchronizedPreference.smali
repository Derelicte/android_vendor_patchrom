.class public final Lcom/android/contacts/preference/CheckUnsynchronizedPreference;
.super Landroid/preference/ListPreference;
.source "CheckUnsynchronizedPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->prepare()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->prepare()V

    .line 28
    return-void
.end method

.method private prepare()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31
    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b021e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b021f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0220

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->getCheckFrequency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->setValue(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCheckFrequency()I
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.CHECK_UNSYNCHRONIZED_ACCOUNTS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->getCheckFrequency()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b021e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b021f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0220

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, newValue:I
    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->getCheckFrequency()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->setCheckFrequency(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->notifyChanged()V

    .line 71
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setCheckFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/preference/CheckUnsynchronizedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.CHECK_UNSYNCHRONIZED_ACCOUNTS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
