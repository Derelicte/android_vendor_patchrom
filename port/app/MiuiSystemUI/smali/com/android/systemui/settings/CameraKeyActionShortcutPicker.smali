.class public Lcom/android/systemui/settings/CameraKeyActionShortcutPicker;
.super Lmiui/preference/BasePreferenceActivity;
.source "CameraKeyActionShortcutPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/CameraKeyActionShortcutPicker;->addPreferencesFromResource(I)V

    .line 19
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, id:I
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionShortcutPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 28
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "camera_key_preferred_action_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    const-string v3, "camera_key_preferred_action_shortcut_id"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionShortcutPicker;->finish()V

    .line 34
    return v4
.end method
