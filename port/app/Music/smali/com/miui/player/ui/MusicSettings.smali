.class public Lcom/miui/player/ui/MusicSettings;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mFilterCategoryPref:Landroid/preference/Preference;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field mPlayAndDownload:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 127
    new-instance v0, Lcom/miui/player/ui/MusicSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicSettings$1;-><init>(Lcom/miui/player/ui/MusicSettings;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->addPreferencesFromResource(I)V

    .line 37
    const-string v3, "other_connect_album"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    const-string v3, "other_connect_lyric"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 39
    const-string v3, "other_connect_listen"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    const-string v3, "flow_save_hint"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 41
    const-string v3, "min_music_filter_size"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    const-string v3, "filter_music_folder"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v3, "android_album"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v3, "play_and_download"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    const-string v3, "screen_bright_wake"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v3, "keep_quit_location"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v3, "shake"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    const-string v3, "shake_degree"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v3, "display_lyric"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v3, "display_album"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v3, "display_spectrogram"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    .line 53
    .local v2, specPref:Landroid/preference/TwoStatePreference;
    const-string v3, "fade_effect_active"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 55
    .local v1, fadePref:Landroid/preference/TwoStatePreference;
    sget-boolean v3, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 57
    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 65
    :goto_0
    const-string v3, "music_filter"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/MusicSettings;->mFilterCategoryPref:Landroid/preference/Preference;

    .line 66
    const-string v3, "play_and_download"

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/MusicSettings;->mPlayAndDownload:Landroid/preference/Preference;

    .line 68
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 70
    const v3, 0x7f080012

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 73
    :cond_0
    return-void

    .line 61
    .end local v0           #bar:Landroid/app/ActionBar;
    :cond_1
    invoke-virtual {v2, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicSettings;->finish()V

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, key:Ljava/lang/String;
    invoke-static {p0, v1, p2}, Lcom/miui/player/util/PreferenceCache;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v2, "display_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "other_connect_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    const-string v2, "android_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Lcom/miui/player/model/AlbumListAdapter;->removeCache()V

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 116
    :cond_2
    const-string v2, "display_lyric"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "lyric"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "shake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.updateshake"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    return-void
.end method
