.class public Lcom/android/thememanager/ThirdPartyPickersActivity;
.super Landroid/preference/PreferenceActivity;
.source "ThirdPartyPickersActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 73
    const/high16 v0, 0x10a

    const v1, 0x3040005

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/ThirdPartyPickersActivity;->overridePendingTransition(II)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 26
    .local v5, intent:Landroid/content/Intent;
    const-string v17, "android.intent.extra.INTENT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 27
    .local v16, targetParcelable:Landroid/os/Parcelable;
    const-string v17, "extra_resource_type"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 28
    .local v9, resourceType:J
    const-string v17, "extra_resolve_info_list"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 30
    .local v8, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/content/Intent;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const-wide/16 v17, 0x0

    cmp-long v17, v9, v17

    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->finish()V

    .line 60
    :goto_0
    return-void

    :cond_1
    move-object/from16 v15, v16

    .line 35
    check-cast v15, Landroid/content/Intent;

    .line 37
    .local v15, targetIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 38
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 40
    .local v12, screen:Landroid/preference/PreferenceScreen;
    const v17, 0x7f090029

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9, v10}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .line 44
    .local v13, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v13, :cond_2

    .line 45
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 47
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v14, specificIntent:Landroid/content/Intent;
    const/high16 v17, 0x300

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    new-instance v7, Landroid/preference/PreferenceScreen;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .local v7, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7, v14}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {v11, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v11, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v12, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #pref:Landroid/preference/PreferenceScreen;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    .end local v14           #specificIntent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/thememanager/ThirdPartyPickersActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->finish()V

    .line 67
    const/4 v1, 0x1

    return v1
.end method
