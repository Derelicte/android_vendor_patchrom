.class public Lcom/android/settings/sound/SmsReceivedActivity;
.super Lcom/android/settings/sound/BaseSoundActivity;
.source "SmsReceivedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/sound/BaseSoundActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings/sound/SmsReceivedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_received_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/sound/SmsReceivedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method protected getRingtoneTitleId()I
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f0b05f1

    return v0
.end method

.method protected getRingtoneType()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x2

    return v0
.end method

.method protected saveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings/sound/SmsReceivedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_received_sound"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
