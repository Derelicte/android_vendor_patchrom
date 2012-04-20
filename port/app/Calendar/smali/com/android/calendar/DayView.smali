.class public Lcom/android/calendar/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayView$ScrollInterpolator;,
        Lcom/android/calendar/DayView$CalendarGestureListener;,
        Lcom/android/calendar/DayView$UpdateCurrentTime;,
        Lcom/android/calendar/DayView$DismissPopup;,
        Lcom/android/calendar/DayView$ContinueScroll;,
        Lcom/android/calendar/DayView$ContextMenuHandler;,
        Lcom/android/calendar/DayView$GotoBroadcaster;,
        Lcom/android/calendar/DayView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static ALLDAY_TOP_MARGIN:I

.field private static ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

.field private static AMPM_TEXT_SIZE:F

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDAR_COLOR_SQUARE_SIZE:I

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I

.field private static CURRENT_TIME_LINE_HEIGHT:I

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I

.field private static CURRENT_TIME_LINE_TOP_OFFSET:I

.field private static DATE_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_BOTTOM_MARGIN:I

.field private static DAY_HEADER_DATE_OFFSET:I

.field private static DAY_HEADER_DAY_FONT_SIZE:F

.field private static DAY_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_HEIGHT:I

.field private static DAY_HEADER_LEFT_MARGIN:I

.field private static DAY_HEADER_LUNAR_OFFSET:I

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

.field private static DAY_HEADER_RIGHT_MARGIN:I

.field private static DEBUG:Z

.field private static DEBUG_SCALING:Z

.field private static DEFAULT_CELL_HEIGHT:I

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RECT_BOTTOM_MARGIN:I

.field private static EVENT_RECT_LEFT_MARGIN:I

.field private static EVENT_RECT_RIGHT_MARGIN:I

.field private static EVENT_RECT_STROKE_WIDTH:I

.field private static EVENT_RECT_TOP_MARGIN:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_TEXT_FONT_SIZE:F

.field private static EVENT_TEXT_LEFT_MARGIN:I

.field private static EVENT_TEXT_RIGHT_MARGIN:I

.field private static EVENT_TEXT_TOP_MARGIN:I

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I

.field private static GRID_LINE_LEFT_MARGIN:F

.field private static HOURS_LEFT_MARGIN:I

.field private static HOURS_MARGIN:I

.field private static HOURS_RIGHT_MARGIN:I

.field private static HOURS_TEXT_SIZE:F

.field private static HOURS_TOP_MARGIN:I

.field private static MAX_CELL_HEIGHT:I

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static MIN_HOURS_HEIGHT:I

.field private static MIN_HOURS_WIDTH:I

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

.field private static MIN_Y_SPAN:I

.field private static MULTI_DAY_HEADER_HEIGHT:I

.field private static NEW_EVENT_HINT_FONT_SIZE:I

.field private static NEW_EVENT_MARGIN:I

.field private static NEW_EVENT_MAX_LENGTH:I

.field private static NEW_EVENT_WIDTH:I

.field private static NORMAL_FONT_SIZE:F

.field private static ONE_DAY_HEADER_HEIGHT:I

.field private static SINGLE_ALLDAY_HEIGHT:I

.field private static TAG:Ljava/lang/String;

.field private static mBgColor:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mEventTextColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mFutureBgColor:I

.field private static mFutureBgColorRes:I

.field private static mHorizontalSnapBackThreshold:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mNewEventHintColor:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mShowAllAllDayEvents:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;

.field private static mUseExpandIcon:Z

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private final OVERFLING_DISTANCE:I

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field mBaseDate:Landroid/text/format/Time;

.field private mBold:Landroid/graphics/Typeface;

.field private mCallEdgeEffectOnAbsorb:Z

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field protected final mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

.field private mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCreateNewEventString:Ljava/lang/String;

.field private mCurrentTime:Landroid/text/format/Time;

.field protected final mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

.field protected final mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

