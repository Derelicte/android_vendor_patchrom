.class public Lcom/miui/player/ui/controller/LyricMovementController;
.super Ljava/lang/Object;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;,
        Lcom/miui/player/ui/controller/LyricMovementController$LyricView;,
        Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;,
        Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastLyricLine:I

.field mLastPosition:J

.field mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private mLyricMode:I

.field mLyricStatus:I

.field final mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

.field private mOffsetLineNumArr:[I

.field private mOrginLastPosition:J

.field private mPrevisoucMoveEventHeight:I

.field private mScrollMode:I

.field private final mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

.field final mSlideAnimation:Lcom/miui/player/util/VerticalSlideAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/view/ExtendScrollView;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    .line 371
    iput v2, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 375
    new-instance v0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 34
    iput v2, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    .line 35
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    .line 36
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    new-instance v1, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;)V

    .line 37
    new-instance v0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    .line 39
    new-instance v0, Lcom/miui/player/util/VerticalSlideAnimation;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/util/VerticalSlideAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/util/VerticalSlideAnimation;

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/util/VerticalSlideAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/util/VerticalSlideAnimation;->setDuration(J)V

    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/util/VerticalSlideAnimation;

    new-instance v1, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/util/VerticalSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    return-void
.end method

.method private drawLyric(IILcom/miui/player/meta/LyricParser$LyricShot;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "lyricShot"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getOffsetNumArr(Lcom/miui/player/meta/LyricParser$Lyric;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->drawLyric(Lcom/miui/player/meta/LyricParser$Lyric;Lcom/miui/player/meta/LyricParser$LyricShot;II)V

    .line 247
    return-void
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lryicProgressModify(I)Z
    .locals 13
    .parameter "deltaHeight"

    .prologue
    .line 87
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v10, :cond_0

    .line 88
    const/4 v10, 0x0

    .line 129
    :goto_0
    return v10

    .line 91
    :cond_0
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    iget-wide v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    invoke-virtual {v10, v11, v12}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v4

    .line 92
    .local v4, lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    iget v10, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-gtz v10, :cond_1

    .line 93
    const/4 v10, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v10}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v2

    .line 96
    .local v2, lineHeight:F
    if-lez p1, :cond_2

    move v9, p1

    .line 97
    .local v9, tempHeight:I
    :goto_1
    int-to-float v10, v9

    cmpg-float v10, v10, v2

    if-gez v10, :cond_3

    .line 98
    const/4 v10, 0x0

    goto :goto_0

    .line 96
    .end local v9           #tempHeight:I
    :cond_2
    neg-int v9, p1

    goto :goto_1

    .line 100
    .restart local v9       #tempHeight:I
    :cond_3
    int-to-float v10, v9

    div-float/2addr v10, v2

    float-to-int v5, v10

    .line 101
    .local v5, moveLineNum:I
    const/4 v3, 0x0

    .line 102
    .local v3, lineIndex:I
    const/4 v1, 0x0

    .line 104
    .local v1, lineCount:I
    if-lez p1, :cond_6

    .line 105
    iget v0, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 106
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v11, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v11, v11, v0

    sub-int v1, v10, v11

    .line 107
    if-le v1, v5, :cond_5

    .line 108
    add-int/lit8 v3, v0, 0x1

    .line 109
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v11, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v12, v0, 0x1

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 124
    .end local v0           #i:I
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v3, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v11, v11, v3

    sub-int v6, v10, v11

    .line 125
    .local v6, offsetLine:I
    int-to-float v10, v9

    int-to-float v11, v1

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    div-float/2addr v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v7, v10

    .line 127
    .local v7, percent:D
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v10, v4, v3, v7, v8}, Lcom/miui/player/meta/LyricParser$Lyric;->correctLyric(Lcom/miui/player/meta/LyricParser$LyricShot;ID)V

    .line 128
    iget-wide v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    const/4 v12, 0x1

    invoke-virtual {p0, v10, v11, v12}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 129
    const/4 v10, 0x1

    goto :goto_0

    .line 105
    .end local v6           #offsetLine:I
    .end local v7           #percent:D
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 113
    .end local v0           #i:I
    :cond_6
    if-gez p1, :cond_4

    .line 114
    iget v0, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .restart local v0       #i:I
    :goto_4
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v10, v10

    if-ge v0, v10, :cond_4

    .line 115
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v10, v10, v0

    iget-object v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v12, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 116
    if-le v1, v5, :cond_7

    .line 117
    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v0, -0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v12, v4, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 118
    add-int/lit8 v3, v0, -0x1

    .line 119
    goto :goto_3

    .line 114
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private scrollLyric(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollY(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->setHintText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void
.end method

.method getScrollOffset(Lcom/miui/player/meta/LyricParser$LyricShot;IF)I
    .locals 14
    .parameter "lyricShot"
    .parameter "spaceLine"
    .parameter "lineHeight"

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, height:I
    iget v5, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .line 227
    .local v5, relIndex:I
    iget v6, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    add-int v1, v6, p2

    .line 228
    .local v1, absIndex:I
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    if-lt v1, v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v6, v6

    if-lt v1, v6, :cond_1

    .line 229
    :cond_0
    move/from16 v0, p3

    float-to-double v6, v0

    int-to-double v8, v5

    iget-wide v10, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 237
    :goto_0
    return v2

    .line 231
    :cond_1
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    sub-int v3, v6, v7

    .line 232
    .local v3, lineCount:I
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int v4, v6, p2

    .line 234
    .local v4, offsetLine:I
    move/from16 v0, p3

    float-to-double v6, v0

    int-to-double v8, v4

    iget-wide v10, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    int-to-double v12, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v2, v6

    goto :goto_0
.end method

.method public onVerticalScroll(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 46
    .local v0, action:I
    if-eq v0, v9, :cond_1

    .line 47
    if-ne v0, v5, :cond_0

    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    if-ne v3, v5, :cond_0

    .line 48
    iput v8, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    .line 49
    iput v8, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 50
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    iget-wide v4, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    iget-wide v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/player/meta/LyricParser$Lyric;->addOffset(I)V

    .line 51
    iput v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollMode:I

    .line 52
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v3, v8}, Lcom/miui/player/ui/view/ExtendScrollView;->setNeedFling(Z)V

    .line 79
    :cond_0
    :goto_0
    return v8

    .line 57
    :cond_1
    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v3, :cond_2

    .line 58
    iput v5, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 59
    iget-wide v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 63
    :cond_2
    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-ne v3, v5, :cond_4

    .line 65
    iput v5, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollMode:I

    .line 66
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v3}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollY()I

    move-result v1

    .line 67
    .local v1, eventheight:I
    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    if-gtz v3, :cond_3

    .line 68
    iput v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    .line 69
    iget-wide v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    iput-wide v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    .line 71
    :cond_3
    iget v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->lryicProgressModify(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iput v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    goto :goto_0

    .line 76
    .end local v1           #eventheight:I
    :cond_4
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 78
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 179
    return-void
.end method

.method public refreshLyric(JZ)V
    .locals 12
    .parameter "pos"
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    .line 182
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    if-nez v7, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-wide p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, isScrollAutoMode:Z
    iget v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 188
    const/4 v7, 0x0

    iput v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollMode:I

    .line 189
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v7, v11}, Lcom/miui/player/ui/view/ExtendScrollView;->setNeedFling(Z)V

    .line 190
    const/4 v1, 0x1

    .line 192
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollMode:I

    if-ne v7, v11, :cond_3

    if-eqz p3, :cond_0

    .line 196
    :cond_3
    const/4 v5, 0x3

    .line 197
    .local v5, spaceLine:I
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v7, p1, p2}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v3

    .line 198
    .local v3, lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    if-eqz v1, :cond_4

    .line 199
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    iget v8, v3, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/miui/player/meta/LyricParser$Lyric;->correctLyric(Lcom/miui/player/meta/LyricParser$LyricShot;ID)V

    .line 200
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v7, p1, p2}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v3

    .line 203
    :cond_4
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v7}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v2

    .line 204
    .local v2, lineHeight:F
    const/4 v6, -0x3

    .line 205
    .local v6, startLine:I
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v7}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v0

    .line 206
    .local v0, endLine:I
    iget v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-ne v7, v11, :cond_7

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 213
    :goto_1
    if-nez p3, :cond_5

    iget v7, v3, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    iget v8, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 214
    :cond_5
    iget v7, v3, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    iput v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 215
    invoke-direct {p0, v6, v0, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->drawLyric(IILcom/miui/player/meta/LyricParser$LyricShot;)V

    .line 218
    :cond_6
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricMovementController;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    const/4 v7, 0x3

    invoke-virtual {p0, v3, v7, v2}, Lcom/miui/player/ui/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/meta/LyricParser$LyricShot;IF)I

    move-result v4

    .line 220
    .local v4, scroll:I
    invoke-direct {p0, v4}, Lcom/miui/player/ui/controller/LyricMovementController;->scrollLyric(I)V

    goto :goto_0

    .line 209
    .end local v4           #scroll:I
    :cond_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V
    .locals 1
    .parameter "lyric"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eq v0, p1, :cond_1

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/miui/player/meta/LyricParser$Lyric;->decorate()V

    .line 142
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/ExtendScrollView;->reset()V

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 148
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 149
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
