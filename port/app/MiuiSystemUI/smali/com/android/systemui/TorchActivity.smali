.class public Lcom/android/systemui/TorchActivity;
.super Landroid/app/Activity;
.source "TorchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mHint:Landroid/widget/TextView;

.field private mStateObserver:Landroid/database/ContentObserver;

.field private mTorch:Landroid/widget/ImageView;

.field private mTorchLight:Landroid/widget/ImageView;

.field private mTorchOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private vibratePatternOff:[B

.field private vibratePatternOn:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/android/systemui/TorchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/TorchActivity$1;-><init>(Lcom/android/systemui/TorchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->mStateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/TorchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/TorchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/systemui/TorchActivity;->updateTorchState()V

    return-void
.end method

.method private addTorchMessageSpans(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const-string v3, "[icon]"

    .line 58
    .local v3, pattern:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 59
    .local v4, patternSize:I
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    .local v1, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 61
    .local v5, start:I
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x3020120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v2, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int v7, v5, v4

    const/16 v8, 0x11

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private getByteArray([I)[B
    .locals 3
    .parameter "from"

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 123
    const/4 v1, 0x0

    .line 131
    :cond_0
    return-object v1

    .line 126
    :cond_1
    array-length v2, p1

    new-array v1, v2, [B

    .line 127
    .local v1, to:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 128
    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateTorchState()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 87
    iget-object v3, p0, Lcom/android/systemui/TorchActivity;->mTorch:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02018c

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    iget-object v3, p0, Lcom/android/systemui/TorchActivity;->mTorchLight:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/TorchActivity;->mHint:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    return-void

    .line 87
    :cond_0
    const v0, 0x7f02018b

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_1

    :cond_2
    move v2, v1

    .line 91
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->mVibrator:Landroid/os/Vibrator;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/TorchActivity;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->vibratePatternOn:[B

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/TorchActivity;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->vibratePatternOff:[B

    .line 44
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->mTorch:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/TorchActivity;->mTorch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->mTorchLight:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/TorchActivity;->mHint:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/TorchActivity;->mHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/TorchActivity;->addTorchMessageSpans(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/TorchActivity;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/TorchActivity;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/TorchActivity;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 79
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/TorchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/systemui/TorchActivity;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v1, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/TorchActivity;->vibratePatternOff:[B

    :goto_0
    invoke-virtual {v4, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/TorchActivity;->mTorchOn:Z

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/TorchActivity;->updateTorchState()V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/TorchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return v2

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/TorchActivity;->vibratePatternOn:[B

    goto :goto_0

    :cond_3
    move v1, v3

    .line 110
    goto :goto_1
.end method
