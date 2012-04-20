.class public final Lcom/google/android/partnersetup/AppHider;
.super Ljava/lang/Object;
.source "AppHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/AppHider$1;,
        Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "enabledString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 335
    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    .line 337
    :cond_0
    const-string v0, "disabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad enabled/disabled in clause \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v0
.end method

.method private static extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "minVersionString"
    .parameter "clause"
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric minVersion in clause \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v1
.end method

.method private static gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "gserviceKey"
    .parameter "gserviceValue"

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gservice ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 8
    .parameter "resolver"
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "defaultEnabled"

    .prologue
    const/4 v6, 0x3

    .line 223
    invoke-static {p1, p2}, Lcom/google/android/partnersetup/GooglePartnerSetup;->getSystemPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 225
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 226
    const-string v5, "GooglePartnerSetup"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not installed, can\'t change its visibility"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gms_disable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, gserviceKey:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, gserviceValue:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 237
    const-string v5, "GooglePartnerSetup"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Gservices value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", using default enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v2           #gserviceKey:Ljava/lang/String;
    .end local v3           #gserviceValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing over to default enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    invoke-static {p1, p2, p3}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    .end local v0           #e:Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
    .restart local v2       #gserviceKey:Ljava/lang/String;
    .restart local v3       #gserviceValue:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2, v3, v5}, Lcom/google/android/partnersetup/AppHider;->shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 250
    .local v1, explicitEnabled:Z
    const-string v5, "GooglePartnerSetup"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    const-string v5, "GooglePartnerSetup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " based on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/google/android/partnersetup/AppHider;->setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/google/android/partnersetup/AppHider$BadGservicesValue; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setAppVisibilities(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x3

    .line 97
    sget-object v7, Lcom/google/android/partnersetup/GooglePartnerSetup;->sPackageToEnabled:Ljava/util/Map;

    .line 99
    .local v7, packageToEnabled:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v10, "GooglePartnerSetup"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    const-string v10, "GooglePartnerSetup"

    const-string v11, "See which apps we should hide"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 103
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 104
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getPreferences(Landroid/content/Context;)Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    move-result-object v8

    .line 107
    .local v8, prefs:Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    invoke-virtual {v8}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingVersionNumber()I

    move-result v10

    if-eq v10, v13, :cond_2

    .line 108
    const-string v10, "GooglePartnerSetup"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 109
    const-string v10, "GooglePartnerSetup"

    const-string v11, "version changed, resetting count"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingRunCount(I)Z

    .line 112
    invoke-virtual {v8, v13}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingVersionNumber(I)Z

    .line 115
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingRunCount()I

    move-result v0

    .line 117
    .local v0, count:I
    const-string v10, "gms_disable:lock_count"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 119
    .local v4, lockCount:I
    if-ge v0, v4, :cond_3

    .line 120
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 123
    .local v1, defaultEnabled:Z
    invoke-static {v9, v5, v6, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 126
    .end local v1           #defaultEnabled:Z
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_3
    const-string v10, "GooglePartnerSetup"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    const-string v10, "GooglePartnerSetup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > limit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", only updating visibility of market app"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    const-string v6, "com.android.vending"

    .line 131
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 132
    .restart local v1       #defaultEnabled:Z
    invoke-static {v9, v5, v6, v1}, Lcom/google/android/partnersetup/AppHider;->setAppEnabled(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 135
    .end local v1           #defaultEnabled:Z
    .end local v6           #packageName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->incrementHidingRunCount()V

    .line 136
    invoke-static {p0}, Lcom/google/android/partnersetup/AppHider;->setFallbackMcc(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private static setEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    .line 357
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 359
    .local v0, newState:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 360
    return-void

    .line 357
    .end local v0           #newState:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static setFallbackMcc(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 160
    const/4 v5, 0x0

    .line 162
    .local v5, mccNum:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 163
    .local v0, config:Landroid/content/res/Configuration;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 166
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, simCountryCode:Ljava/lang/String;
    const-string v8, "ro.com.google.mcc_fallback"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, countrySysProp:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, fallbackMccNum:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_country"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, gservicesCountryCode:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    if-eqz v3, :cond_4

    .line 180
    if-eqz v4, :cond_1

    const-string v8, "de"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 182
    :cond_1
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 183
    const-string v8, "GooglePartnerSetup"

    const-string v9, "Setting fallback MCC based on system property."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    move v5, v3

    .line 197
    :goto_0
    iput v5, v0, Landroid/content/res/Configuration;->mcc:I

    .line 198
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 200
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 201
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting fallback mcc: mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 205
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new config from system:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #countrySysProp:Ljava/lang/String;
    .end local v3           #fallbackMccNum:I
    .end local v4           #gservicesCountryCode:Ljava/lang/String;
    .end local v6           #simCountryCode:Ljava/lang/String;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    return-void

    .line 188
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #countrySysProp:Ljava/lang/String;
    .restart local v3       #fallbackMccNum:I
    .restart local v4       #gservicesCountryCode:Ljava/lang/String;
    .restart local v6       #simCountryCode:Ljava/lang/String;
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v8, "GooglePartnerSetup"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 189
    const-string v8, "GooglePartnerSetup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clearing fallback MCC based on gservices country: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_6
    const/16 v5, 0x3e7

    goto :goto_0

    .line 209
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #countrySysProp:Ljava/lang/String;
    .end local v3           #fallbackMccNum:I
    .end local v4           #gservicesCountryCode:Ljava/lang/String;
    .end local v6           #simCountryCode:Ljava/lang/String;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "GooglePartnerSetup"

    const-string v9, "Failed to set fallback mcc"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static shouldBeEnabled(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .parameter "gserviceKey"
    .parameter "gserviceValue"
    .parameter "installedVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/partnersetup/AppHider$BadGservicesValue;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 273
    const/high16 v5, -0x8000

    .line 274
    .local v5, maxVersion:I
    const/4 v6, 0x0

    .line 276
    .local v6, maxVersionEnabled:Ljava/lang/Boolean;
    if-nez p1, :cond_0

    .line 277
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 281
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v1, p1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v1, clauseTokenizer:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 285
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, clause:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v4, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v4, innerTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 288
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad token count in clause \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 291
    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, minVersionString:Ljava/lang/String;
    invoke-static {v8, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractMinVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 295
    .local v7, minVersion:I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, enabledString:Ljava/lang/String;
    invoke-static {v2, v0, p0, p1}, Lcom/google/android/partnersetup/AppHider;->extractEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 300
    .local v3, explicitEnabled:Z
    if-lt v7, v5, :cond_1

    if-gt v7, p2, :cond_1

    .line 301
    if-ne v7, v5, :cond_3

    .line 303
    const-string v9, "GooglePartnerSetup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Multiple entries for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    move v5, v7

    .line 307
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 311
    .end local v0           #clause:Ljava/lang/String;
    .end local v2           #enabledString:Ljava/lang/String;
    .end local v3           #explicitEnabled:Z
    .end local v4           #innerTokenizer:Ljava/util/StringTokenizer;
    .end local v7           #minVersion:I
    .end local v8           #minVersionString:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    .line 312
    new-instance v9, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rule for version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/google/android/partnersetup/AppHider$BadGservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/partnersetup/AppHider$1;)V

    throw v9

    .line 315
    :cond_5
    const-string v9, "GooglePartnerSetup"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 316
    const-string v9, "GooglePartnerSetup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found visibility "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for minVersion "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0, p1}, Lcom/google/android/partnersetup/AppHider;->gserviceToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    return v9
.end method
