.class Lcom/android/email/activity/setup/MailboxSettings$1;
.super Ljava/lang/Object;
.source "MailboxSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 291
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 292
    .local v0, lp:Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    .end local p2
    :goto_0
    return v3

    .line 295
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$402(Lcom/android/email/activity/setup/MailboxSettings;Z)Z

    .line 296
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "Email"

    const-string v2, "Setting changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #calls: Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V
    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$500(Lcom/android/email/activity/setup/MailboxSettings;)V

    .line 303
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$1;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #calls: Lcom/android/email/activity/setup/MailboxSettings;->updateObjects()V
    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$600(Lcom/android/email/activity/setup/MailboxSettings;)V

    goto :goto_0
.end method
