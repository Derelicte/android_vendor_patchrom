.class public Lcom/android/calendar/month/MonthWeekEventsView;
.super Lcom/android/calendar/month/SimpleWeekView;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;,
        Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static CONFLICT_COLOR:I

.field private static DAY_SEPARATOR_INNER_WIDTH:I

.field private static DAY_SEPARATOR_OUTER_WIDTH:I

.field private static DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

.field private static DAY_SEPARATOR_VERTICAL_LENGTH:I

.field private static DEFAULT_EDGE_SPACING:I

.field private static DNA_ALL_DAY_HEIGHT:I

.field private static DNA_ALL_DAY_WIDTH:I

.field private static DNA_MARGIN:I

.field private static DNA_MIN_SEGMENT_HEIGHT:I

.field private static DNA_SIDE_PADDING:I

.field private static DNA_WIDTH:I

.field private static EVENT_BOTTOM_PADDING:I

.field private static EVENT_LINE_EXTRA_PADDING:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RIGHT_PADDING:I

.field private static EVENT_SQUARE_BORDER:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_X_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_PORTRAIT:I

.field private static MIN_WEEK_WIDTH:I

.field private static SIDE_PADDING_MONTH_NUMBER:I

.field private static SIDE_PADDING_WEEK_NUMBER:I

.field private static SPACING_WEEK_NUMBER:I

.field private static TEXT_SIZE_EVENT:I

.field private static TEXT_SIZE_EVENT_TITLE:I

.field private static TEXT_SIZE_MONTH_LUNAR:I

.field private static TEXT_SIZE_MONTH_NAME:I

.field private static TEXT_SIZE_MONTH_NUMBER:I

.field private static TEXT_SIZE_MORE_EVENTS:I

.field private static TEXT_SIZE_WEEK_NUM:I

.field private static TODAY_HIGHLIGHT_WIDTH:I

.field private static TOP_PADDING_MONTH_NUMBER:I

.field private static TOP_PADDING_WEEK_NUMBER:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mScaled:Z

.field private static mShowDetailsInMonth:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

.field protected mDNAAllDayPaint:Landroid/graphics/Paint;

.field protected mDNATimePaint:Landroid/graphics/Paint;

.field protected mDaySeparatorInnerColor:I

