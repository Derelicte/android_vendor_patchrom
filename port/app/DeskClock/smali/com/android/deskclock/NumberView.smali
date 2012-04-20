.class public Lcom/android/deskclock/NumberView;
.super Landroid/widget/LinearLayout;
.source "NumberView.java"


# instance fields
.field private final COUNT_NUMBERS:I

.field private final COUNT_NUMBERS_IMAGEVIEW:I

.field private final INDEX_COLON:I

.field private final INDEX_COLON_HOUR_MINUTE:I

.field private final INDEX_COLON_MINUTE_SECOND:I

.field private final INDEX_HOUR1:I

.field private final INDEX_HOUR2:I

.field private final INDEX_MINUTE1:I

.field private final INDEX_MINUTE2:I

.field private final INDEX_SECOND1:I

.field private final INDEX_SECOND2:I

.field private mBigNumberIds:[I

.field private mHour:I

.field private mHourText:Landroid/widget/TextView;

.field private mIsTimerMode:Z

.field private mMediumNumberIds:[I

.field private mMinute:I

.field private mMinuteText:Landroid/widget/TextView;

.field private mNumbers:[Landroid/widget/ImageView;

.field private mSecond:I

.field private mTutorial:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/NumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/NumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v6, p0, Lcom/android/deskclock/NumberView;->COUNT_NUMBERS_IMAGEVIEW:I

    .line 26
    iput v5, p0, Lcom/android/deskclock/NumberView;->INDEX_HOUR1:I

    .line 27
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/deskclock/NumberView;->INDEX_HOUR2:I

    .line 28
    iput v7, p0, Lcom/android/deskclock/NumberView;->INDEX_COLON_HOUR_MINUTE:I

    .line 29
    iput v8, p0, Lcom/android/deskclock/NumberView;->INDEX_MINUTE1:I

    .line 30
    iput v9, p0, Lcom/android/deskclock/NumberView;->INDEX_MINUTE2:I

    .line 31
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/deskclock/NumberView;->INDEX_COLON_MINUTE_SECOND:I

    .line 32
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/deskclock/NumberView;->INDEX_SECOND1:I

    .line 33
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/deskclock/NumberView;->INDEX_SECOND2:I

    .line 35
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/deskclock/NumberView;->COUNT_NUMBERS:I

    .line 36
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/deskclock/NumberView;->INDEX_COLON:I

    .line 48
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    .line 49
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    const v3, 0x7f0d0014

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/deskclock/NumberView;->addView(Landroid/view/View;)V

    .line 51
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 52
    new-array v2, v6, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p0, v5}, Lcom/android/deskclock/NumberView;->setOrientation(I)V

    .line 54
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/android/deskclock/NumberView;->setGravity(I)V

    .line 55
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    const v3, 0x7f0d0013

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    const v3, 0x7f0b0066

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    const v3, 0x7f0d0013

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 66
    if-ne v0, v7, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/deskclock/NumberView;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 72
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/deskclock/NumberView;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/deskclock/NumberView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    const/16 v2, 0xb

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    .line 79
    const/16 v2, 0xb

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    .line 80
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const v3, 0x7f020081

    aput v3, v2, v5

    .line 81
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/4 v3, 0x1

    const v4, 0x7f020082

    aput v4, v2, v3

    .line 82
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const v3, 0x7f020083

    aput v3, v2, v7

    .line 83
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const v3, 0x7f020084

    aput v3, v2, v8

    .line 84
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const v3, 0x7f020085

    aput v3, v2, v9

    .line 85
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/4 v3, 0x5

    const v4, 0x7f020086

    aput v4, v2, v3

    .line 86
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/4 v3, 0x6

    const v4, 0x7f020087

    aput v4, v2, v3

    .line 87
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/4 v3, 0x7

    const v4, 0x7f020088

    aput v4, v2, v3

    .line 88
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const v3, 0x7f020089

    aput v3, v2, v6

    .line 89
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/16 v3, 0x9

    const v4, 0x7f02008a

    aput v4, v2, v3

    .line 90
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    const/16 v3, 0xa

    const v4, 0x7f02008b

    aput v4, v2, v3

    .line 91
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const v3, 0x7f020075

    aput v3, v2, v5

    .line 92
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/4 v3, 0x1

    const v4, 0x7f020076

    aput v4, v2, v3

    .line 93
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const v3, 0x7f020077

    aput v3, v2, v7

    .line 94
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const v3, 0x7f020078

    aput v3, v2, v8

    .line 95
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const v3, 0x7f020079

    aput v3, v2, v9

    .line 96
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/4 v3, 0x5

    const v4, 0x7f02007a

    aput v4, v2, v3

    .line 97
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/4 v3, 0x6

    const v4, 0x7f02007b

    aput v4, v2, v3

    .line 98
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/4 v3, 0x7

    const v4, 0x7f02007c

    aput v4, v2, v3

    .line 99
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const v3, 0x7f02007d

    aput v3, v2, v6

    .line 100
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/16 v3, 0x9

    const v4, 0x7f02007e

    aput v4, v2, v3

    .line 101
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    const/16 v3, 0xa

    const v4, 0x7f02007f

    aput v4, v2, v3

    .line 102
    return-void
.end method

.method private updateNumbersVisibility()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 105
    iget v4, p0, Lcom/android/deskclock/NumberView;->mHour:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/deskclock/NumberView;->mMinute:I

    if-lez v4, :cond_1

    :cond_0
    move v1, v3

    .line 106
    .local v1, minVis:I
    :goto_0
    iget v4, p0, Lcom/android/deskclock/NumberView;->mHour:I

    if-gtz v4, :cond_2

    move v0, v2

    .line 107
    .local v0, hourVis:I
    :goto_1
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-boolean v4, p0, Lcom/android/deskclock/NumberView;->mIsTimerMode:Z

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_2
    return-void

    .end local v0           #hourVis:I
    .end local v1           #minVis:I
    :cond_1
    move v1, v2

    .line 105
    goto :goto_0

    .restart local v1       #minVis:I
    :cond_2
    move v0, v3

    .line 106
    goto :goto_1

    .line 120
    .restart local v0       #hourVis:I
    :cond_3
    iget-object v4, p0, Lcom/android/deskclock/NumberView;->mTutorial:Landroid/widget/TextView;

    if-ne v1, v2, :cond_4

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 120
    goto :goto_3
.end method


# virtual methods
.method public getPrimaryHeight()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/deskclock/NumberView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getPrimaryWidth()I
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/deskclock/NumberView;->mIsTimerMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/NumberView;->mHour:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/NumberView;->mHour:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/deskclock/NumberView;->mMinute:I

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/NumberView;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/NumberView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mMinuteText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public setIsTimerMode(Z)V
    .locals 0
    .parameter "isTimerMode"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/deskclock/NumberView;->mIsTimerMode:Z

    .line 143
    invoke-direct {p0}, Lcom/android/deskclock/NumberView;->updateNumbersVisibility()V

    .line 144
    return-void
.end method

.method public setTime(III)V
    .locals 2
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/deskclock/NumberView;->mHour:I

    .line 134
    iget v0, p0, Lcom/android/deskclock/NumberView;->mHour:I

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/android/deskclock/NumberView;->mHour:I

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/deskclock/NumberView;->mHour:I

    .line 137
    :cond_0
    iput p2, p0, Lcom/android/deskclock/NumberView;->mMinute:I

    .line 138
    iput p3, p0, Lcom/android/deskclock/NumberView;->mSecond:I

    .line 139
    return-void
.end method

.method public showTime()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 147
    iget v1, p0, Lcom/android/deskclock/NumberView;->mHour:I

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/NumberView;->mMediumNumberIds:[I

    .line 148
    .local v0, nums:[I
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mHour:I

    div-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mHour:I

    rem-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mMinute:I

    div-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mMinute:I

    rem-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mSecond:I

    div-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v1, p0, Lcom/android/deskclock/NumberView;->mNumbers:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/deskclock/NumberView;->mSecond:I

    rem-int/lit8 v2, v2, 0xa

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    return-void

    .line 147
    .end local v0           #nums:[I
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/NumberView;->mBigNumberIds:[I

    goto :goto_0
.end method
