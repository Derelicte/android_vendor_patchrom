.class public Lcom/miui/milk/ui/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mBackupIntervalText:Landroid/widget/TextView;

.field private mMax:I

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/milk/ui/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/SeekBarPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method

.method private getBackupInterval(I)Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/miui/milk/ui/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f07007d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x1d

    .line 70
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0a0014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 73
    .local v2, seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupInterval(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    .local v1, progress:I
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 75
    iput v1, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    .line 76
    iget v3, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    if-le v3, v4, :cond_0

    .line 77
    iput v4, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    .line 80
    :cond_0
    iget v3, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object v3, p0, Lcom/miui/milk/ui/SeekBarPreference;->mBackupIntervalText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/milk/ui/SeekBarPreference;->getBackupInterval(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 88
    .local v0, seekBar:Landroid/widget/SeekBar;
    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/milk/ui/SeekBarPreference;->mBackupIntervalText:Landroid/widget/TextView;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget v2, p0, Lcom/miui/milk/ui/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    :cond_0
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 36
    iput p2, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    .line 38
    if-nez p3, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/SeekBarPreference;->mBackupIntervalText:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/milk/ui/SeekBarPreference;->getBackupInterval(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupInterval(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 48
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/milk/ui/SeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