.field private mEarliestStartHour:[I

.field private mEdgeEffectBottom:Landroid/widget/EdgeEffect;

.field private mEdgeEffectTop:Landroid/widget/EdgeEffect;

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAllDayRect:Landroid/graphics/Rect;

.field protected final mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mGestureCenterHour:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mIsAccessibilityEnabled:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLastSelectedEvent:Lcom/android/calendar/Event;

.field private mLastSelectionDay:I

.field private mLastSelectionHour:I

.field private mLastVelocity:F

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mLongPressItems:[Ljava/lang/CharSequence;

.field private mLongPressTitle:Ljava/lang/String;

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field private mNewEventHintString:Ljava/lang/String;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field protected mPaused:Z

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private mTZUpdater:Ljava/lang/Runnable;

.field mTodayAnimator:Landroid/animation/ObjectAnimator;

.field private mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

.field protected final mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchExplorationEnabled:Z

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x4140

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 97
    const-string v0, "DayView"

    sput-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    .line 99
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 118
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 119
    const/16 v0, 0x96

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 120
    const/16 v0, 0x64

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v5

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 157
    const/16 v0, 0x80

    sput v0, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 184
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    .line 314
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 320
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 327
    const/high16 v0, 0x41e0

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 332
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 338
    const/16 v0, 0xb4

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    .line 339
    sput v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 341
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 343
    sput v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 344
    sput v4, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 345
    sput v6, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 346
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 347
    sput v6, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 348
    sput v4, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 349
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 351
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 352
    sput v5, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 353
    sput v6, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 354
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 364
    sput v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 365
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 366
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 367
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 368
    sput v6, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 369
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 370
    const/16 v0, 0x16

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_LUNAR_OFFSET:I

    .line 371
    const/16 v0, 0x1c

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_DATE_OFFSET:I

    .line 372
    const/high16 v0, 0x4160

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 373
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_DAY_FONT_SIZE:F

    .line 374
    const/high16 v0, 0x4200

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 375
    sput v7, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 376
    sput v7, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 377
    sput v7, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 378
    const/high16 v0, 0x4110

    sput v0, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 379
    const/16 v0, 0x60

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 380
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 383
    const/high16 v0, 0x41c0

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 384
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 385
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 386
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 387
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 388
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 389
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 390
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 391
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 392
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 393
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 394
    sput v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 395
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 396
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 397
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 398
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 400
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 402
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 403
    sput v6, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 404
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 422
    const/16 v0, 0x4c

    sput v0, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 431
    sput v3, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 432
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 468
    sput-boolean v5, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    .line 472
    const/16 v0, 0x2d

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 476
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 480
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 496
    sput-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 531
    sput v3, Lcom/android/calendar/DayView;->sCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V
    .locals 8
    .parameter "context"
    .parameter "controller"
    .parameter "viewSwitcher"
    .parameter "eventLoader"
    .parameter "numDays"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 610
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 159
    new-instance v1, Lcom/android/calendar/DayView$ContinueScroll;

    invoke-direct {v1, p0, v5}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    .line 166
    new-instance v1, Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$UpdateCurrentTime;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    .line 169
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    .line 186
    new-instance v1, Lcom/android/calendar/DayView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$1;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 197
    new-instance v1, Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$TodayAnimatorListener;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    .line 244
    new-instance v1, Lcom/android/calendar/DayView$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$2;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 274
    iput-object v5, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 275
    iput-object v5, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 289
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 293
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 295
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 296
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 307
    new-instance v1, Lcom/android/calendar/DayView$DismissPopup;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$DismissPopup;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    .line 309
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 424
    iput v6, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 440
    iput v6, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 444
    iput v6, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 450
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 460
    iput v4, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 464
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 492
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 498
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 499
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 520
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 533
    new-instance v1, Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    .line 558
    iput v4, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 568
    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 570
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 575
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 576
    iput v4, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 587
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 589
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 602
    iput-object v5, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 603
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 604
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 1937
    new-instance v1, Lcom/android/calendar/DayView$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$3;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 3432
    const-string v1, "[\t\n],"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 611
    iput-object p1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    .line 612
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    .line 615
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    .line 616
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    .line 617
    iput p5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 619
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 620
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 621
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_DAY_FONT_SIZE:F

    .line 622
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 623
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 624
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_LUNAR_OFFSET:I

    .line 625
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_DATE_OFFSET:I

    .line 626
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 627
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 628
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 629
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 630
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 631
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 632
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 634
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v3, :cond_2

    .line 635
    const v0, 0x7f0a0009

    .line 639
    .local v0, eventTextSizeId:I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 640
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 641
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 642
    sget v1, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    sput v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 643
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 644
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 645
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 646
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 648
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 650
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 651
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 652
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 654
    sget v1, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/DayView;->mScale:F

    .line 657
    sget v1, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_0

    .line 658
    sget v1, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 659
    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 660
    sget v1, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 662
    sget v1, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 663
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 664
    sget v1, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 665
    sget v1, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 666
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 667
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 669
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 670
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 671
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 672
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 674
    sget v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 675
    sget v1, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 676
    sget v1, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 677
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 678
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 679
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 680
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 681
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 682
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 683
    sget v1, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 684
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 685
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 686
    sget v1, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 687
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 688
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 689
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 690
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 691
    sget v1, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 692
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 693
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 694
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 697
    :cond_0
    sget v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 698
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v3, :cond_3

    sget v1, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    :goto_1
    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 700
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 701
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 703
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 704
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 705
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 706
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    .line 707
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 710
    iput-object p4, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 711
    new-instance v1, Lcom/android/calendar/EventGeometry;

    invoke-direct {v1}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 712
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v1, v2}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 713
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 714
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v1, v3}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 715
    new-array v1, v3, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    .line 718
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 719
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v1, p1, v5, v4}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 720
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 721
    iput-object p2, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    .line 722
    iput-object p3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 723
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/calendar/DayView$CalendarGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$CalendarGestureListener;-><init>(Lcom/android/calendar/DayView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 724
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 725
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    if-nez v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v2, "preferences_default_cell_height"

    sget v3, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 729
    :cond_1
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 730
    new-instance v1, Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$ScrollInterpolator;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    .line 731
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    .line 732
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    .line 733
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    .line 735
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->init(Landroid/content/Context;)V

    .line 736
    return-void

    .line 637
    .end local v0           #eventTextSizeId:I
    :cond_2
    const v0, 0x7f0a000a

    .restart local v0       #eventTextSizeId:I
    goto/16 :goto_0

    .line 698
    :cond_3
    sget v1, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    sput-boolean p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    return p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/calendar/DayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/DayView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/calendar/DayView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/calendar/DayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$4600(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$704()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    return p1
.end method

.method private adjustHourSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1878
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 1879
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1880
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_0

    .line 1881
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1882
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1886
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 1887
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1892
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 1900
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1901
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 1903
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1904
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1905
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1931
    .end local v0           #daynum:I
    :cond_2
    :goto_0
    return-void

    .line 1909
    .restart local v0       #daynum:I
    :cond_3
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 1910
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1911
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1912
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 1913
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1919
    .end local v0           #daynum:I
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_2

    .line 1920
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_5

    .line 1921
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1922
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1923
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 1924
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1927
    :cond_5
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 1928
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1153
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1154
    .local v0, dayOfWeek:I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1155
    .local v1, diff:I
    if-eqz v1, :cond_1

    .line 1156
    if-gez v1, :cond_0

    .line 1157
    add-int/lit8 v1, v1, 0x7

    .line 1159
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1160
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1162
    :cond_1
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1712
    invoke-virtual {p2}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    iget-boolean v0, p2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_1

    .line 1717
    const/16 v5, 0x2012

    .line 1724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, p2, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    return-void

    .line 1719
    :cond_1
    const/16 v5, 0x11

    .line 1720
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    const/16 v5, 0x91

    goto :goto_0
.end method

.method private calculateDuration(FFF)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4767
    const/high16 v0, 0x4000

    div-float v0, p2, v0

    .line 4768
    div-float v1, p1, p2

    .line 4769
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    .line 4770
    mul-float v3, v0, v2

    add-float/2addr v3, v0

    .line 4772
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 4773
    const v5, 0x45098000

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 4781
    const/high16 v5, 0x447a

    div-float v6, v3, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-long v5, v5

    .line 4782
    sget-boolean v7, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4783
    sget-object v7, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "halfScreenSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " delta:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " distanceRatio:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distanceInfluenceForSnapDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    :cond_0
    return-wide v5
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3908
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 3909
    .local v0, in:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 3911
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3913
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 3914
    .local v1, out:Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    .line 3916
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3918
    :cond_1
    return-void
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2948
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2949
    .local v3, len:I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_1

    .line 3003
    :cond_0
    :goto_0
    return-void

    .line 2954
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2955
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2956
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2957
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2958
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2959
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2954
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2969
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 2970
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2971
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 2973
    :cond_3
    const/4 v4, -0x1

    .line 2974
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 2975
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 2976
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 2977
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2978
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 2979
    .local v8, position:I
    if-ne v8, v10, :cond_6

    .line 2980
    move-object v9, v0

    .line 2985
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 2986
    if-ne v2, v1, :cond_7

    .line 2985
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2981
    .end local v2           #jj:I
    :cond_6
    if-le v8, v4, :cond_4

    .line 2982
    move-object v5, v0

    .line 2983
    move v4, v8

    goto :goto_3

    .line 2989
    .restart local v2       #jj:I
    :cond_7
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 2990
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 2991
    .local v7, neighborPosition:I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_8

    .line 2992
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2993
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 2994
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2976
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2998
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_a
    if-eqz v9, :cond_b

    .line 2999
    iput-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0

    .line 3001
    :cond_b
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0
.end method

.method private computeDayLeftPosition(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 2211
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2212
    .local v0, effectiveWidth:I
    mul-int v1, p1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeEventRelations()V
    .locals 15

    .prologue
    .line 2027
    const/4 v12, 0x0

    .line 2028
    .local v12, maxAllDayEvents:I
    iget-object v5, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 2029
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2031
    .local v11, len:I
    iget v13, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 2032
    .local v6, eventsCount:[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 2033
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_0
    if-ge v9, v11, :cond_8

    .line 2034
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2035
    .local v4, event:Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_0

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_1

    .line 2033
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2038
    :cond_1
    invoke-virtual {v4}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2040
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2041
    .local v7, firstDay:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2042
    .local v10, lastDay:I
    move v1, v7

    .local v1, day:I
    :goto_2
    if-gt v1, v10, :cond_3

    .line 2043
    iget v13, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 2044
    .local v0, count:I
    if-ge v12, v0, :cond_2

    .line 2045
    move v12, v0

    .line 2042
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2049
    .end local v0           #count:I
    :cond_3
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2050
    .local v2, daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2051
    .local v3, durationDays:I
    if-gez v2, :cond_4

    .line 2052
    add-int/2addr v3, v2

    .line 2053
    const/4 v2, 0x0

    .line 2055
    :cond_4
    add-int v13, v2, v3

    iget v14, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v13, v14, :cond_5

    .line 2056
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2058
    :cond_5
    move v1, v2

    :goto_3
    if-lez v3, :cond_0

    .line 2059
    iget-object v13, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 2058
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2062
    .end local v1           #day:I
    .end local v2           #daynum:I
    .end local v3           #durationDays:I
    .end local v7           #firstDay:I
    .end local v10           #lastDay:I
    :cond_6
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2063
    .restart local v2       #daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2064
    .local v8, hour:I
    if-ltz v2, :cond_7

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_7

    .line 2065
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 2070
    :cond_7
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2071
    iget v13, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2072
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_0

    .line 2073
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_1

    .line 2077
    .end local v2           #daynum:I
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v8           #hour:I
    :cond_8
    iput v12, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 2078
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 2079
    return-void
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 1873
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1874
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1875
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 2660
    const/4 v3, 0x0

    .line 2662
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 2663
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2664
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2665
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2667
    .end local v4           #width:F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2668
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1

    .line 2669
    move v2, p1

    .line 2671
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 39

    .prologue
    .line 3061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 3062
    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_1

    .line 3343
    :cond_0
    :goto_0
    return-void

    .line 3067
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    move/from16 v0, v28

    if-ge v3, v0, :cond_2

    .line 3068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3069
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3070
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3071
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3072
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3067
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 3075
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3076
    const v12, 0x186a0

    .line 3077
    const v11, 0x186a0

    .line 3078
    const/4 v9, 0x0

    .line 3083
    const/4 v8, 0x0

    .line 3084
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v29

    .line 3085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_9

    .line 3086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v4

    .line 3088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v4

    .line 3089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->right:F

    float-to-int v4, v4

    .line 3093
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-le v4, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-lt v5, v7, :cond_7

    .line 3095
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    .line 3118
    :goto_2
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lt v5, v3, :cond_a

    .line 3120
    const/16 v8, 0x8

    .line 3121
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    .line 3139
    :cond_4
    :goto_3
    const/4 v3, 0x0

    move/from16 v27, v3

    move-object v14, v2

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2a

    .line 3140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3142
    iget v0, v2, Lcom/android/calendar/Event;->startTime:I

    move/from16 v30, v0

    .line 3143
    iget v0, v2, Lcom/android/calendar/Event;->endTime:I

    move/from16 v31, v0

    .line 3144
    iget v3, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v0, v3

    move/from16 v32, v0

    .line 3145
    iget v3, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v0, v3

    move/from16 v33, v0

    .line 3146
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3147
    move-object/from16 v0, v29

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v10, :cond_33

    .line 3148
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move v10, v3

    .line 3150
    :goto_5
    iget v3, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v3, v3

    .line 3151
    move-object/from16 v0, v29

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v13, :cond_32

    .line 3152
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v3

    .line 3165
    :goto_6
    const/16 v22, 0x2710

    .line 3166
    const/16 v21, 0x2710

    .line 3167
    const/16 v20, 0x2710

    .line 3168
    const/16 v19, 0x2710

    .line 3169
    const/16 v18, 0x0

    .line 3170
    const/16 v17, 0x0

    .line 3171
    const/16 v16, 0x0

    .line 3172
    const/4 v15, 0x0

    .line 3176
    const/4 v3, 0x0

    .line 3177
    const/4 v13, 0x0

    .line 3178
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_e

    .line 3179
    move/from16 v0, v32

    if-lt v0, v8, :cond_d

    .line 3180
    sub-int v3, v32, v8

    .line 3184
    :cond_5
    :goto_7
    sub-int v13, v10, v6

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    .line 3207
    :goto_8
    if-lt v13, v12, :cond_6

    if-ne v13, v12, :cond_30

    if-ge v3, v11, :cond_30

    :cond_6
    move v11, v3

    move v12, v13

    move-object v13, v2

    .line 3216
    :goto_9
    const/4 v3, 0x0

    move/from16 v25, v3

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    :goto_a
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_29

    .line 3217
    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move-object v3, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    .line 3216
    :goto_b
    add-int/lit8 v21, v25, 0x1

    move/from16 v25, v21

    move/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v3

    goto :goto_a

    .line 3102
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_8

    .line 3103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3105
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_34

    .line 3106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move v7, v3

    goto/16 :goto_2

    .line 3111
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto/16 :goto_2

    .line 3122
    :cond_a
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gt v4, v3, :cond_b

    .line 3124
    const/4 v8, 0x4

    .line 3125
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3126
    :cond_b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gt v6, v3, :cond_c

    .line 3128
    const/4 v8, 0x1

    .line 3129
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3130
    :cond_c
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v3, :cond_4

    .line 3132
    const/4 v8, 0x2

    .line 3133
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_3

    .line 3181
    :cond_d
    move/from16 v0, v33

    if-gt v0, v8, :cond_5

    .line 3182
    sub-int v3, v8, v33

    goto/16 :goto_7

    .line 3185
    :cond_e
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_11

    .line 3186
    move/from16 v0, v32

    if-lt v0, v8, :cond_10

    .line 3187
    sub-int v3, v32, v8

    .line 3191
    :cond_f
    :goto_c
    sub-int v13, v7, v26

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3188
    :cond_10
    move/from16 v0, v33

    if-gt v0, v8, :cond_f

    .line 3189
    sub-int v3, v8, v33

    goto :goto_c

    .line 3192
    :cond_11
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v9, v0, :cond_14

    .line 3193
    move/from16 v0, v26

    if-gt v0, v8, :cond_13

    .line 3194
    sub-int v3, v8, v26

    .line 3198
    :cond_12
    :goto_d
    sub-int v13, v32, v4

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3195
    :cond_13
    if-lt v10, v8, :cond_12

    .line 3196
    sub-int v3, v10, v8

    goto :goto_d

    .line 3199
    :cond_14
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v9, v0, :cond_31

    .line 3200
    move/from16 v0, v26

    if-gt v0, v8, :cond_16

    .line 3201
    sub-int v3, v8, v26

    .line 3205
    :cond_15
    :goto_e
    sub-int v13, v5, v33

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    .line 3202
    :cond_16
    if-lt v10, v8, :cond_15

    .line 3203
    sub-int v3, v10, v8

    goto :goto_e

    .line 3220
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3221
    iget v0, v3, Lcom/android/calendar/Event;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3222
    iget v0, v3, Lcom/android/calendar/Event;->right:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3223
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_1e

    .line 3226
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_2d

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_2d

    .line 3227
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    sub-int v22, v30, v22

    .line 3228
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    move-object/from16 v17, v3

    move/from16 v21, v22

    :cond_18
    :goto_f
    move/from16 v22, v21

    move/from16 v21, v20

    .line 3287
    :goto_10
    move/from16 v0, v34

    move/from16 v1, v33

    if-lt v0, v1, :cond_25

    .line 3290
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3291
    const/16 v20, 0x0

    .line 3292
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3293
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3294
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_23

    .line 3295
    sub-int v20, v23, v24

    .line 3299
    :cond_19
    :goto_11
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    move/from16 v14, v20

    :goto_12
    move/from16 v18, v19

    move/from16 v20, v22

    move/from16 v19, v21

    move/from16 v38, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v38

    .line 3311
    goto/16 :goto_b

    .line 3231
    :cond_1a
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 3232
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3233
    const/16 v23, 0x0

    .line 3234
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3235
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3236
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1c

    .line 3237
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3242
    :goto_13
    const/16 v23, 0x0

    .line 3243
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_1d

    .line 3244
    sub-int v23, v36, v35

    .line 3248
    :cond_1b
    :goto_14
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    move-object/from16 v17, v3

    move/from16 v21, v22

    .line 3250
    goto/16 :goto_f

    .line 3238
    :cond_1c
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_2f

    .line 3239
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_13

    .line 3245
    :cond_1d
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_1b

    .line 3246
    sub-int v23, v34, v36

    goto :goto_14

    .line 3254
    :cond_1e
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_2d

    .line 3257
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_2d

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_2d

    .line 3258
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    sub-int v22, v22, v31

    .line 3259
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3261
    goto/16 :goto_10

    .line 3262
    :cond_1f
    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 3263
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3264
    const/16 v23, 0x0

    .line 3265
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3266
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3267
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_21

    .line 3268
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3273
    :goto_15
    const/16 v23, 0x0

    .line 3274
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_22

    .line 3275
    sub-int v23, v36, v35

    .line 3279
    :cond_20
    :goto_16
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3281
    goto/16 :goto_10

    .line 3269
    :cond_21
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_2e

    .line 3270
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_15

    .line 3276
    :cond_22
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_20

    .line 3277
    sub-int v23, v34, v36

    goto :goto_16

    .line 3296
    :cond_23
    move/from16 v0, v35

    move/from16 v1, v23

    if-lt v0, v1, :cond_19

    .line 3297
    sub-int v20, v35, v23

    goto/16 :goto_11

    .line 3302
    :cond_24
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 3304
    sub-int v23, v34, v33

    .line 3305
    iget v0, v14, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v33

    .line 3306
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2c

    move/from16 v14, v20

    .line 3308
    goto/16 :goto_12

    .line 3311
    :cond_25
    move/from16 v0, v35

    move/from16 v1, v32

    if-gt v0, v1, :cond_2b

    .line 3314
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3315
    const/16 v20, 0x0

    .line 3316
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3317
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3318
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_27

    .line 3319
    sub-int v20, v23, v24

    .line 3323
    :cond_26
    :goto_17
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_28

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3325
    goto/16 :goto_b

    .line 3320
    :cond_27
    move/from16 v0, v34

    move/from16 v1, v23

    if-lt v0, v1, :cond_26

    .line 3321
    sub-int v20, v34, v23

    goto :goto_17

    .line 3326
    :cond_28
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b

    .line 3328
    sub-int v23, v32, v35

    .line 3329
    iget v0, v15, Lcom/android/calendar/Event;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v32, v24

    .line 3330
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3332
    goto/16 :goto_b

    .line 3337
    :cond_29
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3338
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3339
    iput-object v15, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3340
    iput-object v14, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3139
    add-int/lit8 v2, v27, 0x1

    move/from16 v27, v2

    move-object v14, v13

    goto/16 :goto_4

    .line 3342
    :cond_2a
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_0

    :cond_2b
    move-object v3, v14

    move/from16 v20, v22

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    goto/16 :goto_b

    :cond_2c
    move-object v3, v14

    move/from16 v14, v18

    goto/16 :goto_12

    :cond_2d
    move/from16 v22, v21

    move/from16 v21, v20

    goto/16 :goto_10

    :cond_2e
    move/from16 v24, v23

    goto/16 :goto_15

    :cond_2f
    move/from16 v24, v23

    goto/16 :goto_13

    :cond_30
    move-object v13, v14

    goto/16 :goto_9

    :cond_31
    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_8

    :cond_32
    move/from16 v26, v3

    goto/16 :goto_6

    :cond_33
    move v10, v3

    goto/16 :goto_5

    :cond_34
    move v7, v3

    goto/16 :goto_2
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter

    .prologue
    .line 4799
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 4800
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4801
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 3578
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3579
    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3580
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3581
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3582
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 2365
    iget-object v5, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2366
    .local v5, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2368
    .local v7, r:Landroid/graphics/Rect;
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v0, :cond_0

    .line 2369
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2371
    :cond_0
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2372
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2375
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2376
    .local v1, cell:I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2377
    const/4 v2, 0x0

    .local v2, day:I
    :goto_0
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_2

    move-object v0, p0

    move-object v4, p1

    .line 2380
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2382
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    add-int/lit8 v9, v0, 0x1

    .line 2387
    .local v9, lineY:I
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v9, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_1

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2388
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2377
    .end local v9           #lineY:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2392
    :cond_2
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2394
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2395
    return-void
.end method

.method private doExpandAllDayClick()V
    .locals 10

    .prologue
    const/16 v3, 0x4c

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 3586
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 3588
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 3591
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_0

    .line 3592
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v8, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v8, v8

    sub-int/2addr v0, v8

    :goto_1
    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3596
    :cond_0
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3597
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3598
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3600
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 3601
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3603
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 3604
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3606
    :cond_3
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3608
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 3609
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 3610
    const-string v8, "moreAllDayEventsTextAlpha"

    const/4 v0, 0x2

    new-array v9, v0, [I

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    aput v0, v9, v2

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_8

    :goto_3
    aput v2, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 3616
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_9

    move-wide v0, v4

    :goto_4
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3617
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3618
    iget-object v2, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a

    move-wide v0, v6

    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3619
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3620
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3621
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 3623
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_b

    :goto_6
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3625
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3627
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 3586
    goto/16 :goto_0

    .line 3592
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_1

    :cond_7
    move v0, v2

    .line 3610
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move-wide v0, v6

    .line 3616
    goto :goto_4

    .line 3618
    :cond_a
    const-wide/16 v0, 0x190

    goto :goto_5

    :cond_b
    move-wide v4, v6

    .line 3623
    goto :goto_6
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3921
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3923
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3926
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 3929
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3930
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: velocityX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 3932
    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 3933
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3967
    :cond_1
    :goto_1
    return-void

    .line 3932
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3937
    :cond_3
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_4

    .line 3938
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "doFling: no fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3943
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3944
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3946
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 3947
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: mViewStartY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3952
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    const/4 v3, 0x0

    neg-float v4, p4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    iget v10, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3958
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-eqz v0, :cond_7

    .line 3959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    .line 3966
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3963
    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-eq v0, v1, :cond_6

    .line 3964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    goto :goto_2
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 3809
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 3830
    :cond_0
    :goto_0
    return-void

    .line 3814
    :cond_1
    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 3818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3819
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3821
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v0

    .line 3822
    .local v0, validPosition:Z
    if-eqz v0, :cond_0

    .line 3827
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3828
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3829
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3833
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3834
    iget-boolean v7, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    if-eqz v7, :cond_0

    .line 3835
    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3836
    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3837
    iput-boolean v9, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3840
    :cond_0
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    add-float/2addr v7, p3

    iput v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3841
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    add-float/2addr v7, p4

    iput v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3842
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    float-to-int v3, v7

    .line 3843
    .local v3, distanceX:I
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    float-to-int v4, v7

    .line 3847
    .local v4, distanceY:I
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    if-ne v7, v6, :cond_6

    .line 3848
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3849
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3850
    .local v1, absDistanceY:I
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 3851
    iput v9, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    .line 3853
    if-le v0, v1, :cond_5

    .line 3854
    const/16 v7, 0x40

    iput v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3855
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3856
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3876
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_1
    :goto_0
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    .line 3877
    iget v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3880
    iget v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    int-to-float v7, v7

    add-float/2addr v7, p4

    float-to-int v5, v7

    .line 3881
    .local v5, pulledToY:I
    if-gez v5, :cond_8

    .line 3882
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3883
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3884
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3893
    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v7, :cond_9

    .line 3894
    iput v9, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3898
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 3901
    .end local v5           #pulledToY:I
    :cond_4
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3903
    iput v9, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3904
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3905
    return-void

    .line 3858
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_5
    const/16 v7, 0x20

    iput v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    goto :goto_0

    .line 3860
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_6
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_1

    .line 3864
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3865
    if-eqz v3, :cond_1

    .line 3866
    if-lez v3, :cond_7

    move v2, v6

    .line 3867
    .local v2, direction:I
    :goto_3
    iget v7, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    if-eq v2, v7, :cond_1

    .line 3870
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3871
    iput v2, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    goto :goto_0

    .line 3866
    .end local v2           #direction:I
    :cond_7
    const/4 v2, -0x1

    goto :goto_3

    .line 3886
    .restart local v5       #pulledToY:I
    :cond_8
    iget v7, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v5, v7, :cond_2

    .line 3887
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3888
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3889
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 3895
    :cond_9
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v7, v8, :cond_3

    .line 3896
    iget v7, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_2
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 57
    .parameter "ev"

    .prologue
    .line 3724
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 3806
    :cond_0
    :goto_0
    return-void

    .line 3728
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v55, v0

    .line 3729
    .local v55, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v56, v0

    .line 3730
    .local v56, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v52, v0

    .line 3731
    .local v52, selectedDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v53, v0

    .line 3733
    .local v53, selectedHour:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v4, :cond_4

    .line 3735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move/from16 v49, v0

    .line 3736
    .local v49, bottom:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v0, v55

    if-ge v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v56

    if-le v0, v3, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v4

    move/from16 v0, v56

    if-lt v0, v3, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_4

    move/from16 v0, v56

    move/from16 v1, v49

    if-ge v0, v1, :cond_4

    move/from16 v0, v56

    int-to-float v3, v0

    move/from16 v0, v49

    int-to-float v4, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 3739
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->doExpandAllDayClick()V

    goto :goto_0

    .line 3744
    .end local v49           #bottom:I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v54

    .line 3745
    .local v54, validPosition:Z
    if-nez v54, :cond_5

    .line 3746
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v56

    if-ge v0, v3, :cond_0

    .line 3747
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3748
    .local v9, selectedTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3749
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v3, v9, Landroid/text/format/Time;->hour:I

    .line 3750
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 3757
    .end local v9           #selectedTime:Landroid/text/format/Time;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_8

    const/16 v50, 0x1

    .line 3758
    .local v50, hasSelection:Z
    :goto_1
    if-nez v50, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v52

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v0, v53

    if-ne v0, v3, :cond_9

    const/16 v51, 0x1

    .line 3761
    .local v51, pressedSelected:Z
    :goto_2
    if-eqz v51, :cond_a

    .line 3764
    const-wide/16 v22, 0x0

    .line 3765
    .local v22, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_7

    .line 3766
    const-wide/16 v22, 0x10

    .line 3768
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3769
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v12, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    const-wide/16 v24, -0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 3805
    .end local v22           #extraLong:J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_0

    .line 3757
    .end local v50           #hasSelection:Z
    .end local v51           #pressedSelected:Z
    :cond_8
    const/16 v50, 0x0

    goto :goto_1

    .line 3758
    .restart local v50       #hasSelection:Z
    :cond_9
    const/16 v51, 0x0

    goto :goto_2

    .line 3772
    .restart local v51       #pressedSelected:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_d

    .line 3774
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_b

    .line 3775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 3778
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v35, v0

    .line 3784
    .local v35, yLocation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_c

    .line 3785
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v3, v4

    add-int v35, v35, v3

    .line 3787
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v36

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v37}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_3

    .line 3793
    .end local v35           #yLocation:I
    :cond_d
    new-instance v40, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3794
    .local v40, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3795
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move-object/from16 v0, v40

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3796
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3798
    new-instance v41, Landroid/text/format/Time;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3799
    .local v41, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v41

    iget v3, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v41

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3801
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v36, v0

    const-wide/16 v38, 0x20

    const-wide/16 v42, -0x1

    const/16 v44, 0x0

    const-wide/16 v45, 0x2

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v37, p0

    invoke-virtual/range {v36 .. v48}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_3
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2162
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2164
    .local v1, r:Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2165
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_0

    .line 2166
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2167
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2170
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2171
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2174
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    .line 2175
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2177
    :cond_1
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 36
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2779
    sget v3, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2780
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2781
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2783
    .local v7, eventTextPaint:Landroid/graphics/Paint;
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v3

    move/from16 v32, v0

    .line 2784
    .local v32, startY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v3, v3

    add-float v3, v3, v32

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float v33, v3, v5

    .line 2785
    .local v33, stopY:F
    const/16 v34, 0x0

    .line 2786
    .local v34, x:F
    const/16 v26, 0x0

    .line 2789
    .local v26, linesIndex:I
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2790
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v34, v0

    .line 2791
    const/high16 v3, 0x3f80

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .local v27, linesIndex:I
    sget v5, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v5, v3, v26

    .line 2794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v26

    .line 2796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2798
    const/16 v18, 0x0

    .local v18, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v0, v18

    if-gt v0, v3, :cond_0

    .line 2799
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v34, v0

    .line 2800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    aput v34, v3, v26

    .line 2801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    aput v34, v3, v26

    .line 2803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v33, v3, v27

    .line 2798
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 2805
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, p4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2807
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2809
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v35, v3, v5

    .line 2810
    .local v35, y:I
    add-int v3, p1, p2

    add-int/lit8 v25, v3, -0x1

    .line 2811
    .local v25, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 2812
    .local v22, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 2814
    .local v28, numEvents:I
    const/16 v23, 0x0

    .line 2816
    .local v23, hasMoreEvents:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v0, v3

    move/from16 v19, v0

    .line 2818
    .local v19, drawHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v0, v3

    move/from16 v29, v0

    .line 2820
    .local v29, numRectangles:F
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v3, v5

    .line 2822
    .local v17, allDayEventClip:I
    move/from16 v0, p2

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    .line 2823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_3

    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_3

    .line 2827
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v29, v0

    .line 2829
    move/from16 v0, v17

    int-to-float v3, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v17, v0

    .line 2830
    const/16 v23, 0x1

    .line 2835
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move/from16 v0, v28

    if-ge v10, v0, :cond_c

    .line 2836
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2837
    .local v4, event:Lcom/android/calendar/Event;
    iget v0, v4, Lcom/android/calendar/Event;->startDay:I

    move/from16 v30, v0

    .line 2838
    .local v30, startDay:I
    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    move/from16 v20, v0

    .line 2839
    .local v20, endDay:I
    move/from16 v0, v30

    move/from16 v1, v25

    if-gt v0, v1, :cond_2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 2835
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2831
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v10           #i:I
    .end local v20           #endDay:I
    .end local v30           #startDay:I
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_1

    .line 2833
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v3, v5

    goto :goto_1

    .line 2842
    .restart local v4       #event:Lcom/android/calendar/Event;
    .restart local v10       #i:I
    .restart local v20       #endDay:I
    .restart local v30       #startDay:I
    :cond_4
    move/from16 v0, v30

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 2843
    move/from16 v30, p1

    .line 2845
    :cond_5
    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 2846
    move/from16 v20, v25

    .line 2848
    :cond_6
    sub-int v31, v30, p1

    .line 2849
    .local v31, startIndex:I
    sub-int v21, v20, p1

    .line 2850
    .local v21, endIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    int-to-float v0, v3

    move/from16 v24, v0

    .line 2854
    .local v24, height:F
    :goto_4
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v3, v3

    cmpl-float v3, v24, v3

    if-lez v3, :cond_7

    .line 2855
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v3

    move/from16 v24, v0

    .line 2860
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->left:F

    .line 2861
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->right:F

    .line 2862
    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/android/calendar/Event;->getColumn()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v24

    add-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->top:F

    .line 2863
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    add-float v3, v3, v24

    sget v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2864
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_b

    .line 2868
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v17

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_9

    .line 2869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 2850
    .end local v24           #height:F
    :cond_8
    div-float v24, v19, v29

    goto :goto_4

    .line 2871
    .restart local v24       #height:F
    :cond_9
    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    move/from16 v0, v17

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    .line 2872
    if-eqz v23, :cond_a

    .line 2873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_3

    .line 2876
    :cond_a
    move/from16 v0, v17

    int-to-float v3, v0

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2879
    :cond_b
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    float-to-int v8, v3

    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v9, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 2881
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v12

    .line 2883
    .local v12, layout:Landroid/text/StaticLayout;
    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    .line 2886
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    .line 2887
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-lt v0, v3, :cond_2

    .line 2888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2892
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v12           #layout:Landroid/text/StaticLayout;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v20           #endDay:I
    .end local v21           #endIndex:I
    .end local v24           #height:F
    .end local v30           #startDay:I
    .end local v31           #startIndex:I
    :cond_c
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    if-eqz v3, :cond_e

    .line 2894
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v3, v3, 0x18

    sget v5, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    and-int/2addr v3, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2895
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    array-length v3, v3

    if-ge v10, v3, :cond_e

    .line 2896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    if-lez v3, :cond_d

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v10, v2}, Lcom/android/calendar/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2895
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2902
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_f

    .line 2905
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeAllDayNeighbors()V

    .line 2909
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v8}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2911
    :cond_f
    return-void
.end method

.method private drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 2216
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v3, :cond_1

    .line 2218
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2219
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2220
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2221
    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2222
    sget v3, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2223
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2224
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2226
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2227
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2228
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2229
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2230
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2232
    const/4 v1, -0x1

    .line 2234
    .local v1, startIndex:I
    iget v3, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v3, v4

    .line 2235
    .local v2, todayIndex:I
    if-gez v2, :cond_3

    .line 2237
    const/4 v1, 0x0

    .line 2243
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    .line 2245
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2246
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2247
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2248
    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2249
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2250
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2251
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2255
    .end local v1           #startIndex:I
    .end local v2           #todayIndex:I
    :cond_1
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_2

    .line 2257
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2258
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2259
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v3, v4

    .line 2260
    .local v0, daynum:I
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2261
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2262
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2263
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2265
    .end local v0           #daynum:I
    :cond_2
    return-void

    .line 2238
    .restart local v1       #startIndex:I
    .restart local v2       #todayIndex:I
    :cond_3
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v3, v4, :cond_0

    .line 2240
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v4, 0xc

    .line 2326
    sget v2, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2327
    sget v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2328
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2329
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2330
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2331
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 2332
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lt v2, v4, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2335
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2336
    .local v1, y:I
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2338
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    if-le v2, v4, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2341
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    rsub-int/lit8 v3, v3, 0xc

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2343
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2345
    :cond_1
    return-void
.end method

.method private drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2569
    iget v2, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2571
    .local v1, todayIndex:I
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2572
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2573
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2574
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2575
    sget v2, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2576
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2577
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2578
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2581
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 2583
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2585
    .local v0, lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 2586
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2587
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2588
    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2589
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2590
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2591
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2592
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2626
    .end local v0           #lineY:I
    :cond_0
    :goto_0
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2627
    return-void

    .line 2594
    :cond_1
    if-ltz v1, :cond_3

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v1, v2, :cond_3

    .line 2596
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2598
    .restart local v0       #lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 2599
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2600
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2601
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2602
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2603
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2604
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2605
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2609
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v3, :cond_0

    .line 2610
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2611
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2612
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2613
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2614
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2615
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2617
    .end local v0           #lineY:I
    :cond_3
    if-gez v1, :cond_0

    .line 2619
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2620
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2621
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2622
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2623
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2624
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "day"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2349
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2350
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2352
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2353
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2355
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2356
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2357
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2359
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2360
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2362
    :cond_0
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .parameter "dayStr"
    .parameter "day"
    .parameter "cell"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v9, 0x1

    .line 2462
    iget v7, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    add-int v1, v7, p2

    .line 2464
    .local v1, dateNum:I
    iget v7, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    if-le v1, v7, :cond_0

    .line 2465
    iget v7, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    sub-int/2addr v1, v7

    .line 2467
    :cond_0
    invoke-virtual {p5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2469
    iget v7, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v8, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v4, v7, v8

    .line 2471
    .local v4, todayIndex:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2472
    .local v2, dateNumStr:Ljava/lang/String;
    iget v7, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v7, v9, :cond_3

    .line 2473
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 2474
    .local v6, y:F
    add-int/lit8 v7, p2, 0x1

    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v7

    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    sub-int v5, v7, v8

    .line 2475
    .local v5, x:I
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2478
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2479
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2480
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2481
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2482
    .local v0, c:Ljava/util/Calendar;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 2483
    .local v3, t:Landroid/text/format/Time;
    iget v7, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v7, p2

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 2484
    iget v7, v3, Landroid/text/format/Time;->year:I

    iget v8, v3, Landroid/text/format/Time;->month:I

    iget v9, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 2485
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/calendar/Utils;->getLunarDayString(Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    int-to-float v8, v5

    invoke-virtual {p4, v7, v8, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2489
    .end local v0           #c:Ljava/util/Calendar;
    .end local v3           #t:Landroid/text/format/Time;
    :cond_1
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_LUNAR_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 2490
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_DAY_FONT_SIZE:F

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2491
    if-ne v4, p2, :cond_2

    iget-object v7, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2492
    int-to-float v7, v5

    invoke-virtual {p4, v2, v7, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2495
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_DATE_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 2496
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2497
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2498
    int-to-float v7, v5

    invoke-virtual {p4, p1, v7, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2516
    :goto_1
    return-void

    .line 2491
    :cond_2
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 2500
    .end local v5           #x:I
    .end local v6           #y:F
    :cond_3
    sget v7, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 2501
    .restart local v6       #y:F
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2505
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v7

    sget v8, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    add-int v5, v7, v8

    .line 2506
    .restart local v5       #x:I
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2507
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2508
    int-to-float v7, v5

    invoke-virtual {p4, p1, v7, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2511
    int-to-float v7, v5

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sget v9, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 2512
    sget v7, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2513
    if-ne v4, p2, :cond_4

    iget-object v7, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2514
    int-to-float v7, v5

    invoke-virtual {p4, v2, v7, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2513
    :cond_4
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    .line 2281
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_0

    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    if-nez v0, :cond_0

    .line 2323
    :goto_0
    return-void

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2286
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2287
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2290
    .local v3, cell:I
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-ge v0, v1, :cond_3

    .line 2291
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 2296
    .local v8, dayNames:[Ljava/lang/String;
    :goto_1
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2297
    const/4 v2, 0x0

    .local v2, day:I
    :goto_2
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_7

    .line 2298
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    add-int v9, v2, v0

    .line 2299
    .local v9, dayOfWeek:I
    const/16 v0, 0xe

    if-lt v9, v0, :cond_1

    .line 2300
    add-int/lit8 v9, v9, -0xe

    .line 2303
    :cond_1
    sget v6, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 2304
    .local v6, color:I
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_5

    .line 2305
    const/4 v0, 0x6

    if-ne v9, v0, :cond_4

    .line 2306
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 2319
    :cond_2
    :goto_3
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2320
    aget-object v1, v8, v9

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2297
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2293
    .end local v2           #day:I
    .end local v6           #color:I
    .end local v8           #dayNames:[Ljava/lang/String;
    .end local v9           #dayOfWeek:I
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v8       #dayNames:[Ljava/lang/String;
    goto :goto_1

    .line 2307
    .restart local v2       #day:I
    .restart local v6       #color:I
    .restart local v9       #dayOfWeek:I
    :cond_4
    if-nez v9, :cond_2

    .line 2308
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2311
    :cond_5
    rem-int/lit8 v7, v2, 0x7

    .line 2312
    .local v7, column:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2313
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    goto :goto_3

    .line 2314
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2315
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3

    .line 2322
    .end local v6           #color:I
    .end local v7           #column:I
    .end local v9           #dayOfWeek:I
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;
    .locals 9
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"
    .parameter "visibleTop"
    .parameter "visibleBot"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    .line 3348
    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3349
    .local v4, r:Landroid/graphics/Rect;
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    invoke-static {v5, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3350
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3351
    iget v5, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3352
    iget v5, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3354
    iget v1, p1, Lcom/android/calendar/Event;->color:I

    .line 3355
    .local v1, color:I
    iget v5, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v5, :pswitch_data_0

    .line 3365
    :goto_0
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3369
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3371
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 3372
    .local v2, floorHalfStroke:I
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 3373
    .local v0, ceilHalfStroke:I
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-static {v5, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3374
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3376
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3377
    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3378
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3379
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3380
    invoke-virtual {p2, v4, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3382
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3385
    iget-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v5, p1, :cond_2

    .line 3386
    const/4 v3, 0x0

    .line 3387
    .local v3, paintIt:Z
    const/4 v1, 0x0

    .line 3388
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v5, v8, :cond_3

    .line 3390
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3391
    sget v1, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3392
    const/4 v3, 0x1

    .line 3400
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 3401
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3402
    invoke-virtual {p2, v4, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3405
    :cond_1
    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3425
    .end local v3           #paintIt:Z
    :cond_2
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3426
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3427
    iget v5, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3428
    iget v5, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3429
    return-object v4

    .line 3357
    .end local v0           #ceilHalfStroke:I
    .end local v2           #floorHalfStroke:I
    :pswitch_0
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_1

    .line 3360
    :pswitch_1
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v1

    goto/16 :goto_0

    .line 3393
    .restart local v0       #ceilHalfStroke:I
    .restart local v2       #floorHalfStroke:I
    .restart local v3       #paintIt:Z
    :cond_3
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 3395
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3396
    sget v1, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3397
    const/4 v3, 0x1

    goto :goto_2

    .line 3355
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V
    .locals 9
    .parameter "eventLayout"
    .parameter "rect"
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 3457
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int v5, v6, v7

    .line 3458
    .local v5, width:I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 3461
    .local v0, height:I
    if-eqz p1, :cond_0

    sget v6, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    if-ge v5, v6, :cond_1

    .line 3495
    :cond_0
    :goto_0
    return-void

    .line 3465
    :cond_1
    const/4 v4, 0x0

    .line 3466
    .local v4, totalLineHeight:I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 3467
    .local v3, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3468
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    .line 3469
    .local v2, lineBottom:I
    if-gt v2, v0, :cond_2

    .line 3470
    move v4, v2

    .line 3467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3476
    .end local v2           #lineBottom:I
    :cond_2
    if-eqz v4, :cond_0

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-gt v6, p5, :cond_0

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    if-lt v6, p4, :cond_0

    .line 3481
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 3482
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3483
    iput v8, p2, Landroid/graphics/Rect;->left:I

    .line 3484
    iput v5, p2, Landroid/graphics/Rect;->right:I

    .line 3485
    iput v8, p2, Landroid/graphics/Rect;->top:I

    .line 3486
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 3492
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3493
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3494
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 26
    .parameter "date"
    .parameter "dayIndex"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 3007
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 3008
    .local v4, left:I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 3009
    .local v6, cellWidth:I
    sget v21, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3012
    .local v21, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 3013
    .local v25, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v5, v21, 0x1

    mul-int/2addr v3, v5

    add-int v3, v3, p3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3014
    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v21

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3015
    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3016
    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 3019
    .local v22, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 3020
    .local v24, numEvents:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 3022
    .local v2, geometry:Lcom/android/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v14, v3, v5

    .line 3023
    .local v14, viewEndY:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 3024
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .local v7, event:Lcom/android/calendar/Event;
    move/from16 v3, p1

    move/from16 v5, p3

    .line 3025
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3023
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 3030
    :cond_1
    iget v3, v7, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    iget v3, v7, Lcom/android/calendar/Event;->top:F

    int-to-float v5, v14

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 3034
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v25

    invoke-virtual {v2, v7, v0}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3039
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 3040
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 3043
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gt v3, v14, :cond_0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v5, :cond_0

    .line 3046
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move/from16 v10, v23

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 3048
    .local v16, layout:Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v20}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 3052
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v16           #layout:Landroid/text/StaticLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_4

    .line 3054
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeNeighbors()V

    .line 3056
    :cond_4
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2519
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 2521
    .local v7, savedStyle:Landroid/graphics/Paint$Style;
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v13, v13, 0x1

    invoke-direct {p0, v13}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v9, v13

    .line 2522
    .local v9, stopX:F
    const/4 v12, 0x0

    .line 2523
    .local v12, y:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    int-to-float v3, v13

    .line 2524
    .local v3, deltaY:F
    const/4 v5, 0x0

    .line 2525
    .local v5, linesIndex:I
    const/4 v8, 0x0

    .line 2526
    .local v8, startY:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    int-to-float v10, v13

    .line 2527
    .local v10, stopY:F
    iget v13, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v11, v13

    .line 2530
    .local v11, x:F
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2531
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2532
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2533
    const/4 v12, 0x0

    .line 2534
    const/4 v5, 0x0

    .line 2535
    const/4 v4, 0x0

    .local v4, hour:I
    move v6, v5

    .end local v5           #linesIndex:I
    .local v6, linesIndex:I
    :goto_0
    const/16 v13, 0x18

    if-gt v4, v13, :cond_0

    .line 2536
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v14, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v14, v13, v6

    .line 2537
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2538
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v9, v13, v6

    .line 2539
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2540
    add-float/2addr v12, v3

    .line 2535
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2542
    :cond_0
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v14, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v13, v14, :cond_2

    .line 2543
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v6, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2544
    const/4 v5, 0x0

    .line 2545
    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2549
    :goto_1
    const/4 v2, 0x0

    .local v2, day:I
    :goto_2
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-gt v2, v13, :cond_1

    .line 2550
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v11, v13

    .line 2551
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2552
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    const/4 v14, 0x0

    aput v14, v13, v6

    .line 2553
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2554
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v10, v13, v6

    .line 2549
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2556
    :cond_1
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v5, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2559
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2560
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2561
    return-void

    .end local v2           #day:I
    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    :cond_2
    move v5, v6

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    goto :goto_1
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2442
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2444
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int v2, v3, v4

    .line 2446
    .local v2, y:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    .line 2447
    iget-object v3, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 2448
    .local v1, time:Ljava/lang/String;
    sget v3, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2449
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 2446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2451
    .end local v1           #time:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2197
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .line 2198
    .local v6, right:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v7, v0, -0x1

    .line 2200
    .local v7, y:I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2201
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2203
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2204
    const/high16 v0, 0x3f80

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2205
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2206
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2207
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2399
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_0

    .line 2400
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v9, v3, v4

    .line 2401
    .local v9, daynum:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2402
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2403
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2404
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2406
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2409
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2410
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2411
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2412
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2413
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2417
    sget v3, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2418
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 2419
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2420
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    .line 2421
    .local v15, width:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v15, 0x2

    add-int v12, v3, v4

    .line 2422
    .local v12, midX:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 2423
    .local v13, midY:I
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v11, v3, v4

    .line 2424
    .local v11, length:I
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2425
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    sub-int/2addr v3, v11

    div-int/lit8 v14, v3, 0x2

    .line 2426
    .local v14, verticalPadding:I
    sub-int v3, v15, v11

    div-int/lit8 v10, v3, 0x2

    .line 2427
    .local v10, horizontalPadding:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    int-to-float v4, v3

    int-to-float v5, v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v6, v3

    int-to-float v7, v13

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2429
    int-to-float v4, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    int-to-float v5, v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2439
    .end local v9           #daynum:I
    .end local v10           #horizontalPadding:I
    .end local v11           #length:I
    .end local v12           #midX:I
    .end local v13           #midY:I
    .end local v14           #verticalPadding:I
    .end local v15           #width:I
    :cond_0
    :goto_0
    return-void

    .line 2431
    .restart local v9       #daynum:I
    :cond_1
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2432
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2433
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2434
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget v6, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3439
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3442
    if-gtz p2, :cond_1

    .line 3443
    const-string v0, ""

    .line 3450
    :cond_0
    :goto_0
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3445
    :cond_1
    if-le v1, p2, :cond_0

    .line 3446
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2183
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2184
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_0

    .line 2186
    sget-boolean v0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1

    .line 2187
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2188
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2194
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2191
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private findSelectedEvent(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 4424
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4425
    iget v4, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 4426
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 4427
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4428
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    .line 4429
    const/4 v3, 0x0

    .line 4430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4432
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4433
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v0, :cond_6

    .line 4435
    const v3, 0x461c4000

    .line 4436
    const/4 v2, 0x0

    .line 4437
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v6, v0

    .line 4438
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v7, v0, v1

    .line 4439
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 4440
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v1, v4, :cond_12

    .line 4442
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 4444
    :goto_0
    iget-object v8, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 4445
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4446
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v9, :cond_11

    .line 4447
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4448
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v4

    if-lt v4, v1, :cond_0

    move-object v0, v2

    move v2, v3

    .line 4446
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move-object v2, v0

    goto :goto_1

    .line 4454
    :cond_0
    iget v4, v0, Lcom/android/calendar/Event;->startDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-gt v4, v10, :cond_10

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-lt v4, v10, :cond_10

    .line 4455
    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v4, v4

    .line 4457
    :goto_3
    div-float v4, v6, v4

    .line 4458
    sget v10, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_1

    .line 4459
    sget v4, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v4, v4

    .line 4461
    :cond_1
    int-to-float v10, v7

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    .line 4462
    add-float/2addr v4, v10

    .line 4463
    int-to-float v11, p2

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    int-to-float v11, p2

    cmpl-float v11, v4, v11

    if-lez v11, :cond_4

    .line 4466
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    :goto_4
    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4555
    :cond_2
    :goto_5
    return-void

    .line 4455
    :cond_3
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v4, v4

    goto :goto_3

    .line 4471
    :cond_4
    int-to-float v11, p2

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    .line 4472
    int-to-float v4, p2

    sub-float v4, v10, v4

    .line 4476
    :goto_6
    cmpg-float v10, v4, v3

    if-gez v10, :cond_10

    move v2, v4

    .line 4478
    goto :goto_2

    .line 4474
    :cond_5
    int-to-float v10, p2

    sub-float v4, v10, v4

    goto :goto_6

    .line 4488
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int/2addr v0, v5

    add-int v9, p2, v0

    .line 4491
    iget-object v10, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 4492
    add-int/lit8 v0, p1, -0xa

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 4493
    add-int/lit8 v0, p1, 0xa

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 4494
    add-int/lit8 v0, v9, -0xa

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 4495
    add-int/lit8 v0, v9, 0xa

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 4497
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 4499
    const/4 v5, 0x0

    move v6, v5

    :goto_7
    if-ge v6, v8, :cond_9

    .line 4500
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 4502
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 4499
    :cond_7
    :goto_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_7

    .line 4508
    :cond_8
    invoke-virtual {v0, v5, v10}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4509
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 4515
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4516
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4517
    const/4 v4, 0x0

    .line 4518
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v1, v2

    int-to-float v3, v1

    .line 4519
    const/4 v1, 0x0

    move v5, v1

    :goto_9
    if-ge v5, v6, :cond_a

    .line 4520
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 4521
    int-to-float v2, p1

    int-to-float v7, v9

    invoke-virtual {v0, v2, v7, v1}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v2

    .line 4522
    cmpg-float v7, v2, v3

    if-gez v7, :cond_f

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 4519
    :goto_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v3, v1

    goto :goto_9

    .line 4527
    :cond_a
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4533
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 4534
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v0, Lcom/android/calendar/Event;->endDay:I

    .line 4535
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ge v0, v1, :cond_c

    .line 4536
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4541
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v0, 0x3c

    .line 4543
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    if-ge v0, v4, :cond_d

    .line 4544
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3c

    .line 4549
    :goto_c
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ge v4, v3, :cond_e

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v4, v1, :cond_e

    .line 4550
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_5

    .line 4537
    :cond_c
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-le v0, v2, :cond_b

    .line 4538
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    goto :goto_b

    .line 4546
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v0, v0, 0x3c

    goto :goto_c

    .line 4551
    :cond_e
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v0, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v1, v2, :cond_2

    .line 4552
    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_5

    :cond_f
    move v1, v3

    move-object v2, v4

    goto :goto_a

    :cond_10
    move-object v0, v2

    move v2, v3

    goto/16 :goto_2

    :cond_11
    move-object v0, v2

    goto/16 :goto_4

    :cond_12
    move v1, v0

    goto/16 :goto_0
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3674
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3676
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3679
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3680
    :goto_0
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_1

    .line 3684
    :goto_1
    const-string v2, "animateDayHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3686
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3688
    new-instance v1, Lcom/android/calendar/DayView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$5;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3700
    return-object v0

    .line 3679
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_0

    .line 3680
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3650
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3652
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3655
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int/2addr v0, v1

    .line 3656
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3657
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_0

    .line 3660
    :goto_0
    if-ne v1, v0, :cond_1

    .line 3661
    const/4 v0, 0x0

    .line 3668
    :goto_1
    return-object v0

    .line 3657
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    goto :goto_0

    .line 3665
    :cond_1
    const-string v2, "animateDayEventHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3667
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 2682
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2683
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2684
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2685
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2686
    .local v1, daynum:I
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2687
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2688
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 4308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4313
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "calendar_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4319
    if-nez v1, :cond_0

    move v0, v10

    .line 4357
    :goto_0
    return v0

    .line 4323
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 4325
    goto :goto_0

    .line 4328
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4329
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4332
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4333
    const-string v1, "_id=%d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4334
    sget-object v6, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4337
    if-eqz v1, :cond_5

    .line 4338
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4339
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4340
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4344
    :goto_1
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_2

    move v0, v10

    .line 4345
    goto :goto_0

    .line 4348
    :cond_2
    iget-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v0, :cond_3

    move v0, v11

    .line 4349
    goto :goto_0

    .line 4352
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    .line 4354
    goto :goto_0

    :cond_4
    move v0, v12

    .line 4357
    goto :goto_0

    :cond_5
    move v0, v10

    goto :goto_1
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 13
    .parameter "layouts"
    .parameter "i"
    .parameter "event"
    .parameter "paint"
    .parameter "r"

    .prologue
    .line 2730
    if-ltz p2, :cond_0

    array-length v3, p1

    if-lt p2, v3, :cond_2

    .line 2731
    :cond_0
    const/4 v1, 0x0

    .line 2774
    :cond_1
    :goto_0
    return-object v1

    .line 2734
    :cond_2
    aget-object v1, p1, p2

    .line 2738
    .local v1, layout:Landroid/text/StaticLayout;
    if-eqz v1, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2739
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2740
    .local v2, bob:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 2742
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f3

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2743
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2744
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2746
    :cond_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 2747
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    rsub-int v4, v4, 0x1f4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2751
    :cond_5
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v3, :pswitch_data_0

    .line 2763
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2768
    :goto_1
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #layout:Landroid/text/StaticLayout;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    new-instance v5, Landroid/text/TextPaint;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 2771
    .restart local v1       #layout:Landroid/text/StaticLayout;
    aput-object v1, p1, p2

    goto/16 :goto_0

    .line 2753
    :pswitch_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->color:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2756
    :pswitch_1
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2757
    const/16 v3, 0xc0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 2751
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private incrementSkipCount([III)V
    .locals 2
    .parameter "counts"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 2915
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p3, v1, :cond_1

    .line 2921
    :cond_0
    return-void

    .line 2918
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 2919
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 2918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setFocusable(Z)V

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setFocusableInTouchMode(Z)V

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setClickable(Z)V

    .line 753
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 755
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 757
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 759
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 760
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    .line 762
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 763
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    .line 764
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 765
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    .line 766
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mBgColor:I

    .line 767
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    .line 768
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    .line 769
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 771
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 773
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    .line 774
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 775
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mEventTextColor:I

    .line 776
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    .line 778
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 779
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 780
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 783
    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 784
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 785
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 786
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 788
    iget-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 789
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 793
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 796
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move v0, v1

    .line 798
    :goto_0
    const/4 v3, 0x7

    if-gt v0, v3, :cond_1

    .line 799
    add-int/lit8 v3, v0, -0x1

    .line 801
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    const/16 v5, 0x14

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 803
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    .line 805
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 809
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x32

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 813
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v3, v6, v3

    aput-object v3, v4, v5

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_1
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 819
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 820
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, " 28"

    aput-object v3, v0, v7

    const-string v3, " 30"

    aput-object v3, v0, v1

    .line 821
    invoke-direct {p0, v7, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 822
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 823
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v7, v3, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 825
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 826
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 827
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 829
    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 830
    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 831
    new-array v0, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 832
    sget v3, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 833
    sget v3, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-direct {p0, v4, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    sget v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 835
    sget v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 838
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 839
    const v2, 0x7f040010

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    .line 840
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 844
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 846
    const v2, 0x103000b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 847
    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 850
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 853
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 857
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 859
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 861
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    .line 862
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    .line 868
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x19

    .line 870
    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLines:[F

    .line 871
    return-void
.end method

.method private initAccessibilityVariables()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 903
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 904
    invoke-direct {p0}, Lcom/android/calendar/DayView;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 905
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFirstHour()V
    .locals 2

    .prologue
    .line 1859
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1860
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 1861
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 1863
    iget v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    .line 3971
    iget-object v3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 3972
    .local v2, view:Lcom/android/calendar/DayView;
    iget-object v0, v2, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 3973
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3975
    if-lez p1, :cond_0

    .line 3976
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3977
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3978
    const/4 v1, 0x0

    .line 3984
    .local v1, switchForward:Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3985
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 3986
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->layout(IIII)V

    .line 3987
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 3988
    return v1

    .line 3980
    .end local v1           #switchForward:Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3981
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3982
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_0
.end method

.method private initView(Lcom/android/calendar/DayView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1314
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1315
    iget-object v0, p1, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1317
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1318
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1319
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1320
    invoke-virtual {p1}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1322
    iput-object v2, p1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1323
    iput-object v2, p1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1324
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 1325
    iget-object v0, p1, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1326
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1334
    :goto_0
    invoke-direct {p1}, Lcom/android/calendar/DayView;->recalc()V

    .line 1335
    return-void

    .line 1328
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalc()V
    .locals 4

    .prologue
    .line 1139
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1140
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1143
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1144
    .local v0, start:J
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 1145
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    .line 1147
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    .line 1148
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    .line 1149
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    .line 1150
    return-void
.end method

.method private remeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1188
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1189
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    div-int/lit8 v2, p2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1190
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1192
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v0, v1

    .line 1197
    :goto_0
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v0, v2, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    const/16 v3, 0x19

    aput v3, v2, v0

    .line 1199
    iget-object v2, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    aput-boolean v1, v2, v0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1205
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x18

    sget v3, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 1206
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v3, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v0, v3, :cond_1

    .line 1207
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 1211
    :cond_1
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1213
    if-lez v2, :cond_c

    .line 1214
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    sget v3, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v3

    .line 1217
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1218
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1246
    :cond_2
    :goto_1
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v2, v0

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1250
    :goto_2
    iput v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    .line 1252
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 1255
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1256
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1258
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1260
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sget v3, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1261
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1264
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 1265
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1267
    sget v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    const v2, 0x476a6000

    mul-float/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4270

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-long v2, v0

    .line 1269
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1272
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1273
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1274
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_3
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v0, v2, :cond_4

    .line 1278
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1279
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1282
    :cond_4
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1283
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initFirstHour()V

    .line 1284
    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1291
    :cond_5
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_6

    .line 1292
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1294
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1296
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 1298
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v1, :cond_7

    iget-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v3, v3, Lcom/android/calendar/Event;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 1299
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1301
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1303
    return-void

    .line 1219
    :cond_8
    iget v3, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v2, v3, :cond_9

    .line 1222
    sget v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int/2addr v0, v2

    .line 1223
    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v2, :cond_2

    .line 1224
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_1

    .line 1229
    :cond_9
    iget v3, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_a

    .line 1233
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    .line 1236
    :cond_a
    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1238
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_b

    sget v3, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v2, v3, :cond_b

    .line 1239
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_1

    .line 1241
    :cond_b
    if-gt v2, v0, :cond_2

    move v0, v2

    goto/16 :goto_1

    .line 1248
    :cond_c
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v0, v1

    goto/16 :goto_2
.end method

.method private resetSelectedHour()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1845
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1846
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1847
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1848
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1849
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 1851
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1852
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1853
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1854
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2676
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2677
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2678
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2679
    return-void
.end method

.method private sendAccessibilityEventAsNeeded(Z)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1638
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-eq v0, v1, :cond_9

    move v1, v2

    .line 1642
    :goto_1
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-eq v0, v4, :cond_a

    move v6, v2

    .line 1643
    :goto_2
    if-nez v1, :cond_2

    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v0, v4, :cond_0

    .line 1644
    :cond_2
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    .line 1645
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    .line 1646
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    .line 1648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    if-eqz v1, :cond_3

    .line 1652
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    const-string v4, "%A "

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :cond_3
    if-eqz v6, :cond_4

    .line 1655
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_b

    const-string v0, "%k"

    :goto_3
    invoke-virtual {v4, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    :cond_4
    if-nez v1, :cond_5

    if-eqz v6, :cond_6

    .line 1658
    :cond_5
    const-string v0, ". "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    :cond_6
    if-eqz p1, :cond_e

    .line 1662
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1663
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0096

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 1667
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1668
    if-lez v8, :cond_10

    .line 1669
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_c

    .line 1672
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1673
    if-le v8, v2, :cond_8

    .line 1675
    sget-object v5, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1676
    sget-object v10, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v11, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1677
    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 1679
    :cond_8
    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto :goto_4

    :cond_9
    move v1, v3

    .line 1641
    goto/16 :goto_1

    :cond_a
    move v6, v3

    .line 1642
    goto/16 :goto_2

    .line 1655
    :cond_b
    const-string v0, "%l%p"

    goto :goto_3

    .line 1682
    :cond_c
    if-le v8, v2, :cond_d

    .line 1684
    sget-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1685
    sget-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1687
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    .line 1696
    :cond_e
    :goto_5
    if-nez v1, :cond_f

    if-nez v6, :cond_f

    if-eqz p1, :cond_0

    .line 1697
    :cond_f
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1699
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1700
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1701
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1702
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    .line 1692
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private setSelectionFromPosition(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4370
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    if-ge p1, v4, :cond_0

    .line 4371
    iget p1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 4374
    :cond_0
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    div-int v1, v4, v5

    .line 4375
    .local v1, day:I
    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-lt v1, v4, :cond_1

    .line 4376
    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v4, -0x1

    .line 4378
    :cond_1
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v4

    .line 4379
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4381
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v4, :cond_2

    .line 4382
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4420
    :goto_0
    return v2

    .line 4386
    :cond_2
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4388
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    if-ge p2, v4, :cond_3

    .line 4389
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4403
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->findSelectedEvent(II)V

    .line 4419
    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    move v2, v3

    .line 4420
    goto :goto_0

    .line 4392
    :cond_3
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v4

    .line 4394
    .local v0, adjustedY:I
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-ge v0, v4, :cond_4

    .line 4395
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4400
    :goto_2
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_1

    .line 4397
    :cond_4
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int v5, v0, v5

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto :goto_2
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2709
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2710
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2711
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2723
    :cond_1
    :goto_0
    return-void

    .line 2715
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2716
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2717
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2719
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2720
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2721
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 2454
    sget v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2455
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2456
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2457
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2458
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2459
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2692
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2693
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2694
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2706
    :cond_1
    :goto_0
    return-void

    .line 2698
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2699
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2700
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2702
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2703
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2704
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1763
    sub-float v3, p3, p2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 1764
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1765
    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchViews("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") O:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Dist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v4, v3, p3

    .line 1769
    const/high16 v3, 0x3f80

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 1770
    const/high16 v4, 0x3f80

    .line 1775
    :cond_1
    if-eqz p1, :cond_2

    .line 1776
    const/high16 v3, 0x3f80

    sub-float v5, v3, v4

    .line 1777
    const/4 v7, 0x0

    .line 1778
    neg-float v4, v4

    .line 1779
    const/high16 v3, -0x4080

    move v13, v3

    move v14, v4

    .line 1787
    :goto_0
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1789
    if-eqz p1, :cond_3

    .line 1790
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1794
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 1798
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 1799
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1800
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    move-object v15, v3

    .line 1803
    :goto_2
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1804
    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1808
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1814
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v14

    move v8, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1820
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, p3, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/calendar/DayView;->calculateDuration(FFF)J

    move-result-wide v5

    .line 1821
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1824
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1825
    new-instance v5, Lcom/android/calendar/DayView$GotoBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/android/calendar/DayView$GotoBroadcaster;-><init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1830
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->cleanup()V

    .line 1831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 1832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1833
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 1834
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->requestFocus()Z

    .line 1835
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 1836
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 1837
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 1839
    return-object v3

    .line 1781
    :cond_2
    const/high16 v3, 0x3f80

    sub-float v5, v4, v3

    .line 1782
    const/4 v7, 0x0

    .line 1784
    const/high16 v3, 0x3f80

    move v13, v3

    move v14, v4

    goto/16 :goto_0

    .line 1792
    :cond_3
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v15, v16

    goto/16 :goto_2
.end method

.method private switchViews(Z)V
    .locals 31
    .parameter "trackBallSelection"

    .prologue
    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v30, v0

    .line 1347
    .local v30, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1348
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 1354
    if-eqz p1, :cond_4

    .line 1355
    if-nez v30, :cond_2

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1358
    .local v8, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1359
    .local v10, endMillis:J
    const-wide/16 v14, 0x0

    .line 1360
    .local v14, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_0

    .line 1361
    const-wide/16 v14, 0x10

    .line 1363
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1410
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_1
    :goto_0
    return-void

    .line 1366
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_3

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1370
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1378
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1379
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_5

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1382
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1391
    :cond_6
    if-nez v30, :cond_8

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1394
    .restart local v8       #startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1395
    .restart local v10       #endMillis:J
    const-wide/16 v14, 0x0

    .line 1396
    .restart local v14       #extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_7

    .line 1397
    const-wide/16 v14, 0x10

    .line 1399
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_0

    .line 1402
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_9

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1405
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0
.end method

.method private updateEventDetails()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 3525
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3527
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3573
    :cond_1
    :goto_0
    return-void

    .line 3530
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3534
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 3537
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3539
    iget-object v8, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3540
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3541
    iget-object v1, v8, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3543
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3544
    iget-boolean v1, v8, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v1, :cond_4

    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3546
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3547
    iget-boolean v1, v8, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v1, :cond_5

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3550
    iget-boolean v0, v8, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_6

    .line 3551
    const v0, 0x82012

    .line 3558
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3559
    or-int/lit16 v5, v0, 0x80

    .line 3561
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, v8, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v8, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 3563
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f10002f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3564
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3566
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3567
    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3568
    if-eqz v1, :cond_7

    :goto_5
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3569
    if-nez v1, :cond_3

    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3571
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3572
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    move v1, v7

    .line 3544
    goto :goto_1

    :cond_5
    move v1, v7

    .line 3547
    goto :goto_2

    .line 3554
    :cond_6
    const v0, 0x81413

    goto :goto_3

    :cond_7
    move v7, v6

    .line 3568
    goto :goto_5

    :cond_8
    move v5, v0

    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4604
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4606
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4607
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 4608
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4609
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4610
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4613
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_default_cell_height"

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4618
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 1934
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1935
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1094
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    .line 1095
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v2, Landroid/text/format/Time;->minute:I

    .line 1096
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v2, Landroid/text/format/Time;->second:I

    .line 1098
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->hour:I

    .line 1099
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->minute:I

    .line 1100
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->second:I

    .line 1102
    sget-boolean v2, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1103
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Diff  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1109
    if-lez v2, :cond_4

    .line 1111
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 1112
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1113
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1115
    sget-boolean v6, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_1
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 1118
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1119
    if-gez v2, :cond_3

    .line 1128
    :goto_0
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 1131
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v4, v1, Landroid/text/format/Time;->minute:I

    .line 1132
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 1133
    return v0

    .line 1122
    :cond_3
    if-nez v2, :cond_4

    move v0, v1

    .line 1124
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f00

    .line 2925
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    .line 2926
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2928
    iget-object v2, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2929
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 2930
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 2931
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2932
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2933
    sget v3, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2934
    sget v3, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2935
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2936
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2937
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2938
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2939
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2940
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2941
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 2942
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, v3

    .line 2943
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 2944
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2945
    return-void
.end method

.method getFirstVisibleHour()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 925
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 926
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 931
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 932
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 913
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 914
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 915
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 920
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 886
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_tardis_1"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    sput v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    .line 892
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    .line 893
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 894
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    .line 895
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    .line 897
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 898
    return-void

    .line 889
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    goto :goto_0

    .line 892
    :cond_1
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_1
.end method

.method public initAllDayHeights()V
    .locals 3

    .prologue
    .line 3634
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_0

    .line 3645
    :goto_0
    return-void

    .line 3637
    :cond_0
    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_1

    .line 3638
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 3639
    .local v0, maxADHeight:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3641
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0

    .line 3643
    .end local v0           #maxADHeight:I
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    .line 742
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 880
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 882
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x6e

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4164
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eq v0, v8, :cond_0

    .line 4165
    iput v8, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4166
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4169
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4170
    const/16 v5, 0x1403

    .line 4173
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 4174
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4176
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4177
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v7, :cond_4

    .line 4182
    if-lt v0, v7, :cond_3

    .line 4183
    const/4 v0, 0x5

    const v1, 0x7f0c000e

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4184
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4185
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4187
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4188
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4189
    const/4 v1, 0x7

    const v2, 0x7f0c0010

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4190
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4191
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4192
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4195
    :cond_1
    if-lt v0, v7, :cond_2

    .line 4196
    const/16 v0, 0x8

    const v1, 0x7f0c0011

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4197
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4198
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4201
    :cond_2
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4202
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4203
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4204
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4249
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4250
    return-void

    .line 4208
    :cond_3
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4209
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4210
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4211
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 4218
    :cond_4
    if-lt v0, v7, :cond_6

    .line 4219
    const/4 v0, 0x5

    const v1, 0x7f0c000e

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4220
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4221
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4223
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4224
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 4225
    const/4 v1, 0x7

    const v2, 0x7f0c0010

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4226
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4227
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4228
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4231
    :cond_5
    if-lt v0, v7, :cond_6

    .line 4232
    const/16 v0, 0x8

    const v1, 0x7f0c0011

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4233
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4234
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4238
    :cond_6
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4239
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4240
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4241
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4243
    const v0, 0x7f0c0009

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4244
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4245
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4246
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4633
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 4634
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4635
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2083
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    if-eqz v0, :cond_0

    .line 2084
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 2085
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 2087
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2089
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    .line 2091
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2093
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 2094
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2095
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2096
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2097
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2098
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2099
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2101
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2105
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2107
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_6

    .line 2108
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v0, v0

    move v1, v0

    .line 2115
    :goto_0
    neg-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2116
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 2119
    iput v3, v0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 2121
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2123
    neg-float v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2132
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2133
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    if-eqz v0, :cond_1

    .line 2134
    invoke-direct {p0}, Lcom/android/calendar/DayView;->updateEventDetails()V

    .line 2135
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 2137
    :cond_1
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 2140
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2141
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_2

    .line 2142
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2144
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2145
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 2147
    :cond_3
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_4

    .line 2148
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2151
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2152
    const/high16 v0, 0x4334

    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2153
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2154
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 2157
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2158
    return-void

    .line 2110
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    move v1, v0

    goto :goto_0

    .line 2128
    :cond_7
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v0, v0

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 1604
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1606
    packed-switch v0, :pswitch_data_0

    .line 1617
    :pswitch_0
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hover event action. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_1

    .line 1624
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1630
    :goto_1
    return v0

    .line 1608
    :pswitch_1
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1611
    :pswitch_2
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1614
    :pswitch_3
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    .line 1628
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1630
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1606
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 22
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-nez v2, :cond_2

    .line 1457
    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x16

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 1462
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1464
    const/4 v2, 0x1

    .line 1598
    :goto_0
    return v2

    .line 1465
    :cond_1
    const/16 v2, 0x17

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1468
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1470
    const/4 v2, 0x1

    goto :goto_0

    .line 1474
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v20, v0

    .line 1479
    .local v20, selectionDay:I
    sparse-switch p1, :sswitch_data_0

    .line 1560
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1482
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    .line 1483
    .local v19, selectedEvent:Lcom/android/calendar/Event;
    if-nez v19, :cond_3

    .line 1484
    const/4 v2, 0x0

    goto :goto_0

    .line 1486
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1487
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1489
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1490
    .local v3, begin:J
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1491
    .local v5, end:J
    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    .line 1492
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v9, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1493
    const/4 v2, 0x1

    goto :goto_0

    .line 1495
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #id:J
    .end local v19           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 1496
    const/4 v2, 0x1

    goto :goto_0

    .line 1498
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1500
    const/4 v2, 0x1

    goto :goto_0

    .line 1502
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1504
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_5

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1507
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_6

    .line 1508
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1509
    add-int/lit8 v20, v20, -0x1

    .line 1511
    :cond_6
    const/16 v18, 0x1

    .line 1563
    .local v18, redraw:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    move/from16 v0, v20

    if-le v0, v2, :cond_10

    .line 1564
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/DayView;

    .line 1565
    .local v21, view:Lcom/android/calendar/DayView;
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1566
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_f

    .line 1568
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    .line 1572
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1573
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1575
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 1577
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v13}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1578
    .local v5, end:Landroid/text/format/Time;
    iget v2, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    iput v2, v5, Landroid/text/format/Time;->monthDay:I

    .line 1579
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v5

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1580
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1515
    .end local v5           #end:Landroid/text/format/Time;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v18           #redraw:Z
    .end local v21           #view:Lcom/android/calendar/DayView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_8

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1518
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_9

    .line 1519
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1520
    add-int/lit8 v20, v20, 0x1

    .line 1522
    :cond_9
    const/16 v18, 0x1

    .line 1523
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1526
    .end local v18           #redraw:Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_a

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1529
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_b

    .line 1530
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1531
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v2, :cond_b

    .line 1532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1533
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1535
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1538
    :cond_b
    const/16 v18, 0x1

    .line 1539
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1542
    .end local v18           #redraw:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_c

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1545
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_d

    .line 1546
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1547
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_e

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1556
    :cond_d
    :goto_3
    const/16 v18, 0x1

    .line 1557
    .restart local v18       #redraw:Z
    goto/16 :goto_1

    .line 1550
    .end local v18           #redraw:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1551
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1553
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1570
    .restart local v13       #date:Landroid/text/format/Time;
    .restart local v18       #redraw:Z
    .restart local v21       #view:Lcom/android/calendar/DayView;
    :cond_f
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_2

    .line 1582
    .end local v13           #date:Landroid/text/format/Time;
    .end local v21           #view:Lcom/android/calendar/DayView;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_11

    .line 1583
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v13, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1584
    .restart local v13       #date:Landroid/text/format/Time;
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v2, v13, Landroid/text/format/Time;->hour:I

    .line 1586
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v13

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1588
    .end local v13           #date:Landroid/text/format/Time;
    :cond_11
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1590
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1591
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1593
    if-eqz v18, :cond_12

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1598
    :cond_12
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1479
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1415
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1417
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1451
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1419
    :pswitch_0
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1424
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1429
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1430
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto :goto_0

    .line 1435
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1436
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->switchViews(Z)V

    goto :goto_0

    .line 1438
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1439
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_0

    .line 1417
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 4713
    const/4 v5, 0x2

    .line 4714
    .local v5, flags:I
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4715
    .local v1, time:J
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v0, :cond_0

    .line 4716
    or-int/lit8 v5, v5, 0x1

    .line 4718
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4719
    or-int/lit16 v5, v5, 0x80

    .line 4721
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 4722
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/calendar/DayView$6;

    invoke-direct {v4, p0}, Lcom/android/calendar/DayView$6;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4737
    return v6
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 4012
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4014
    iget v1, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4016
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v1, v2, :cond_3

    .line 4019
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4020
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4021
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4028
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int/2addr v0, v1

    .line 4029
    iget v1, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4030
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 4032
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v1, :cond_1

    .line 4033
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 4034
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale: mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmViewStartY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmCellHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SpanY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_4

    .line 4040
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4041
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4048
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4050
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4051
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4052
    return v5

    .line 4022
    :cond_3
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    if-le v1, v2, :cond_0

    .line 4023
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4024
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4025
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_0

    .line 4043
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 4044
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4045
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter

    .prologue
    .line 3993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 3994
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3995
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 3997
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3998
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4000
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v0, :cond_0

    .line 4001
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4002
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleBegin: mGestureCenterHour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tViewStartHour: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmViewStartY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmCellHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SpanY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 4057
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 4058
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4059
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4060
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4061
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1166
    iput p1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    .line 1167
    iput p2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    .line 1168
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1169
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1170
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1171
    .local v0, gridAreaWidth:I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 1174
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 1176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1177
    .local v1, p:Landroid/graphics/Paint;
    sget v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1178
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    .line 1179
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1180
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4066
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ev.getPointerCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :cond_0
    iget v3, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_2

    .line 4069
    iget-object v3, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4070
    iget-object v3, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4154
    :cond_1
    :goto_0
    return v1

    .line 4075
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 4150
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not MotionEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4154
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 4077
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4078
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 4079
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    :cond_4
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v3

    .line 4084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    .line 4085
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 4089
    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4090
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4087
    :cond_5
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 4094
    :pswitch_1
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 4099
    :pswitch_2
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4101
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4102
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4103
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4104
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-nez v0, :cond_8

    .line 4105
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4106
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4107
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_0

    .line 4110
    :cond_8
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    if-nez v0, :cond_1

    .line 4113
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d

    .line 4114
    iput v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4115
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    if-le v0, v3, :cond_b

    .line 4117
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: switch views"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_9
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_a

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4119
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 4118
    goto :goto_2

    .line 4125
    :cond_b
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: snap back"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    :cond_c
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 4127
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4128
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4134
    :cond_d
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v0, :cond_1

    .line 4135
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4136
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    .line 4137
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_0

    .line 4143
    :pswitch_3
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_CANCEL"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4145
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4146
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    goto/16 :goto_0

    .line 4075
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1951
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1953
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1954
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1955
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1958
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1959
    .local v8, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1960
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 1961
    iput v3, v8, Landroid/text/format/Time;->minute:I

    .line 1962
    iput v3, v8, Landroid/text/format/Time;->second:I

    .line 1963
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 1966
    .local v6, millis:J
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2012
    :goto_0
    return-void

    .line 1969
    :cond_0
    iput-wide v6, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1973
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    new-instance v4, Lcom/android/calendar/DayView$4;

    invoke-direct {v4, p0, v2}, Lcom/android/calendar/DayView$4;-><init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restartCurrentTimeUpdates()V
    .locals 2

    .prologue
    .line 4624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4625
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4626
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4627
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4629
    :cond_0
    return-void
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 3718
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3720
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3721
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 3711
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3713
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3714
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .locals 0
    .parameter "todayAlpha"

    .prologue
    .line 1047
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 1048
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1049
    return-void
.end method

.method setFirstVisibleHour(I)V
    .locals 1
    .parameter "firstHour"

    .prologue
    .line 949
    iput p1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 951
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 3705
    sput p1, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 3706
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3707
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/high16 v3, -0x8000

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 955
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 956
    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 957
    iput-object v2, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 958
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 959
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 960
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 961
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 965
    if-nez p2, :cond_9

    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 968
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v0, v2, :cond_5

    .line 970
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 986
    :goto_0
    sget-boolean v5, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 987
    sget-object v5, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Go "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 1st "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CH "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lh "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " gh "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ymax "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v2, v0, :cond_6

    .line 993
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 999
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 1001
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 1002
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1005
    if-eq v2, v3, :cond_7

    .line 1006
    const-string v0, "viewStartY"

    new-array v3, v9, [I

    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    aput v5, v3, v1

    aput v2, v3, v4

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1007
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1008
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1009
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1010
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v4

    .line 1013
    :goto_2
    if-eqz p3, :cond_4

    .line 1014
    iget-object v2, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    monitor-enter v2

    .line 1015
    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1017
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1019
    :cond_2
    const-string v3, "animateTodayAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xff

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1021
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 1022
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1023
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1024
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1025
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1026
    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1029
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1030
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 1033
    return-void

    .line 972
    :cond_5
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/2addr v0, v2

    .line 975
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-lt v2, v0, :cond_8

    .line 981
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-float v5, v5

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    goto/16 :goto_0

    .line 994
    :cond_6
    if-gez v2, :cond_1

    if-eq v2, v3, :cond_1

    move v2, v1

    .line 995
    goto/16 :goto_1

    .line 1030
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto/16 :goto_1
.end method

.method public setViewStartY(I)V
    .locals 1
    .parameter "viewStartY"

    .prologue
    .line 1036
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_0

    .line 1037
    iget p1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1040
    :cond_0
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1042
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1043
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1044
    return-void
.end method

.method public updateTitle()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1064
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1065
    .local v4, start:Landroid/text/format/Time;
    invoke-virtual {v4, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1066
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1067
    .local v5, end:Landroid/text/format/Time;
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1069
    iget v0, v5, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 1070
    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1072
    const-wide/16 v10, 0x14

    .line 1073
    .local v10, formatFlags:J
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-eq v0, v2, :cond_0

    .line 1075
    const-wide/16 v0, 0x20

    or-long/2addr v10, v0

    .line 1078
    iget v0, v4, Landroid/text/format/Time;->month:I

    iget v1, v5, Landroid/text/format/Time;->month:I

    if-eq v0, v1, :cond_0

    .line 1079
    const-wide/32 v0, 0x10000

    or-long/2addr v10, v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1085
    return-void
.end method