.field private mDayXs:[I

.field protected mDeclinedEventPaint:Landroid/text/TextPaint;

.field mDna:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventChipOutlineColor:I

.field protected mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

.field protected mEventExtrasPaint:Landroid/text/TextPaint;

.field protected mEventHeight:I

.field protected mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

.field protected mEventPaint:Landroid/text/TextPaint;

.field protected mEventSquarePaint:Landroid/graphics/Paint;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHasToday:Z

.field protected mMonthBGColor:I

.field protected mMonthBGOtherColor:I

.field protected mMonthBGTodayColor:I

.field protected mMonthBusyBitsBusyTimeColor:I

.field protected mMonthBusyBitsConflictTimeColor:I

.field protected mMonthDeclinedEventColor:I

.field protected mMonthDeclinedExtrasColor:I

.field protected mMonthEventColor:I

.field protected mMonthEventExtraColor:I

.field protected mMonthEventExtraOtherColor:I

.field protected mMonthEventOtherColor:I

.field protected mMonthNameColor:I

.field protected mMonthNameOtherColor:I

.field protected mMonthNumColor:I

.field protected mMonthNumHeight:I

.field protected mMonthNumOtherColor:I

.field protected mMonthNumTodayColor:I

.field protected mMonthWeekNumColor:I

.field protected mOrientation:I

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayAnimateColor:I

.field private mTodayAnimator:Landroid/animation/ObjectAnimator;

.field protected mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTodayIndex:I

.field protected mUnsortedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeekNumHeight:I

.field protected mWeekNumPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x4

    .line 64
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 65
    const/16 v0, 0x1b

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_LUNAR:I

    .line 66
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 67
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 68
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 69
    sput v5, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 70
    sput v4, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 72
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 73
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 74
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 75
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 76
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 77
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 78
    const/high16 v0, -0x100

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 80
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 81
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 82
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 83
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 84
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 85
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 87
    const/16 v0, 0x35

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 88
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 89
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    .line 91
    const/16 v0, 0x26

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 92
    const/16 v0, 0xb

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 93
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 94
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 95
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 96
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 97
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_EXTRA_PADDING:I

    .line 98
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 99
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 101
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 103
    const/16 v0, 0x18

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 104
    sput-boolean v3, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 122
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    .line 108
    iput-boolean v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 109
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 111
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 112
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 116
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    const/16 v1, 0x460

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    .line 161
    iput v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventChipOutlineColor:I

    .line 166
    iput v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 167
    iput-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 169
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthWeekEventsView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/month/MonthWeekEventsView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/calendar/month/MonthWeekEventsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/month/MonthWeekEventsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    return p1
.end method

.method private computeDayLeftPosition(I)I
    .locals 5
    .parameter "day"

    .prologue
    .line 544
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    .line 545
    .local v0, effectiveWidth:I
    const/4 v1, 0x0

    .line 546
    .local v1, x:I
    const/4 v2, 0x0

    .line 547
    .local v2, xOffset:I
    iget-boolean v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v3, :cond_0

    .line 548
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int v2, v3, v4

    .line 549
    sub-int/2addr v0, v2

    .line 551
    :cond_0
    mul-int v3, p1, v0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v3, v4

    add-int v1, v3, v2

    .line 552
    return v1
.end method


# virtual methods
.method public createDna(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, unsortedEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v4, 0x0

    .line 260
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->MIN_WEEK_WIDTH:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 264
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    iput-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    .line 271
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 273
    .local v9, numDays:I
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 274
    .local v8, effectiveWidth:I
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v0, :cond_3

    .line 275
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v8, v0

    .line 277
    :cond_3
    div-int v0, v8, v9

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 278
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    .line 280
    const/4 v7, 0x0

    .local v7, day:I
    :goto_1
    if-ge v7, v9, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-direct {p0, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    add-int/2addr v1, v4

    aput v1, v0, v7

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 285
    :cond_4
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    .line 286
    .local v2, top:I
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sub-int v3, v0, v1

    .line 287
    .local v3, bottom:I
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, i:I
    const/4 v1, 0x0

    .line 595
    .local v1, offset:I
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 596
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 597
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v2, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x1

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_5

    .line 602
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 605
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 606
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 619
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v2, :cond_4

    .line 620
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 622
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 623
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 625
    :cond_4
    return-void

    .line 609
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    .line 610
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_7

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_6

    .line 612
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 614
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 615
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sub-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 616
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawDNA(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 810
    .local v9, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    if-eq v0, v1, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_0

    .line 818
    .end local v9           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Utils$DNAStrand;

    .line 819
    .restart local v9       #strand:Lcom/android/calendar/Utils$DNAStrand;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v1, v9, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 823
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    if-nez v0, :cond_4

    .line 840
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_3
    return-void

    .line 826
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    array-length v8, v0

    .line 827
    .local v8, numDays:I
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    .line 828
    .local v10, xOffset:I
    if-eqz v9, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    array-length v0, v0

    if-ne v0, v8, :cond_3

    .line 829
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 832
    iget-object v0, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v0, v0, v6

    if-eqz v0, :cond_5

    .line 833
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v1, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayXs:[I

    aget v0, v0, v6

    add-int/2addr v0, v10

    int-to-float v3, v0

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 829
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 557
    const/16 v9, 0x20

    new-array v3, v9, [F

    .line 558
    .local v3, lines:[F
    const/16 v0, 0x18

    .line 559
    .local v0, count:I
    const/4 v4, 0x0

    .line 560
    .local v4, wkNumOffset:I
    const/4 v1, 0x0

    .line 561
    .local v1, i:I
    iget-boolean v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v9, :cond_0

    .line 563
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int v6, v9, v10

    .line 564
    .local v6, xOffset:I
    add-int/lit8 v0, v0, 0x4

    .line 565
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 566
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 567
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v6

    aput v9, v3, v1

    .line 568
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    int-to-float v9, v9

    aput v9, v3, v2

    .line 569
    add-int/lit8 v4, v4, 0x1

    .line 571
    .end local v6           #xOffset:I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 572
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput v11, v3, v1

    .line 573
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 574
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    int-to-float v9, v9

    aput v9, v3, v1

    .line 575
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v11, v3, v2

    .line 576
    const/4 v7, 0x0

    .line 577
    .local v7, y0:I
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    .local v8, y1:I
    move v2, v1

    .line 579
    .end local v1           #i:I
    .restart local v2       #i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 580
    div-int/lit8 v9, v2, 0x4

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v5

    .line 581
    .local v5, x:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 582
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v7

    aput v9, v3, v1

    .line 583
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    int-to-float v9, v5

    aput v9, v3, v2

    .line 584
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    int-to-float v9, v8

    aput v9, v3, v1

    goto :goto_0

    .line 586
    .end local v5           #x:I
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 588
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v0, v10}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 589
    return-void
.end method

.method protected drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZ)I
    .locals 19
    .parameter "canvas"
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "rightEdge"
    .parameter "moreEvents"

    .prologue
    .line 737
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    add-int v13, v1, v2

    .line 738
    .local v13, requiredSpace:I
    const/4 v12, 0x1

    .line 739
    .local v12, multiplier:I
    if-eqz p6, :cond_0

    .line 740
    add-int/lit8 v12, v12, 0x1

    .line 742
    :cond_0
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_1

    .line 743
    add-int/lit8 v12, v12, 0x1

    .line 745
    :cond_1
    mul-int/2addr v13, v12

    .line 748
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    sub-int/2addr v13, v1

    .line 749
    add-int v1, v13, p4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_3

    .line 786
    .end local p4
    :goto_1
    return p4

    .line 748
    .restart local p4
    :cond_2
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    goto :goto_0

    .line 753
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move/from16 v0, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v2, v2, p3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move/from16 v0, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v2, v2, p4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 757
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v11, 0x1

    .line 758
    .local v11, isDeclined:Z
    :goto_2
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendar/Event;->color:I

    .line 759
    .local v10, color:I
    if-eqz v11, :cond_4

    .line 760
    invoke-static {v10}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v10

    .line 762
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    if-nez v1, :cond_7

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 765
    .local v14, style:Landroid/graphics/Paint$Style;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 768
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v1, v1, p3

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    add-int v16, v1, v2

    .line 769
    .local v16, textX:I
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v17, p4, v1

    .line 770
    .local v17, textY:I
    sub-int v1, p5, v16

    int-to-float v9, v1

    .line 771
    .local v9, avail:F
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v9, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 773
    .local v15, text:Ljava/lang/CharSequence;
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 775
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_EXTRA_PADDING:I

    add-int/2addr v1, v2

    add-int v17, v17, v1

    .line 777
    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    const v7, 0x80001

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v15

    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v15, v1, v9, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 782
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 786
    :cond_5
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int p4, v17, v1

    goto/16 :goto_1

    .line 757
    .end local v9           #avail:F
    .end local v10           #color:I
    .end local v11           #isDeclined:Z
    .end local v14           #style:Landroid/graphics/Paint$Style;
    .end local v15           #text:Ljava/lang/CharSequence;
    .end local v16           #textX:I
    .end local v17           #textY:I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 763
    .restart local v10       #color:I
    .restart local v11       #isDeclined:Z
    :cond_7
    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_3

    .line 773
    .restart local v9       #avail:F
    .restart local v14       #style:Landroid/graphics/Paint$Style;
    .restart local v15       #text:Ljava/lang/CharSequence;
    .restart local v16       #textX:I
    .restart local v17       #textY:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    goto :goto_4

    .line 782
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    goto :goto_5
.end method

.method protected drawEvents(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-nez v0, :cond_1

    .line 722
    :cond_0
    return-void

    .line 688
    :cond_1
    const/4 v7, -0x1

    .line 689
    .local v7, day:I
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 690
    .local v9, eventDay:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    add-int/lit8 v7, v7, 0x1

    .line 691
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    invoke-direct {p0, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 696
    .local v3, xSquare:I
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v5

    .line 698
    .local v5, rightEdge:I
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 699
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v4, v0, v1

    .line 700
    .local v4, ySquare:I
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v5, v0

    .line 705
    :goto_1
    const/4 v8, 0x0

    .line 706
    .local v8, eventCount:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 707
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 709
    .local v2, event:Lcom/android/calendar/Event;
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZ)I

    move-result v12

    .line 710
    .local v12, newY:I
    if-ne v12, v4, :cond_5

    .line 717
    .end local v2           #event:Lcom/android/calendar/Event;
    .end local v12           #newY:I
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v13, v0, v8

    .line 718
    .local v13, remaining:I
    if-lez v13, :cond_2

    .line 719
    invoke-virtual {p0, p1, v13, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->drawMoreEvents(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 702
    .end local v4           #ySquare:I
    .end local v8           #eventCount:I
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v13           #remaining:I
    :cond_4
    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 703
    .restart local v4       #ySquare:I
    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    sub-int/2addr v5, v0

    goto :goto_1

    .line 713
    .restart local v2       #event:Lcom/android/calendar/Event;
    .restart local v8       #eventCount:I
    .restart local v11       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v12       #newY:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 714
    move v4, v12

    .line 715
    goto :goto_2
.end method

.method protected drawMoreEvents(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "remainingEvents"
    .parameter "x"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 790
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    sub-int v1, v2, v3

    .line 791
    .local v1, y:I
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 794
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 795
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 796
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 797
    return-void
.end method

.method protected drawToday(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 529
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 530
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 531
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 533
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 534
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 536
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 538
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 539
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 631
    const/4 v1, 0x0

    .line 632
    .local v1, i:I
    const/4 v5, -0x1

    .line 633
    .local v5, offset:I
    iget v7, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 634
    .local v7, todayIndex:I
    const/4 v8, 0x0

    .line 635
    .local v8, x:I
    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    .line 636
    .local v4, numCount:I
    iget-boolean v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v10, :cond_0

    .line 637
    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    iget v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int v8, v10, v11

    .line 638
    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumHeight:I

    sget v11, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    add-int v9, v10, v11

    .line 639
    .local v9, y:I
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 640
    add-int/lit8 v4, v4, 0x1

    .line 641
    add-int/lit8 v1, v1, 0x1

    .line 642
    add-int/lit8 v7, v7, 0x1

    .line 643
    add-int/lit8 v5, v5, 0x1

    .line 647
    .end local v9           #y:I
    :cond_0
    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    sget v11, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int v9, v10, v11

    .line 649
    .restart local v9       #y:I
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v3, v10, v1

    .line 650
    .local v3, isFocusMonth:Z
    const/4 v2, 0x0

    .line 651
    .local v2, isBold:Z
    iget-object v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_4

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_0
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    :goto_1
    if-ge v1, v4, :cond_8

    .line 653
    iget-boolean v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v10, :cond_6

    if-ne v7, v1, :cond_6

    .line 654
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 656
    add-int/lit8 v10, v1, 0x1

    if-ge v10, v4, :cond_1

    .line 659
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    add-int/lit8 v11, v1, 0x1

    aget-boolean v10, v10, v11

    if-nez v10, :cond_5

    const/4 v3, 0x1

    .line 665
    :cond_1
    :goto_2
    sub-int v10, v1, v5

    invoke-direct {p0, v10}, Lcom/android/calendar/month/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v10

    sget v11, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    sub-int v8, v10, v11

    .line 666
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    aget-object v10, v10, v1

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 667
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 669
    .local v0, c:Ljava/util/Calendar;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 670
    .local v6, t:Landroid/text/format/Time;
    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 671
    iget v10, v6, Landroid/text/format/Time;->year:I

    iget v11, v6, Landroid/text/format/Time;->month:I

    iget v12, v6, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v10, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 672
    const/4 v10, 0x5

    add-int/lit8 v11, v1, 0x7

    sub-int/2addr v11, v4

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 673
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v11, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_LUNAR:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 674
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/calendar/Utils;->getLunarDayString(Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v8

    sget v12, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    add-int/2addr v12, v9

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 675
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v11, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 677
    .end local v0           #c:Ljava/util/Calendar;
    .end local v6           #t:Landroid/text/format/Time;
    :cond_2
    if-eqz v2, :cond_3

    .line 678
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 652
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 651
    :cond_4
    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto/16 :goto_0

    .line 659
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 661
    :cond_6
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v10, v10, v1

    if-eq v10, v3, :cond_1

    .line 662
    iget-object v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v3, v10, v1

    .line 663
    iget-object v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_7

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_3
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_7
    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_3

    .line 681
    :cond_8
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 5
    .parameter

    .prologue
    const v4, 0x253d8c

    const/4 v3, 0x1

    .line 860
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v0, v1

    .line 861
    :goto_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 862
    :cond_0
    const/4 v0, 0x0

    .line 881
    :goto_1
    return-object v0

    .line 860
    :cond_1
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    goto :goto_0

    .line 865
    :cond_2
    int-to-float v1, v0

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 866
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    add-int/2addr v0, v1

    .line 868
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 869
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeek:I

    if-nez v2, :cond_3

    .line 871
    if-ge v0, v4, :cond_4

    .line 872
    add-int/lit8 v0, v0, 0x1

    .line 880
    :cond_3
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-object v0, v1

    .line 881
    goto :goto_1

    .line 873
    :cond_4
    if-ne v0, v4, :cond_3

    .line 874
    const/4 v0, 0x0

    const/16 v2, 0x7b2

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/format/Time;->set(III)V

    .line 875
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-object v0, v1

    .line 876
    goto :goto_1
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 336
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeekView;->initView()V

    .line 338
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    if-nez v1, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090002

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    .line 341
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 342
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_LUNAR:I

    .line 343
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 344
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->CONFLICT_COLOR:I

    .line 345
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 346
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 347
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_WEEK_NUMBER:I

    .line 348
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_MONTH_NUMBER:I

    .line 349
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SIDE_PADDING_WEEK_NUMBER:I

    .line 350
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 351
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 352
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_LUNAR:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_LUNAR:I

    .line 353
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 354
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    .line 355
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 356
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 357
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 358
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 359
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 360
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 361
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 362
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 363
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 364
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 365
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 366
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 367
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 368
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_EXTRA_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_EXTRA_PADDING:I

    .line 369
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 370
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 371
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    .line 372
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    .line 373
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    .line 374
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MIN_SEGMENT_HEIGHT:I

    .line 375
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_SIDE_PADDING:I

    .line 376
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 377
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    .line 378
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 380
    :cond_0
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 381
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_HEIGHT:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TOP_PADDING_MONTH_NUMBER:I

    .line 383
    :cond_1
    sput-boolean v4, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    .line 385
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_2
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    .line 386
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->loadColors(Landroid/content/Context;)V

    .line 389
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 390
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 396
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 398
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    .line 400
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    .line 401
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 402
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 404
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 406
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    .line 407
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 408
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT_TITLE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 410
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDeclinedEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 412
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    .line 414
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 415
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 418
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 419
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 420
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 423
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    .line 424
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 425
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 427
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 428
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 429
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventDeclinedExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 432
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 433
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 440
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumHeight:I

    .line 442
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    .line 443
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    .line 444
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsBusyTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 447
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNATimePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBusyBitsConflictTimeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->DNA_ALL_DAY_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDNAAllDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    .line 454
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 455
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 456
    return-void
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthWeekNumColor:I

    .line 310
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    .line 311
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    .line 312
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    .line 313
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameColor:I

    .line 314
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameOtherColor:I

    .line 315
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    .line 316
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedEventColor:I

    .line 317
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthDeclinedExtrasColor:I

    .line 318
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    .line 319
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventOtherColor:I

    .line 320
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraOtherColor:I

    .line 321
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGTodayColor:I

    .line 322
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGOtherColor:I

    .line 323
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthBGColor:I

    .line 324
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    .line 325
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimateColor:I

    .line 327
    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 515
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawToday(Landroid/graphics/Canvas;)V

    .line 518
    :cond_0
    sget-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvents(Landroid/graphics/Canvas;)V

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDna:Ljava/util/HashMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mUnsortedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 524
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDNA(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 886
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 889
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 891
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 892
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 929
    :goto_0
    return v0

    .line 894
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v7

    .line 896
    if-eqz v7, :cond_6

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mLastHoverTime:Landroid/text/format/Time;

    invoke-static {v7, v1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 898
    :cond_2
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 899
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 901
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    .line 903
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mShowDetailsInMonth:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 905
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v1, v2

    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    sub-int v1, v3, v1

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 908
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 909
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v9

    .line 910
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/calendar/Event;

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    iget-boolean v1, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v1, :cond_4

    .line 914
    const/16 v5, 0x15

    .line 915
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 916
    const/16 v5, 0x95

    .line 921
    :cond_3
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, v3, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v3, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 919
    :cond_4
    const/16 v5, 0x2014

    goto :goto_2

    .line 925
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/calendar/month/MonthWeekEventsView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 926
    iput-object v7, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mLastHoverTime:Landroid/text/format/Time;

    :cond_6
    move v0, v6

    .line 929
    goto/16 :goto_0
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 506
    iput p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    .line 507
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthWeekEventsView;->invalidate()V

    .line 508
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, sortedEvents:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 294
    if-nez p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    if-eq v0, v1, :cond_0

    .line 298
    const-string v0, "MonthView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events size must be same as days displayed: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvents(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, sortedEvents:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    .local p2, unsortedEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    .line 251
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->createDna(Ljava/util/ArrayList;)V

    .line 252
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "tz"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 462
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 466
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    .line 467
    iget v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumCells:I

    .line 469
    const-string v0, "animate_today"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v0, :cond_2

    .line 470
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 473
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 475
    :cond_1
    const-string v0, "animateTodayAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateTodayAlpha:I

    const/16 v5, 0x50

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 477
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 479
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimatorListener:Lcom/android/calendar/month/MonthWeekEventsView$TodayAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mAnimateToday:Z

    .line 482
    iget-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 483
    monitor-exit v1

    .line 485
    :cond_2
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 844
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v2, :cond_1

    .line 845
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDay:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekStart:I

    sub-int v1, v2, v3

    .line 846
    .local v1, selectedPosition:I
    if-gez v1, :cond_0

    .line 847
    add-int/lit8 v1, v1, 0x7

    .line 849
    :cond_0
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 850
    .local v0, effectiveWidth:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 851
    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    .line 852
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    .line 853
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    .line 854
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    .line 856
    .end local v0           #effectiveWidth:I
    .end local v1           #selectedPosition:I
    :cond_1
    return-void
.end method

.method public updateToday(Ljava/lang/String;)Z
    .locals 7
    .parameter "tz"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 491
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iput-object p1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 493
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 494
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 495
    .local v0, julianToday:I
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 496
    iput-boolean v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 497
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 502
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    return v1

    .line 499
    :cond_0
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 500
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    goto :goto_0
.end method
