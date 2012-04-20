.class public Lcom/miui/gallery/settings/GallerySettings;
.super Landroid/preference/PreferenceActivity;
.source "GallerySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mSlideShowInterval:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 151
    const/4 v1, 0x1

    .line 153
    .local v1, result:Z
    const/4 v0, 0x0

    .line 155
    .local v0, interval:I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    if-lez v0, :cond_0

    const/16 v2, 0xe10

    if-le v0, v2, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x2

    .line 162
    iget-object v2, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 163
    const v2, 0x7f0d00e4

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    const-string v3, "%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x7f0d00e9

    invoke-virtual {p0, v5}, Lcom/miui/gallery/settings/GallerySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    return v1

    .line 156
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iput-boolean v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mOkClicked:Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/miui/gallery/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 55
    const-string v1, "slideshow_interval"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    .line 56
    const-string v1, "auto_create_recent_album"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, v3, v3}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/settings/GallerySettings;->updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/settings/GallerySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mOkClicked:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/settings/GallerySettings;->finish()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mSlideShowInterval:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 145
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2
    invoke-direct {p0, p2}, Lcom/miui/gallery/settings/GallerySettings;->updateSlideShowIntervalSummary(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v4, 0x104000a

    const/high16 v3, 0x104

    const/4 v0, 0x1

    .line 98
    const-string v1, "clear_thumbnail_cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/settings/GallerySettings$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/settings/GallerySettings$1;-><init>(Lcom/miui/gallery/settings/GallerySettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/settings/GallerySettings;->mAutoCreateRecentAlbum:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iput-boolean v0, p0, Lcom/miui/gallery/settings/GallerySettings;->mOkClicked:Z

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
