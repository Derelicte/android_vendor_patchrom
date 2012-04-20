.class public Lcom/android/systemui/settings/CameraKeyActionAppPicker;
.super Lmiui/preference/BasePreferenceActivity;
.source "CameraKeyActionAppPicker.java"


# instance fields
.field private mActivities:Landroid/preference/PreferenceGroup;

.field private mLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/CameraKeyActionAppPicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/settings/CameraKeyActionAppPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mLoading:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->addPreferencesFromResource(I)V

    .line 36
    const-string v0, "activities"

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;

    .line 37
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, componentName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 90
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "camera_key_preferred_action_type"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const-string v2, "camera_key_preferred_action_app_component"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->finish()V

    .line 98
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 43
    iget-boolean v1, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mLoading:Z

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mLoading:Z

    .line 45
    new-instance v0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;-><init>(Lcom/android/systemui/settings/CameraKeyActionAppPicker;)V

    .line 80
    .local v0, refreshThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    .end local v0           #refreshThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
