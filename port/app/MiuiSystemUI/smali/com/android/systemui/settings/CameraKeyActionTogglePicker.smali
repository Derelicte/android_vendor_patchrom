.class public Lcom/android/systemui/settings/CameraKeyActionTogglePicker;
.super Lmiui/preference/BasePreferenceActivity;
.source "CameraKeyActionTogglePicker.java"


# instance fields
.field private mToggles:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->addPreferencesFromResource(I)V

    .line 26
    const-string v0, "toggles"

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->mToggles:Landroid/preference/PreferenceGroup;

    .line 27
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "camera_key_preferred_action_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    const-string v1, "camera_key_preferred_action_toggle_id"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->finish()V

    .line 62
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 31
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 33
    iget-object v5, p0, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->mToggles:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 35
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 36
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 37
    .local v2, id:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    new-instance v4, Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    .local v4, preference:Landroid/preference/Preference;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/settings/ToggleManager;->getName(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 41
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/systemui/settings/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/systemui/settings/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 47
    iget-object v5, p0, Lcom/android/systemui/settings/CameraKeyActionTogglePicker;->mToggles:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 49
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #id:Ljava/lang/Integer;
    .end local v4           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method
