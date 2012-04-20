.class public Lcom/android/calendar/event/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventView$CalendarsAdapter;,
        Lcom/android/calendar/event/EditEventView$DateClickListener;,
        Lcom/android/calendar/event/EditEventView$DateListener;,
        Lcom/android/calendar/event/EditEventView$TimeClickListener;,
        Lcom/android/calendar/event/EditEventView$TimeListener;
    }
.end annotation


# static fields
.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field mAccessLevelSpinner:Landroid/widget/Spinner;

.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mAllDay:Z

.field mAllDayCheckBox:Landroid/widget/CheckBox;

.field mAttendeesGroup:Landroid/view/View;

.field mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field private mAvailabilityLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mAvailabilityValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarSelectorWrapper:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field mDescriptionGroup:Landroid/view/View;

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field mEndDateButton:Landroid/widget/Button;

.field mEndDateHome:Landroid/widget/TextView;

.field mEndHomeGroup:Landroid/view/View;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeButton:Landroid/widget/Button;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mIsMultipane:Z

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationGroup:Landroid/view/View;

.field mLocationTextView:Landroid/widget/TextView;

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mOriginalSpinnerPadding:[I

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMinuteValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveAfterQueryComplete:Z

.field mScrollView:Landroid/widget/ScrollView;

.field mStartDateButton:Landroid/widget/Button;

.field mStartDateHome:Landroid/widget/TextView;

.field mStartHomeGroup:Landroid/view/View;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeButton:Landroid/widget/Button;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field mTimezoneLabel:Landroid/widget/TextView;

.field mTimezoneRow:Landroid/view/View;

.field mTimezoneTextView:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/TextView;

.field private mUnsupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mWhenView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 205
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    .line 1518
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 191
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 197
    iput v2, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 199
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    .line 812
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    .line 813
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    .line 814
    iput-object p3, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    .line 817
    const v0, 0x7f10003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 818
    const v0, 0x7f10003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 821
    const v0, 0x7f100045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 822
    const v0, 0x7f100012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    .line 823
    const v0, 0x7f10004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 824
    const v0, 0x7f100073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 825
    const v0, 0x7f100064

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    .line 826
    const v0, 0x7f10004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 827
    const v0, 0x7f100056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    .line 828
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f100013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 829
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    .line 830
    const v0, 0x7f100050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    .line 831
    const v0, 0x7f100057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    .line 832
    const v0, 0x7f100061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 833
    const v0, 0x7f100060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    .line 834
    const v0, 0x7f100053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 835
    const v0, 0x7f100052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 836
    const v0, 0x7f10005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 837
    const v0, 0x7f100059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 838
    const v0, 0x7f10005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 839
    const v0, 0x7f100075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 840
    const v0, 0x7f10007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 841
    const v0, 0x7f10007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    .line 842
    const v0, 0x7f100044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 843
    const v0, 0x7f100062

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    .line 844
    const v0, 0x7f100046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 845
    const v0, 0x7f100076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 846
    const v0, 0x7f100065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 847
    const v0, 0x7f10006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 848
    const v0, 0x7f10006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    .line 849
    const v0, 0x7f100049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    .line 850
    const v0, 0x7f100071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    .line 851
    const v0, 0x7f100051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    .line 852
    const v0, 0x7f100058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    .line 853
    const v0, 0x7f100070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 855
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 859
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 861
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 862
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 863
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 864
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    .line 865
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingTop()I

    move-result v1

    aput v1, v0, v4

    .line 866
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v1

    aput v1, v0, v5

    .line 867
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v6

    .line 868
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10005e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10005b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10007a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10007d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f10004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f100054

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    const v0, 0x7f100067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 886
    const v0, 0x7f100078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 888
    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 889
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    .line 890
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 891
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 892
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 893
    new-instance v0, Lcom/android/common/Rfc822Validator;

    invoke-direct {v0, v3}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 894
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;

    .line 897
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 898
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1215
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1219
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1223
    :cond_2
    instance-of v0, p2, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 1224
    check-cast v0, Landroid/widget/RadioGroup;

    .line 1225
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 1226
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1229
    :cond_3
    instance-of v0, p2, Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1230
    check-cast p2, Landroid/widget/Spinner;

    .line 1231
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1237
    :cond_4
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1238
    check-cast p2, Landroid/view/ViewGroup;

    .line 1239
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1240
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 1241
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addReminder()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1463
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    .line 1476
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1477
    return-void

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    invoke-static {v2}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v8

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget v9, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_0
.end method

.method private fillModelFromUI()Z
    .locals 12

    .prologue
    .line 704
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v7, :cond_0

    .line 705
    const/4 v7, 0x0

    .line 807
    :goto_0
    return v7

    .line 707
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-static {v8, v9, v10}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 709
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 710
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarEventModel;->normalizeReminders()Z

    .line 711
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v8, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 712
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 713
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 714
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 715
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 716
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 717
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 719
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 720
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 723
    :cond_2
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    invoke-static {v7}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v6

    .line 725
    .local v6, status:I
    if-eqz v6, :cond_3

    .line 726
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v6, v7, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 729
    :cond_3
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v7, :cond_4

    .line 730
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 731
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 732
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 733
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v7, v8, v9}, Lcom/android/calendar/CalendarEventModel;->addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V

    .line 734
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 738
    :cond_4
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 739
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 740
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 741
    .local v0, calendarCursorPosition:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 742
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, defaultCalendar:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v8, "preference_defaultCalendar"

    invoke-static {v7, v8, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 747
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v1, v7, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 748
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 749
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mAccountName:Ljava/lang/String;

    .line 750
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/16 v9, 0xb

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 754
    .end local v0           #calendarCursorPosition:I
    .end local v1           #defaultCalendar:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v7, :cond_9

    .line 757
    const-string v7, "UTC"

    iput-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 758
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 759
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 760
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 761
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 762
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 764
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->hour:I

    .line 765
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->minute:I

    .line 766
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x0

    iput v8, v7, Landroid/text/format/Time;->second:I

    .line 767
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 770
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long v2, v7, v9

    .line 772
    .local v2, normalizedEndTimeMillis:J
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v7, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_8

    .line 774
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v8, v8, Lcom/android/calendar/CalendarEventModel;->mStart:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 784
    .end local v2           #normalizedEndTimeMillis:J
    :goto_2
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 785
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    iput v8, v7, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 787
    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 793
    iget v7, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 794
    const/4 v5, 0x0

    .line 800
    .local v5, selection:I
    :goto_3
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5, v7, v8}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 804
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v7, v7, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-nez v7, :cond_6

    .line 805
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 807
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 711
    .end local v5           #selection:I
    .end local v6           #status:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 776
    .restart local v2       #normalizedEndTimeMillis:J
    .restart local v6       #status:I
    :cond_8
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v2, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_2

    .line 779
    .end local v2           #normalizedEndTimeMillis:J
    :cond_9
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 780
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 781
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 782
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v8, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_2

    .line 796
    :cond_a
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 797
    .local v4, position:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5       #selection:I
    goto :goto_3
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1416
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    move v1, v0

    .line 1435
    :cond_0
    :goto_0
    return v1

    .line 1420
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v3, "preference_defaultCalendar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    if-eqz v2, :cond_0

    .line 1426
    const-string v3, "ownerAccount"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1428
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 1429
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1430
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .line 1431
    goto :goto_0

    .line 1433
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initMultiAutoCompleteTextView(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 12
    .parameter

    .prologue
    .line 1481
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    new-instance v0, Lcom/android/calendar/RecipientAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/RecipientAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1483
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1484
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnFocusListShrinkRecipients(Z)V

    .line 1485
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1486
    const v1, 0x7f020031

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1487
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f020023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f020026

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v6, 0x7f04002c

    const v7, 0x7f040014

    const v8, 0x7f0a001f

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v9, 0x7f0a001e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const v10, 0x7f0a0020

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f040018

    move-object v0, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIFFFI)V

    .line 1503
    :goto_0
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1504
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1507
    sget-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1509
    return-object p1

    .line 1500
    :cond_0
    new-instance v0, Lcom/android/calendar/EmailAddressAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1501
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 513
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 548
    :cond_2
    :goto_0
    :pswitch_0
    return v0

    .line 519
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eqz v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    :cond_4
    move v0, v1

    .line 548
    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 534
    :pswitch_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-nez v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    if-lez v2, :cond_4

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 906
    .local v3, vals:[I
    array-length v2, v3

    .line 907
    .local v2, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 910
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_0
    return-object v1
.end method

.method private static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 3
    .parameter "r"
    .parameter "resNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 922
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private populateRepeats()V
    .locals 21

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 404
    .local v15, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 406
    .local v12, r:Landroid/content/res/Resources;
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const/16 v19, 0x5

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const/16 v19, 0x6

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    .line 414
    .local v5, days:[Ljava/lang/String;
    const v18, 0x7f07000d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isCustomRecurrence()Z

    move-result v8

    .line 420
    .local v8, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v9

    .line 422
    .local v9, isWeekdayEvent:Z
    new-instance v14, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v14, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v13, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v18, 0x7f0c0050

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const v18, 0x7f0c0051

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    if-eqz v9, :cond_0

    .line 432
    const v18, 0x7f0c0052

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    const v18, 0x7f0c0053

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, format:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "%A"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    div-int/lit8 v4, v18, 0x7

    .line 443
    .local v4, dayNumber:I
    const v18, 0x7f0c0054

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 444
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v20, v10, v4

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget v0, v15, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    aget-object v20, v5, v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const v18, 0x7f0c0057

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 448
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 452
    .local v16, when:J
    const v18, 0x7f0c0058

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 453
    const/4 v6, 0x0

    .line 454
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 455
    or-int/lit16 v6, v6, 0x80

    .line 457
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    if-eqz v8, :cond_2

    .line 461
    const v18, 0x7f0c0059

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 466
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 467
    .local v11, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 468
    if-eqz v8, :cond_5

    .line 469
    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 499
    :cond_3
    :goto_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x1090008

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 501
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 509
    :cond_4
    return-void

    .line 471
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 474
    goto :goto_0

    .line 476
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 477
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto :goto_0

    .line 480
    :cond_6
    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 483
    goto/16 :goto_0

    .line 485
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 486
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_0

    .line 489
    :cond_7
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 492
    goto/16 :goto_0

    .line 494
    :pswitch_3
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/event/EditEventView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$1;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 363
    return-void
.end method

.method private populateWhen()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 340
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 341
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 342
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 343
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 345
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 346
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 348
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-void
.end method

.method private prepareAvailability()V
    .locals 4

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 928
    const v1, 0x7f07000b

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    .line 929
    const v1, 0x7f07000a

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    .line 931
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 936
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityLabels:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 938
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 939
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 940
    return-void
.end method

.method private prepareReminders()V
    .locals 13

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 951
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 958
    const v2, 0x7f070003

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    .line 959
    const v2, 0x7f070002

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    .line 960
    const v2, 0x7f070001

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 961
    const/high16 v2, 0x7f07

    invoke-static {v0, v2}, Lcom/android/calendar/event/EditEventView;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 965
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EventViewUtils;->reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 970
    :cond_0
    const/4 v0, 0x0

    .line 971
    iget-boolean v2, v1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_6

    .line 972
    iget-object v1, v1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 973
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 975
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 976
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 986
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 987
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    .line 989
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderMinuteLabels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mReminderMethodLabels:Ljava/util/ArrayList;

    const v9, 0x7fffffff

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v10}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;)Z

    goto :goto_1

    .line 994
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mUnsupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v11

    .line 999
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1000
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1198
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v1, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1208
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1211
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1521
    const v0, 0x18016

    .line 1533
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1534
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1535
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1537
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    return-void

    .line 1538
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1543
    const/4 v0, 0x1

    .line 1544
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1545
    const/16 v0, 0x81

    .line 1556
    :cond_0
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1557
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1558
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1559
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1560
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    return-void

    .line 1560
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTimezone(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1565
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1569
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1572
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1573
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1574
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1575
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1576
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStates(I)V
    .locals 11
    .parameter "mode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 1341
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->setWhenString()V

    .line 1344
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1345
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1347
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1348
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1350
    .end local v1           #v:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1351
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1352
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1354
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1357
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1358
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1359
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1360
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1365
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1368
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    :cond_5
    :goto_4
    return-void

    .line 1362
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1371
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1372
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1374
    .end local v1           #v:Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1375
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1377
    .end local v1           #v:Landroid/view/View;
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1378
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1379
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1380
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7

    .line 1385
    .end local v1           #v:Landroid/view/View;
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1386
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    :goto_8
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1393
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mOriginalSpinnerPadding:[I

    aget v6, v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 1395
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 1396
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1400
    :goto_9
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1389
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1398
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_9
.end method

.method private showTimezoneDialog()V
    .locals 7

    .prologue
    .line 366
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    .local v0, alertDialogContext:Landroid/content/Context;
    new-instance v4, Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 369
    const v4, 0x7f0c0004

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 370
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 374
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 376
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040031

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 379
    .local v3, timezoneFooterView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c002f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    new-instance v4, Lcom/android/calendar/event/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/calendar/event/EditEventView$2;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 398
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 399
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 400
    return-void
.end method

.method private updateAttendees(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1439
    .local p1, attendeesList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1446
    :cond_0
    return-void

    .line 1442
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 1444
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHomeTime()V
    .locals 17

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .line 1694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/EditEventView;->mModification:I

    if-eqz v1, :cond_4

    .line 1696
    const/4 v7, 0x1

    .line 1697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 1698
    if-eqz v12, :cond_0

    .line 1699
    const/16 v7, 0x81

    .line 1701
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 1704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v9, v1

    .line 1705
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v10, v1

    .line 1708
    :goto_1
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v9, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 1710
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1712
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    const v7, 0x80016

    .line 1720
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v5, v3

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    if-eq v10, v9, :cond_5

    .line 1727
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 1730
    :goto_2
    const/4 v7, 0x1

    .line 1731
    if-eqz v12, :cond_1

    .line 1732
    const/16 v7, 0x81

    .line 1736
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1737
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    const v7, 0x80016

    .line 1744
    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v3, v13

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    :goto_3
    return-void

    .line 1704
    :cond_2
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_0

    .line 1705
    :cond_3
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_1

    .line 1751
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move-object v9, v11

    goto :goto_2
.end method

.method private updateRemindersVisibility(I)V
    .locals 2
    .parameter "numReminders"

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1454
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 683
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 685
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    .line 686
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 687
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, nextIntent:Landroid/content/Intent;
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 689
    .local v0, array:[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 700
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_0

    .line 694
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 695
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 696
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 697
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 660
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 661
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 662
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 663
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 664
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1627
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1628
    if-nez v0, :cond_1

    .line 1630
    const-string v0, "EditEvent"

    const-string v1, "Cursor not set on calendar item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    const-string v2, "calendar_color"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1635
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1636
    invoke-static {v2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v3

    .line 1638
    iget-boolean v4, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v4, :cond_3

    .line 1639
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorWrapper:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1645
    :goto_1
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1646
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1647
    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v5, v5, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1650
    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v3, v5, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1651
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v2, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1653
    const-string v2, "maxReminders"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1654
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1655
    const-string v2, "allowedReminders"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1656
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1657
    const-string v2, "allowedAttendeeTypes"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1658
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1659
    const-string v2, "allowedAvailability"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1660
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 1661
    const-string v2, "account_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1662
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 1663
    const-string v2, "account_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1664
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/calendar/CalendarEventModel;->mAccountName:Ljava/lang/String;

    .line 1666
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/CalendarUtils;->isLocalAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1667
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1675
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1676
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1677
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v2, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1680
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1681
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f100078

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1683
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1684
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1685
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    goto/16 :goto_0

    .line 1641
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1669
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1677
    goto :goto_3
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public prepareForSave()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 633
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_0
.end method

.method protected setAllDayViewsVisibility(Z)V
    .locals 7
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1583
    if-eqz p1, :cond_3

    .line 1584
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_2

    .line 1585
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1589
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1594
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1595
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1596
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1598
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1599
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1602
    .end local v0           #endMillis:J
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1603
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1604
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    :goto_0
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1620
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1621
    return-void

    .line 1606
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_5

    .line 1607
    iget-boolean v2, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    if-eq v2, p1, :cond_4

    .line 1608
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1611
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1612
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1613
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1615
    .end local v0           #endMillis:J
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1616
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1617
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneRow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1281
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 1282
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1284
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1287
    :cond_1
    if-nez p2, :cond_3

    .line 1323
    :cond_2
    :goto_0
    return-void

    .line 1292
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1293
    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1301
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v1

    .line 1304
    new-instance v2, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1305
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1306
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1309
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v1, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1311
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1312
    if-eqz p2, :cond_5

    .line 1313
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0

    .line 1312
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1315
    :cond_6
    if-eqz p2, :cond_7

    .line 1316
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 1318
    :cond_7
    const-string v0, "EditEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    const-string v0, "EditEvent"

    const-string v1, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setModel(Lcom/android/calendar/CalendarEventModel;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f100047

    const v10, 0x7f100046

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1011
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 1014
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/calendar/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/EmailAddressAdapter;->close()V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 1019
    :cond_0
    if-nez p1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1193
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    .line 1028
    iget-wide v0, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1029
    iget-wide v3, p1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 1030
    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1033
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 1034
    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1035
    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1036
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1038
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1041
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1043
    :cond_3
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1045
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1048
    :cond_4
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 1049
    if-nez v1, :cond_15

    .line 1050
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1051
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1052
    if-eqz v0, :cond_15

    .line 1053
    const-string v1, "account_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1054
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1059
    :goto_1
    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/android/calendar/CalendarUtils;->isLocalAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1060
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/calendar/event/EditEventView$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$3;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1070
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1071
    iput-boolean v8, p0, Lcom/android/calendar/event/EditEventView;->mAllDay:Z

    .line 1072
    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v1, :cond_10

    .line 1073
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1075
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1076
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1077
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1078
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1079
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1085
    :goto_2
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1086
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1089
    :cond_7
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 1090
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 1091
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1094
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1095
    const-string v1, "preferences_default_reminder"

    const-string v3, "-1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    .line 1099
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareReminders()V

    .line 1100
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->prepareAvailability()V

    .line 1102
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1103
    new-instance v1, Lcom/android/calendar/event/EditEventView$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$4;-><init>(Lcom/android/calendar/event/EditEventView;)V

    .line 1109
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-nez v0, :cond_9

    .line 1112
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/EditEventView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$5;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    :cond_9
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1122
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_a
    iget-boolean v0, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    const-string v1, "calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1127
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :goto_3
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1135
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_c
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1139
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1142
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilityValues:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1143
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1144
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1146
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAccessLevelSpinner:Landroid/widget/Spinner;

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f100066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    if-eqz v2, :cond_12

    .line 1150
    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 1152
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1153
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1154
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :goto_4
    iget v0, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 1162
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1163
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1166
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v3, 0x7f100044

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1167
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1169
    iget-object v3, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v3, 0x7f100048

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1171
    if-eqz v0, :cond_f

    .line 1172
    iget-object v3, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->transformOwnerAccountIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    :cond_f
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mIsMultipane:Z

    if-eqz v0, :cond_13

    .line 1175
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1184
    :goto_5
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateTimezone()V

    .line 1185
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateWhen()V

    .line 1186
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1187
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateAttendees(Ljava/util/HashMap;)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1190
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->sendAccessibilityEvent()V

    goto/16 :goto_0

    .line 1081
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 1131
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1156
    :cond_12
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1177
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 1180
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1181
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_15
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public setModification(I)V
    .locals 0
    .parameter "modifyWhich"

    .prologue
    .line 1408
    iput p1, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 1409
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1410
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1411
    return-void
.end method

.method protected setWhenString()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1251
    const/16 v6, 0x10

    .line 1252
    .local v6, flags:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1253
    .local v7, tz:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_1

    .line 1254
    or-int/lit8 v6, v6, 0x2

    .line 1255
    const-string v7, "UTC"

    .line 1262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1263
    .local v2, startMillis:J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1264
    .local v4, endMillis:J
    sget-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1267
    .local v8, when:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    return-void

    .line 1257
    .end local v2           #startMillis:J
    .end local v4           #endMillis:J
    .end local v8           #when:Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 1258
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v0, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0
.end method
