.class public Lcom/android/monitor/util/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/util/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Lcom/android/monitor/util/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/monitor/util/Preferences;->init(Landroid/content/SharedPreferences;)V

    .line 29
    return-void
.end method

.method private static init(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 18
    sget-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v1, "int_network_policy"

    const-string v2, "int_network_policy"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v1, "display_system_app"

    const-string v2, "display_system_app"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public enableDisplaySystemApp(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/monitor/util/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "display_system_app"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    sget-object v1, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v2, "display_system_app"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public isDisplaySystemApp()Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v1, "display_system_app"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInitNetworkPolicy()Z
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v1, "int_network_policy"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setInitNetworkPolicy(Z)V
    .locals 4
    .parameter "init"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/monitor/util/Preferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "int_network_policy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    sget-object v1, Lcom/android/monitor/util/Preferences;->sCache:Ljava/util/HashMap;

    const-string v2, "int_network_policy"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
