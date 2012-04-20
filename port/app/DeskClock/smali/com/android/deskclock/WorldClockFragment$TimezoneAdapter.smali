.class Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "WorldClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WorldClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/WorldClockFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WorldClockFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;->this$0:Lcom/android/deskclock/WorldClockFragment;

    .line 234
    const v0, 0x7f040012

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 235
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;

    .line 240
    .local v0, item:Lcom/android/deskclock/WorldClockFragment$TimezoneView;
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, tzID:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 242
    .local v2, tz:Ljava/util/TimeZone;
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 244
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->digitClock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v4, v1}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 245
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->analogClock:Lcom/android/deskclock/TimezoneAnalogClock;

    invoke-virtual {v4, v3}, Lcom/android/deskclock/TimezoneAnalogClock;->setTimezone(Ljava/lang/String;)V

    .line 246
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/deskclock/WorldClockFragment;->access$700()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/deskclock/WorldClockFragment;->access$600(Lcom/android/deskclock/WorldClockFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/deskclock/TimezonePicker;->getTimezoneCityNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneName:Landroid/widget/TextView;

    const v5, 0x7f02004a

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v4, v0, Lcom/android/deskclock/WorldClockFragment$TimezoneView;->timezoneName:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/deskclock/WorldClockFragment$TimezoneView;

    invoke-direct {v1, v0}, Lcom/android/deskclock/WorldClockFragment$TimezoneView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    return-object v0
.end method
