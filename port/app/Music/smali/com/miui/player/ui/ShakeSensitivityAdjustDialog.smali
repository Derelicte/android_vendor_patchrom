.class public Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;
.super Landroid/preference/DialogPreference;
.source "ShakeSensitivityAdjustDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mProgress:I

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;-><init>(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 24
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->setDialogLayoutResource(I)V

    .line 25
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->setDialogTitle(I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    .line 27
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0c008b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 34
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 35
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 36
    const-string v3, "shake_degree"

    invoke-static {v0, v3}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    .local v2, sensitivity:I
    add-int/lit8 v3, v2, -0x5

    mul-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    .line 39
    iget v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 40
    iput-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mContext:Landroid/content/Context;

    const-string v1, "shake_degree"

    iget v2, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I

    invoke-static {v0, v1, v2}, Lcom/miui/player/util/PreferenceCache;->setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 49
    return-void
.end method
