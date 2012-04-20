.class public Lcom/android/deskclock/StopwatchChronometer;
.super Landroid/widget/LinearLayout;
.source "StopwatchChronometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/StopwatchChronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final DIGITAL_RES_IDS:[I


# instance fields
.field private mAttached:Z

.field private mBase:J

.field private mFifthDigital:Landroid/widget/ImageView;

.field private mFirstDigital:Landroid/widget/ImageView;

.field private mFouthDigital:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHoursTextView:Landroid/widget/TextView;

.field private mOnChronometerTickListener:Lcom/android/deskclock/StopwatchChronometer$OnChronometerTickListener;

.field private mRunning:Z

.field private mSecondDigital:Landroid/widget/ImageView;

.field private mStarted:Z

.field private mThirdDigital:Landroid/widget/ImageView;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/StopwatchChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance v0, Lcom/android/deskclock/StopwatchChronometer$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/StopwatchChronometer$1;-><init>(Lcom/android/deskclock/StopwatchChronometer;)V

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/StopwatchChronometer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/StopwatchChronometer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/StopwatchChronometer;->updateText(J)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mBase:J

    .line 60
    iget-wide v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/StopwatchChronometer;->updateText(J)V

    .line 61
    return-void
.end method

.method private updateRunning()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 156
    iget-boolean v1, p0, Lcom/android/deskclock/StopwatchChronometer;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/deskclock/StopwatchChronometer;->mStarted:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, running:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/deskclock/StopwatchChronometer;->mRunning:Z

    if-eq v0, v1, :cond_0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/StopwatchChronometer;->updateText(J)V

    .line 160
    invoke-virtual {p0}, Lcom/android/deskclock/StopwatchChronometer;->dispatchChronometerTick()V

    .line 161
    iget-object v1, p0, Lcom/android/deskclock/StopwatchChronometer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/deskclock/StopwatchChronometer;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 165
    :goto_1
    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mRunning:Z

    .line 167
    :cond_0
    return-void

    .line 156
    .end local v0           #running:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .restart local v0       #running:Z
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/StopwatchChronometer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 12
    .parameter "now"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mBase:J

    sub-long v4, p1, v6

    .line 136
    .local v4, timeInMilliSeconds:J
    const-wide/32 v6, 0x36ee80

    div-long v6, v4, v6

    long-to-int v0, v6

    .line 137
    .local v0, hour:I
    const-wide/32 v6, 0x36ee80

    rem-long v6, v4, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 138
    .local v2, minutes:I
    const-wide/32 v6, 0xea60

    rem-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 139
    .local v3, seconds:I
    const-wide/16 v6, 0x3e8

    rem-long v6, v4, v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 141
    .local v1, milliSeconds:I
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mFirstDigital:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    div-int/lit8 v8, v2, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mSecondDigital:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    rem-int/lit8 v8, v2, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mThirdDigital:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    div-int/lit8 v8, v3, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mFouthDigital:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    rem-int/lit8 v8, v3, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mFifthDigital:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/deskclock/StopwatchChronometer;->DIGITAL_RES_IDS:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    if-lez v0, :cond_0

    .line 148
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mHoursTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mHoursTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/deskclock/StopwatchChronometer;->mContext:Landroid/content/Context;

    const v8, 0x7f0b005b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/deskclock/StopwatchChronometer;->mHoursTextView:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v0           #hour:I
    .end local v1           #milliSeconds:I
    .end local v2           #minutes:I
    .end local v3           #seconds:I
    .end local v4           #timeInMilliSeconds:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mOnChronometerTickListener:Lcom/android/deskclock/StopwatchChronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mOnChronometerTickListener:Lcom/android/deskclock/StopwatchChronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Lcom/android/deskclock/StopwatchChronometer$OnChronometerTickListener;->onChronometerTick(Lcom/android/deskclock/StopwatchChronometer;)V

    .line 183
    :cond_0
    return-void
.end method

.method public getBase()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mBase:J

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 87
    iget-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mAttached:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mAttached:Z

    .line 89
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchChronometer;->init()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mVisible:Z

    .line 124
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchChronometer;->updateRunning()V

    .line 125
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    const v0, 0x7f0f0029

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mFirstDigital:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mSecondDigital:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mThirdDigital:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mFouthDigital:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mFifthDigital:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/android/deskclock/StopwatchChronometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mHoursTextView:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 130
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mVisible:Z

    .line 131
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchChronometer;->updateRunning()V

    .line 132
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBase(J)V
    .locals 2
    .parameter "base"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/deskclock/StopwatchChronometer;->mBase:J

    .line 94
    invoke-virtual {p0}, Lcom/android/deskclock/StopwatchChronometer;->dispatchChronometerTick()V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/StopwatchChronometer;->updateText(J)V

    .line 96
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mStarted:Z

    .line 112
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchChronometer;->updateRunning()V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/StopwatchChronometer;->mStarted:Z

    .line 117
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchChronometer;->updateRunning()V

    .line 118
    return-void
.end method
