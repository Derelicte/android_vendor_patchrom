.class public Lcom/android/systemui/statusbar/phone/BatteryIndicator;
.super Landroid/widget/ImageView;
.source "BatteryIndicator.java"


# instance fields
.field private mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

.field private mClipWidth:I

.field protected mDisabled:Z

.field protected mIconId:I

.field protected mIconLevel:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsCharging:Z

.field protected mLowLevel:I

.field protected mScreenIsOn:Z

.field private mShowBatteryIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mScreenIsOn:Z

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator$2;-><init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateBatterySettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDrawable()V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->invalidate()V

    goto :goto_0
.end method

.method private updateBatterySettings()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_indicator_style"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateVisibility()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_level_low_customized"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 137
    return-void
.end method


# virtual methods
.method public disable(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    if-ne v0, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateVisibility()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 80
    .local v1, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mScreenIsOn:Z

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateBatterySettings()V

    .line 83
    new-instance v2, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_indicator_style"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_level_low_customized"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateCanvas(Landroid/graphics/Canvas;)V

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 61
    :cond_0
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIconLevel:I

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 34
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIconId:I

    .line 38
    const v0, 0x7f02008c

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIconId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mTop:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 73
    return-void
.end method

.method protected updateDrawable()V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIconLevel:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIconLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    if-lt v0, v1, :cond_1

    :cond_0
    const v0, 0x7f020003

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-void

    .line 50
    :cond_1
    const v0, 0x7f020005

    goto :goto_0
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->clearAnimation()V

    goto :goto_0
.end method
