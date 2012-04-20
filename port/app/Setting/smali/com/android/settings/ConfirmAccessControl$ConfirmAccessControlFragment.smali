.class public Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAccessControlFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mConfirmPurpose:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 94
    return-void
.end method

.method private addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 170
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const-string v2, "[icon]"

    .line 172
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "[icon]"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 174
    .local v3, patternSize:I
    const/4 v4, 0x0

    .line 175
    .local v4, start:I
    const-string v5, "[icon]"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x3020120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int v6, v4, v3

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private handleConfirmPurpose()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    if-ne v0, v3, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v3}, Lmiui/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_3
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected accessLockPattern(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    .line 207
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Lmiui/security/MiuiLockPatternUtils;->checkAccessControl(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected getDefaultUnlockString()I
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f0b05fd

    return v0
.end method

.method protected getInStealthMode()Z
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ac_visiblepattern"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getTactileFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ac_unlock_tactile_feedback"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 100
    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->savedAccessControlExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_1
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const v9, 0x7f0b05fe

    const v8, 0x7f0b05fd

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    if-eqz p1, :cond_2

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->parseIntent(Landroid/content/Intent;)V

    .line 132
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    .line 133
    const-string v4, "confirm_purpose"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, noBack:Z
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 136
    const/4 v2, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 138
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 140
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    .local v1, name:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 156
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #name:Ljava/lang/CharSequence;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 157
    const v4, 0x7f0b05ff

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ConfirmAccessControl;

    #setter for: Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z
    invoke-static {v4, v2}, Lcom/android/settings/ConfirmAccessControl;->access$002(Lcom/android/settings/ConfirmAccessControl;Z)Z

    .line 167
    .end local v2           #noBack:Z
    :cond_2
    return-void

    .line 151
    .restart local v2       #noBack:Z
    :cond_3
    iget v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 152
    const v4, 0x30c0171

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mHeaderText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 141
    .end local v1           #name:Ljava/lang/String;
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
