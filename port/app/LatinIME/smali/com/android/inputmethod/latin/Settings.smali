.class public Lcom/android/inputmethod/latin/Settings;
.super Lcom/android/inputmethodcommon/InputMethodSettingsActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Settings$Values;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

.field private mBigramPrediction:Landroid/preference/CheckBoxPreference;

.field private mBigramSuggestion:Landroid/preference/CheckBoxPreference;

.field private mDebugSettingsPreference:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputLanguageSelection:Landroid/preference/PreferenceScreen;

.field private mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

.field private mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

.field private mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

.field private mOkClicked:Z

.field private mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

.field private mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressVibrationDurationSettingsDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressSoundVolumeSettingDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/Settings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/inputmethod/latin/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0062

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, autoCorrectionOff:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, currentSetting:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 341
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 344
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 340
    goto :goto_0

    :cond_2
    move v3, v4

    .line 342
    goto :goto_1
.end method

.method private refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 645
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 646
    invoke-static {p0}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->hasVibrator()Z

    move-result v0

    .line 647
    .local v0, hasVibrator:Z
    if-eqz v0, :cond_2

    const-string v3, "vibrate_on"

    const v4, 0x7f08000e

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 649
    .local v2, vibrateOn:Z
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 652
    .end local v0           #hasVibrator:Z
    .end local v2           #vibrateOn:Z
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 653
    const-string v3, "sound_on"

    const v4, 0x7f08000d

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 655
    .local v1, soundOn:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 657
    .end local v1           #soundOn:Z
    :cond_1
    return-void

    .line 647
    .restart local v0       #hasVibrator:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showKeypressSoundVolumeSettingDialog()V
    .locals 11

    .prologue
    .line 726
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 727
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 728
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v2

    .line 729
    .local v2, context:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 730
    .local v4, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 731
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b00f6

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 732
    const v8, 0x104000a

    new-instance v9, Lcom/android/inputmethod/latin/Settings$7;

    invoke-direct {v9, p0, v6, v4}, Lcom/android/inputmethod/latin/Settings$7;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 742
    const/high16 v8, 0x104

    new-instance v9, Lcom/android/inputmethod/latin/Settings$8;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/Settings$8;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030005

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 750
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 752
    .local v3, currentVolumeInt:I
    const v8, 0x7f070043

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    .line 754
    const v8, 0x7f070044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 755
    .local v5, sb:Landroid/widget/SeekBar;
    new-instance v8, Lcom/android/inputmethod/latin/Settings$9;

    invoke-direct {v8, p0, v0}, Lcom/android/inputmethod/latin/Settings$9;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/media/AudioManager;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 772
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 773
    iget-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 775
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 776
    return-void
.end method

.method private showKeypressVibrationDurationSettingsDialog()V
    .locals 10

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 670
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    .line 671
    .local v1, context:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 672
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b00f5

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 674
    const v7, 0x104000a

    new-instance v8, Lcom/android/inputmethod/latin/Settings$4;

    invoke-direct {v8, p0, v5, v3}, Lcom/android/inputmethod/latin/Settings$4;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 683
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/inputmethod/latin/Settings$5;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/Settings$5;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 691
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    .line 693
    .local v2, currentMs:I
    const v7, 0x7f070046

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    .line 694
    const v7, 0x7f070047

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 695
    .local v4, sb:Landroid/widget/SeekBar;
    new-instance v7, Lcom/android/inputmethod/latin/Settings$6;

    invoke-direct {v7, p0, v1}, Lcom/android/inputmethod/latin/Settings$6;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/app/Activity;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 712
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 713
    iget-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 716
    return-void
.end method

.method private showVoiceConfirmation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    .line 571
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 573
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 575
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 579
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateKeyPreviewPopupDelaySummary()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 566
    .local v0, lp:Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    return-void
.end method

.method private updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    :cond_0
    return-void
.end method

.method private updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0074

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    :cond_0
    return-void
.end method

.method private updateShowCorrectionSuggestionsSummary()V
    .locals 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method


