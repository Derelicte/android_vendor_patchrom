.class public Lcom/android/deskclock/TimezoneAnalogClock;
.super Landroid/view/View;
.source "TimezoneAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private mSeconds:F

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/TimezoneAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/TimezoneAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 61
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 63
    iget-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialWidth:I

    .line 64
    iget-object v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialHeight:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/TimezoneAnalogClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/TimezoneAnalogClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/TimezoneAnalogClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/TimezoneAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/deskclock/TimezoneAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 213
    iget-object v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 215
    iget-object v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 216
    .local v0, hour:I
    iget-object v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 217
    .local v1, minute:I
    iget-object v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 219
    .local v2, second:I
    int-to-float v3, v2

    iput v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mSeconds:F

    .line 220
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinutes:F

    .line 221
    int-to-float v3, v0

    iget v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHour:F

    .line 222
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mChanged:Z

    .line 224
    iget-object v3, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Lcom/android/deskclock/TimezoneAnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 225
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 8
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 228
    const/16 v1, 0x81

    .line 229
    .local v1, flags:I
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    const/16 v7, 0x81

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, contentDescription:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/TimezoneAnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 234
    .local v3, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHour:F

    const/high16 v5, 0x40c0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHour:F

    const/high16 v5, 0x4190

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 235
    .local v2, isNight:Z
    :cond_1
    if-eqz v2, :cond_2

    const v4, 0x7f02002e

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 236
    if-eqz v2, :cond_3

    const v4, 0x7f020030

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 237
    if-eqz v2, :cond_4

    const v4, 0x7f020032

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 238
    const v4, 0x7f020033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void

    .line 235
    :cond_2
    const v4, 0x7f02002d

    goto :goto_0

    .line 236
    :cond_3
    const v4, 0x7f02002f

    goto :goto_1

    .line 237
    :cond_4
    const v4, 0x7f020031

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTickerStopped:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/android/deskclock/TimezoneAnalogClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/TimezoneAnalogClock$1;-><init>(Lcom/android/deskclock/TimezoneAnalogClock;)V

    iput-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTicker:Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    invoke-direct {p0}, Lcom/android/deskclock/TimezoneAnalogClock;->onTimeChanged()V

    .line 98
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 103
    iget-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mAttached:Z

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mTickerStopped:Z

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 142
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mChanged:Z

    .line 145
    .local v6, changed:Z
    if-eqz v6, :cond_0

    .line 146
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/deskclock/TimezoneAnalogClock;->mChanged:Z

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mLeft:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 150
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mTop:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 152
    .local v4, availableHeight:I
    div-int/lit8 v15, v5, 0x2

    .line 153
    .local v15, x:I
    div-int/lit8 v16, v4, 0x2

    .line 155
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 156
    .local v7, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 157
    .local v14, w:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 159
    .local v8, h:I
    const/4 v12, 0x0

    .line 161
    .local v12, scaled:Z
    if-lt v5, v14, :cond_1

    if-ge v4, v8, :cond_2

    .line 162
    :cond_1
    const/4 v12, 0x1

    .line 163
    int-to-float v0, v5

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 165
    .local v11, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    .end local v11           #scale:F
    :cond_2
    if-eqz v6, :cond_3

    .line 170
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x4140

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 177
    .local v9, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 178
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 179
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 180
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 188
    .local v10, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 189
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 190
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 191
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mSeconds:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/TimezoneAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 199
    .local v13, secondHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 200
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 201
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 202
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 207
    if-eqz v12, :cond_7

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 210
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 113
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 114
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 115
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 117
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 118
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 120
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 121
    int-to-float v7, v6

    iget v8, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 125
    int-to-float v7, v2

    iget v8, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 128
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 130
    .local v3, scale:F
    iget v7, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/android/deskclock/TimezoneAnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/android/deskclock/TimezoneAnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/deskclock/TimezoneAnalogClock;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mChanged:Z

    .line 138
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 1
    .parameter "timezoneId"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/deskclock/TimezoneAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 70
    invoke-direct {p0}, Lcom/android/deskclock/TimezoneAnalogClock;->onTimeChanged()V

    .line 71
    invoke-virtual {p0}, Lcom/android/deskclock/TimezoneAnalogClock;->invalidate()V

    .line 73
    :cond_0
    return-void
.end method
