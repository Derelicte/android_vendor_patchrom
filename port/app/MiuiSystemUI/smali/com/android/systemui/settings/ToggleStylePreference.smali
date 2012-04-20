.class public Lcom/android/systemui/settings/ToggleStylePreference;
.super Landroid/preference/Preference;
.source "ToggleStylePreference.java"


# instance fields
.field private mCompact:Landroid/view/View;

.field private mCompactText:Landroid/view/View;

.field private mOnStyleClickListener:Landroid/view/View$OnClickListener;

.field private mSinglePage:Landroid/view/View;

.field private mSinglePageText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/android/systemui/settings/ToggleStylePreference$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleStylePreference$1;-><init>(Lcom/android/systemui/settings/ToggleStylePreference;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    .line 22
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleStylePreference;->setLayoutResource(I)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePageText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompact:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleStylePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->setSettingsFromUI()V

    return-void
.end method

.method private setSettingsFromUI()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->getStyle()I

    move-result v1

    .line 50
    .local v1, origStyle:I
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 54
    .local v0, newStyle:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_style"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleStylePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void

    .line 50
    .end local v0           #newStyle:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUIFromSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->getStyle()I

    move-result v0

    .line 72
    .local v0, style:I
    if-nez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePageText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePageText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getStyle()I
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompact:Landroid/view/View;

    .line 39
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;

    .line 40
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePage:Landroid/view/View;

    .line 41
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePageText:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleStylePreference;->setUIFromSettings()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mCompact:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePage:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