# virtual methods
.method public getActivityInternal()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .line 348
    .local v0, thisObject:Lcom/android/inputmethod/latin/Settings;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 349
    check-cast v0, Landroid/app/Activity;

    .line 353
    .end local v0           #thisObject:Lcom/android/inputmethod/latin/Settings;
    :goto_0
    return-object v0

    .line 350
    .restart local v0       #thisObject:Lcom/android/inputmethod/latin/Settings;
    :cond_0
    instance-of v1, v0, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 351
    check-cast v0, Landroid/app/Fragment;

    .end local v0           #thisObject:Lcom/android/inputmethod/latin/Settings;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 353
    .restart local v0       #thisObject:Lcom/android/inputmethod/latin/Settings;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-super {p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 360
    const v0, 0x7f0b00ea

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->setInputMethodSettingsCategoryTitle(I)V

    .line 361
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->setSubtypeEnablerTitle(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 363
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v6

    .line 365
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->addPreferencesFromResource(I)V

    .line 366
    const-string v0, "subtype_settings"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 368
    const-string v0, "voice_mode"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 369
    const-string v0, "show_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

    .line 370
    const-string v0, "show_suggestions_setting"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 372
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 373
    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 375
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    .line 376
    const-string v0, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 379
    const-string v0, "auto_correction_threshold"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    .line 381
    const-string v0, "bigram_suggestion"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    .line 382
    const-string v0, "bigram_prediction"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    .line 383
    const-string v0, "debug_settings"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/inputmethod/latin/DebugSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 393
    const-string v0, "general_settings"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 395
    const-string v1, "correction_settings"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 397
    const-string v2, "misc_settings"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 400
    invoke-static {v5}, Lcom/android/inputmethod/latin/Settings$Values;->isShowSettingsKeyOption(Landroid/content/res/Resources;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 401
    iget-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mShowSettingsKeyPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    :cond_1
    const v8, 0x7f080004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 406
    if-nez v8, :cond_2

    .line 407
    iget-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_2
    invoke-static {v6}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_3

    .line 411
    const-string v8, "vibrate_on"

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    :cond_3
    const-string v8, "subtype_settings"

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    const v8, 0x7f080005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 420
    if-nez v8, :cond_4

    .line 421
    const-string v8, "popup_on"

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    :cond_4
    const v0, 0x7f080006

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 426
    if-nez v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_5
    const-string v0, "pref_key_preview_popup_dismiss_delay"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 435
    new-array v0, v10, [Ljava/lang/String;

    const v8, 0x7f0b0085

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    const v8, 0x7f0b0086

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 439
    const v8, 0x7f090007

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 441
    iget-object v9, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    new-array v9, v10, [Ljava/lang/String;

    const-string v10, "0"

    aput-object v10, v9, v4

    aput-object v8, v9, v3

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 445
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    invoke-static {v7, v5}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 449
    const-string v0, "configure_dictionaries_key"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 451
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 453
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 454
    if-gtz v3, :cond_7

    .line 455
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    :cond_7
    const v0, 0x7f080007

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 460
    if-eqz v0, :cond_8

    .line 461
    :cond_8
    const-string v0, "usability_study_mode"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_9

    .line 463
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_9
    const-string v0, "pref_vibration_duration_settings"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 469
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    .line 470
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/inputmethod/latin/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/Settings$1;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 478
    invoke-direct {p0, v7, v5}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 481
    :cond_a
    const-string v0, "pref_keypress_sound_volume"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    .line 483
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    .line 484
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/inputmethod/latin/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/Settings$2;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 492
    invoke-direct {p0, v7, v5}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 494
    :cond_b
    invoke-direct {p0, v7, v5}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 495
    return-void

    :cond_c
    move v0, v4

    .line 376
    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v11, 0x7f0b00cf

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 589
    packed-switch p1, :pswitch_data_0

    .line 629
    sget-object v5, Lcom/android/inputmethod/latin/Settings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown dialog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 591
    :pswitch_0
    new-instance v2, Lcom/android/inputmethod/latin/Settings$3;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/Settings$3;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 601
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b00cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 609
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 613
    .local v3, localeSupported:Z
    if-eqz v3, :cond_0

    .line 614
    new-array v5, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    const v6, 0x7f0b00d1

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 623
    .local v4, message:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 625
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    .line 626
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 618
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #message:Ljava/lang/CharSequence;
    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/CharSequence;

    const v6, 0x7f0b00ce

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "\n\n"

    aput-object v6, v5, v10

    const/4 v6, 0x4

    const v7, 0x7f0b00d1

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 517
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onDestroy()V

    .line 518
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 548
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/Utils;->getInputMethodId(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/Settings;->startActivity(Landroid/content/Intent;)V

    .line 552
    const/4 v0, 0x1

    .line 554
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 500
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onResume()V

    .line 501
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v0

    .line 502
    .local v0, isShortcutImeEnabled:Z
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 510
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 511
    return-void

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 522
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivityInternal()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 524
    const-string v2, "voice_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    if-nez v2, :cond_1

    .line 525
    const-string v2, "voice_mode"

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showVoiceConfirmation()V

    .line 536
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 537
    const-string v2, "voice_mode"

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 539
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 540
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 541
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 542
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 543
    return-void

    .line 529
    :cond_1
    const-string v2, "popup_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const-string v2, "pref_key_preview_popup_dismiss_delay"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 532
    .local v0, popupDismissDelay:Landroid/preference/ListPreference;
    if-eqz v0, :cond_0

    .line 533
    const-string v2, "popup_on"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 537
    .end local v0           #popupDismissDelay:Landroid/preference/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
