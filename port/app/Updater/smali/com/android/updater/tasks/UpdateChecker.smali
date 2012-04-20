.class public Lcom/android/updater/tasks/UpdateChecker;
.super Lcom/android/updater/tasks/BaseChecker;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/tasks/UpdateChecker$1;,
        Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;,
        Lcom/android/updater/tasks/UpdateChecker$RomType;
    }
.end annotation


# instance fields
.field private final mPreferences:Lcom/android/updater/utils/Preferences;

.field private final mSystemDevice:Ljava/lang/String;

.field private final mSystemRom:Ljava/lang/String;

.field private final mUnAuthorizedCallback:Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/updater/tasks/UpdateChecker;-><init>(Landroid/content/Context;Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;)V
    .locals 1
    .parameter "context"
    .parameter "unAuthorizedCallback"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/updater/tasks/BaseChecker;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/updater/utils/Preferences;

    invoke-direct {v0, p1}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    .line 40
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getDeviceString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/tasks/UpdateChecker;->mSystemDevice:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/tasks/UpdateChecker;->mSystemRom:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/updater/tasks/UpdateChecker;->mUnAuthorizedCallback:Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;

    .line 43
    return-void
.end method

.method private deviceMatches(Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "ui"
    .parameter "systemDevice"

    .prologue
    const/4 v2, 0x1

    .line 234
    const-string v3, "*"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    iget-object v3, p1, Lcom/android/updater/customTypes/UpdateInfo;->device:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, device:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 242
    .end local v0           #device:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAvailableUpdates()Lcom/android/updater/customTypes/FullUpdateInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, retValue:Lcom/android/updater/customTypes/FullUpdateInfo;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomUpdateFileURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/updater/tasks/UpdateChecker;->checkUpdates(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 91
    .local v2, romBuf:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_0

    .line 92
    new-instance v1, Lcom/android/updater/customTypes/FullUpdateInfo;

    .end local v1           #retValue:Lcom/android/updater/customTypes/FullUpdateInfo;
    invoke-direct {v1}, Lcom/android/updater/customTypes/FullUpdateInfo;-><init>()V

    .line 94
    .restart local v1       #retValue:Lcom/android/updater/customTypes/FullUpdateInfo;
    invoke-direct {p0, v2}, Lcom/android/updater/tasks/UpdateChecker;->getUserLevelFromJSON(Ljava/lang/StringBuffer;)I

    move-result v4

    iput v4, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->userLevel:I

    .line 95
    invoke-direct {p0, v2}, Lcom/android/updater/tasks/UpdateChecker;->getLatestVersionFromJSON(Ljava/lang/StringBuffer;)Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v4

    iput-object v4, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->latestVersion:Lcom/android/updater/customTypes/UpdateInfo;

    .line 96
    invoke-static {v1, v2}, Lcom/android/updater/tasks/UpdateChecker;->getSignInFromJSON(Lcom/android/updater/customTypes/FullUpdateInfo;Ljava/lang/StringBuffer;)V

    .line 97
    sget-object v4, Lcom/android/updater/tasks/UpdateChecker$RomType;->Update:Lcom/android/updater/tasks/UpdateChecker$RomType;

    invoke-direct {p0, v2, v4}, Lcom/android/updater/tasks/UpdateChecker;->parseJSON(Ljava/lang/StringBuffer;Lcom/android/updater/tasks/UpdateChecker$RomType;)Ljava/util/LinkedList;

    move-result-object v3

    .line 98
    .local v3, romUpdateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    invoke-direct {p0, v3}, Lcom/android/updater/tasks/UpdateChecker;->getRomUpdates(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v4

    iput-object v4, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->roms:Ljava/util/LinkedList;

    .line 99
    sget-object v4, Lcom/android/updater/tasks/UpdateChecker$RomType;->IncrementalUpdate:Lcom/android/updater/tasks/UpdateChecker$RomType;

    invoke-direct {p0, v2, v4}, Lcom/android/updater/tasks/UpdateChecker;->parseJSON(Ljava/lang/StringBuffer;Lcom/android/updater/tasks/UpdateChecker$RomType;)Ljava/util/LinkedList;

    move-result-object v0

    .line 101
    .local v0, incrementalRomUpdateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/updater/tasks/UpdateChecker;->getIncrementalRomUpdates(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v4

    iput-object v4, v1, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    .line 103
    .end local v0           #incrementalRomUpdateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    .end local v3           #romUpdateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    :cond_0
    return-object v1
.end method

.method private getIncrementalRomUpdates(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, updateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 264
    .local v2, ret:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, max:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 265
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/updater/customTypes/UpdateInfo;

    .line 268
    .local v3, ui:Lcom/android/updater/customTypes/UpdateInfo;
    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->isIncremental()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersionForApply()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/updater/tasks/UpdateChecker;->mSystemRom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string v4, "ota"

    invoke-direct {p0, v3, v4}, Lcom/android/updater/tasks/UpdateChecker;->isRomMatch(Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v3           #ui:Lcom/android/updater/customTypes/UpdateInfo;
    :cond_2
    return-object v2
.end method

.method private getLatestVersionFromJSON(Ljava/lang/StringBuffer;)Lcom/android/updater/customTypes/UpdateInfo;
    .locals 5
    .parameter "buf"

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 138
    .local v3, ui:Lcom/android/updater/customTypes/UpdateInfo;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, mainJSONObject:Lorg/json/JSONObject;
    const-string v4, "MirrorList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 140
    .local v2, mirrorList:Lorg/json/JSONArray;
    const-string v4, "LatestVersion"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    .local v0, latestVersion:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, v0, v2}, Lcom/android/updater/tasks/UpdateChecker;->parseUpdateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/android/updater/customTypes/UpdateInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 146
    .end local v0           #latestVersion:Lorg/json/JSONObject;
    .end local v1           #mainJSONObject:Lorg/json/JSONObject;
    .end local v2           #mirrorList:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v3

    .line 144
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getRomUpdates(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, updateInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v2, ret:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, max:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 253
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/updater/customTypes/UpdateInfo;

    .line 254
    .local v3, ui:Lcom/android/updater/customTypes/UpdateInfo;
    const-string v4, "rom"

    invoke-direct {p0, v3, v4}, Lcom/android/updater/tasks/UpdateChecker;->isRomMatch(Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/updater/tasks/UpdateChecker;->mSystemRom:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/updater/utils/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v3           #ui:Lcom/android/updater/customTypes/UpdateInfo;
    :cond_1
    return-object v2
.end method

.method private static getSignInFromJSON(Lcom/android/updater/customTypes/FullUpdateInfo;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "fullUpdateInfo"
    .parameter "buf"

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, mainJSONObject:Lorg/json/JSONObject;
    const-string v2, "Signup"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    .local v1, signObject:Lorg/json/JSONObject;
    const-string v2, "rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInRank:Ljava/lang/String;

    .line 128
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInTotal:Ljava/lang/String;

    .line 129
    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #mainJSONObject:Lorg/json/JSONObject;
    .end local v1           #signObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getUserLevelFromJSON(Ljava/lang/StringBuffer;)I
    .locals 5
    .parameter "buf"

    .prologue
    const/16 v4, 0x9

    .line 111
    const/16 v1, 0x9

    .line 113
    .local v1, userLevel:I
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, mainJSONObject:Lorg/json/JSONObject;
    const-string v2, "UserLevel"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    if-le v1, v4, :cond_1

    .line 116
    :cond_0
    const/16 v1, 0x9

    .line 120
    .end local v0           #mainJSONObject:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isRomMatch(Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "ui"
    .parameter "type"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/updater/tasks/UpdateChecker;->mSystemDevice:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/updater/tasks/UpdateChecker;->deviceMatches(Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseJSON(Ljava/lang/StringBuffer;Lcom/android/updater/tasks/UpdateChecker$RomType;)Ljava/util/LinkedList;
    .locals 8
    .parameter "buf"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lcom/android/updater/tasks/UpdateChecker$RomType;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/updater/customTypes/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 153
    .local v5, uis:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/updater/customTypes/UpdateInfo;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, mainJSONObject:Lorg/json/JSONObject;
    const-string v6, "MirrorList"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 155
    .local v4, mirrorList:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 157
    .local v1, list:Lorg/json/JSONArray;
    sget-object v6, Lcom/android/updater/tasks/UpdateChecker$1;->$SwitchMap$com$android$updater$tasks$UpdateChecker$RomType:[I

    invoke-virtual {p2}, Lcom/android/updater/tasks/UpdateChecker$RomType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, max:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 174
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/updater/tasks/UpdateChecker;->parseUpdateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0           #i:I
    .end local v3           #max:I
    :pswitch_0
    const-string v6, "UpdateList"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 160
    goto :goto_0

    .line 163
    :pswitch_1
    const-string v6, "IncrementalUpdateList"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    const-string v6, "IncrementalUpdateList"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 178
    .end local v1           #list:Lorg/json/JSONArray;
    .end local v2           #mainJSONObject:Lorg/json/JSONObject;
    .end local v4           #mirrorList:Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 180
    :cond_2
    return-object v5

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseUpdateJSONObject(Lorg/json/JSONObject;)Lcom/android/updater/customTypes/UpdateInfo;
    .locals 9
    .parameter "obj"

    .prologue
    .line 184
    new-instance v6, Lcom/android/updater/customTypes/UpdateInfo;

    invoke-direct {v6}, Lcom/android/updater/customTypes/UpdateInfo;-><init>()V

    .line 187
    .local v6, ui:Lcom/android/updater/customTypes/UpdateInfo;
    :try_start_0
    const-string v7, "device"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, devices:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 189
    .local v4, item:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 190
    iget-object v7, v6, Lcom/android/updater/customTypes/UpdateInfo;->device:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v4           #item:Ljava/lang/String;
    :cond_1
    const-string v7, "type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setType(Ljava/lang/String;)V

    .line 193
    const-string v7, "codebase"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, codebases:[Ljava/lang/String;
    move-object v0, v1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 195
    .restart local v4       #item:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 196
    iget-object v7, v6, Lcom/android/updater/customTypes/UpdateInfo;->codebase:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v4           #item:Ljava/lang/String;
    :cond_3
    const-string v7, "name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setName(Ljava/lang/String;)V

    .line 199
    const-string v7, "version"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setVersion(Ljava/lang/String;)V

    .line 200
    const-string v7, "description"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setDescription(Ljava/lang/String;)V

    .line 201
    const-string v7, "descriptionUrl"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setDescriptionUrl(Ljava/lang/String;)V

    .line 202
    const-string v7, "branch"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setBranchCode(Ljava/lang/String;)V

    .line 203
    const-string v7, "filename"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setFileName(Ljava/lang/String;)V

    .line 204
    const-string v7, "filesize"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setFileSize(Ljava/lang/String;)V

    .line 205
    const-string v7, "md5"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setChecksum(Ljava/lang/String;)V

    .line 208
    const-string v7, "versionForApply"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 209
    const-string v7, "versionForApply"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/updater/customTypes/UpdateInfo;->setVersionForApply(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #codebases:[Ljava/lang/String;
    .end local v2           #devices:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_4
    :goto_2
    return-object v6

    .line 211
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method private parseUpdateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/android/updater/customTypes/UpdateInfo;
    .locals 6
    .parameter "obj"
    .parameter "mirrorList"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/updater/tasks/UpdateChecker;->parseUpdateJSONObject(Lorg/json/JSONObject;)Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v2

    .line 219
    .local v2, ui:Lcom/android/updater/customTypes/UpdateInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, max:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 221
    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    iget-object v3, v2, Lcom/android/updater/customTypes/UpdateInfo;->updateMirrors:Ljava/util/List;

    new-instance v4, Ljava/net/URI;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v1           #max:I
    :catch_0
    move-exception v3

    .line 229
    :cond_1
    return-object v2

    .line 223
    .restart local v1       #max:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public checkForNewUpdates()Lcom/android/updater/customTypes/FullUpdateInfo;
    .locals 6

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 57
    .local v0, availableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/android/updater/tasks/UpdateChecker;->getAvailableUpdates()Lcom/android/updater/customTypes/FullUpdateInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 75
    :cond_0
    if-nez v0, :cond_2

    .line 76
    const/4 v0, 0x0

    .line 85
    .end local v0           #availableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;
    :goto_1
    return-object v0

    .line 61
    .restart local v0       #availableUpdates:Lcom/android/updater/customTypes/FullUpdateInfo;
    :catch_0
    move-exception v2

    .line 62
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "UpdateChecker"

    const-string v5, "IOEx while checking for updates"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v2           #ex:Ljava/io/IOException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v2

    .line 64
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "UpdateChecker"

    const-string v5, "RuntimeEx while checking for updates"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 65
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, e:Lorg/apache/http/auth/AuthenticationException;
    const-string v4, "UpdateChecker"

    const-string v5, "AuthenticationException while checking for updates"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mUnAuthorizedCallback:Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mUnAuthorizedCallback:Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;

    invoke-interface {v4}, Lcom/android/updater/tasks/UpdateChecker$UnAuthorizedCallback;->unAuthorized()V

    goto :goto_2

    .line 70
    .end local v1           #e:Lorg/apache/http/auth/AuthenticationException;
    :catch_3
    move-exception v2

    .line 71
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "UpdateChecker"

    const-string v5, "Exception while checking for updates"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 79
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    iget v5, v0, Lcom/android/updater/customTypes/FullUpdateInfo;->userLevel:I

    invoke-virtual {v4, v5}, Lcom/android/updater/utils/Preferences;->setUserLevel(I)V

    .line 80
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    iget-object v5, v0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInRank:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/updater/utils/Preferences;->setRank(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    iget-object v5, v0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInTotal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/updater/utils/Preferences;->setTotal(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    iget-object v5, v0, Lcom/android/updater/customTypes/FullUpdateInfo;->signInVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/updater/utils/Preferences;->setVersion(Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/android/updater/tasks/UpdateChecker;->mPreferences:Lcom/android/updater/utils/Preferences;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/updater/utils/Preferences;->setLastUpdateCheck(Ljava/util/Date;)V

    goto :goto_1
.end method

.method protected checkUpdates(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/updater/tasks/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/updater/utils/SysUtils;->appendVersionInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, uriWithParams:Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/android/updater/tasks/BaseChecker;->checkUpdates(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method
