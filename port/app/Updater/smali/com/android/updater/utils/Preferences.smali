.class public Lcom/android/updater/utils/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/updater/utils/Preferences;->reload(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method


# virtual methods
.method public getCheckType()I
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "check_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrVersionInfo()Lcom/android/updater/customTypes/UpdateInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "curr_version_info"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, data:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-static {v0}, Lcom/android/updater/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/updater/customTypes/UpdateInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0           #data:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v3

    :cond_0
    :goto_1
    move-object v1, v2

    .line 88
    goto :goto_0

    .line 85
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getCurrentIncrementalVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cur_incremental_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastClearTrashTime()J
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_clear_trash_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModeVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_mod_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v4, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "last_update_info"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, data:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 116
    :goto_0
    return-object v2

    .line 111
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/updater/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/updater/customTypes/UpdateInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .local v2, info:Lcom/android/updater/customTypes/UpdateInfo;
    goto :goto_0

    .line 113
    .end local v2           #info:Lcom/android/updater/customTypes/UpdateInfo;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v2, v3

    .line 114
    goto :goto_0

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 116
    goto :goto_0
.end method

.method public getLastUploadActiveTime()J
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_upload_active"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUploadInstallAppTime()J
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_upload_install_app"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUploadUsageAppTime()J
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_upload_usage_app"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "signin_rank"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "signin_total"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLevel()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_level"

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "signin_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundDownload()Z
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "background_download"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reload(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method public setBackgroundDownload(Z)V
    .locals 2
    .parameter "isDownload"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "background_download"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public setCheckType(I)V
    .locals 2
    .parameter "checkType"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "check_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public setCurrVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 93
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 95
    .local v0, data:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/updater/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    const-string v3, "curr_version_info"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method public setCurrentIncrementalVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "currentIncrementalVersion"

    .prologue
    .line 55
    const-string v0, "cur_incremental_version"

    invoke-direct {p0, v0, p1}, Lcom/android/updater/utils/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setLastClearTrashTime(J)V
    .locals 1
    .parameter "lastClearTrashTime"

    .prologue
    .line 63
    const-string v0, "pref_last_clear_trash_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/updater/utils/Preferences;->setLong(Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public setLastModeVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "lastModeVersion"

    .prologue
    .line 192
    const-string v0, "last_mod_version"

    invoke-direct {p0, v0, p1}, Lcom/android/updater/utils/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setLastUpdateCheck(Ljava/util/Date;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 51
    const-string v0, "last_update_check"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/updater/utils/Preferences;->setLong(Ljava/lang/String;J)V

    .line 52
    return-void
.end method

.method public setLastUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 121
    iget-object v3, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 124
    .local v0, data:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/updater/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    const-string v3, "last_update_info"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method public setLastUploadActiveTime(J)V
    .locals 1
    .parameter "lastUploadActiveTime"

    .prologue
    .line 208
    const-string v0, "last_upload_active"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/updater/utils/Preferences;->setLong(Ljava/lang/String;J)V

    .line 209
    return-void
.end method

.method public setLastUploadInstallAppTime(J)V
    .locals 1
    .parameter "lastUploadInstallAppTime"

    .prologue
    .line 200
    const-string v0, "last_upload_install_app"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/updater/utils/Preferences;->setLong(Ljava/lang/String;J)V

    .line 201
    return-void
.end method

.method public setLastUploadUsageAppTime(J)V
    .locals 1
    .parameter "lastUploadUsageAppTime"

    .prologue
    .line 71
    const-string v0, "last_upload_usage_app"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/updater/utils/Preferences;->setLong(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 1
    .parameter "rank"

    .prologue
    .line 148
    const-string v0, "signin_rank"

    invoke-direct {p0, v0, p1}, Lcom/android/updater/utils/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1
    .parameter "total"

    .prologue
    .line 156
    const-string v0, "signin_total"

    invoke-direct {p0, v0, p1}, Lcom/android/updater/utils/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setUserLevel(I)V
    .locals 2
    .parameter "userLevel"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/updater/utils/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "user_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 164
    const-string v0, "signin_version"

    invoke-direct {p0, v0, p1}, Lcom/android/updater/utils/Preferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
