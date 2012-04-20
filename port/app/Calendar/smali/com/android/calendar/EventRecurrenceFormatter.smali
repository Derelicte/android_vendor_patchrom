.class public Lcom/android/calendar/EventRecurrenceFormatter;
.super Ljava/lang/Object;
.source "EventRecurrenceFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayToString(I)Ljava/lang/String;
    .locals 2
    .parameter "day"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/calendar/EventRecurrenceFormatter;->dayToUtilDay(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dayToUtilDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 90
    sparse-switch p0, :sswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :sswitch_0
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 92
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 94
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 96
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 97
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;
    .locals 9
    .parameter "r"
    .parameter "recurrence"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    iget v6, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v6, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-object v5

    .line 32
    :pswitch_0
    const v5, 0x7f0c0051

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    const v5, 0x7f0c0052

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 37
    :cond_1
    const v6, 0x7f0c0053

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v2, days:Ljava/lang/StringBuilder;
    iget v6, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    add-int/lit8 v0, v6, -0x1

    .line 43
    .local v0, count:I
    if-ltz v0, :cond_3

    .line 44
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 45
    iget-object v5, p1, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v5, v5, v4

    invoke-static {v5}, Lcom/android/calendar/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :cond_2
    iget-object v5, p1, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v5, v5, v0

    invoke-static {v5}, Lcom/android/calendar/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 57
    .end local v4           #i:I
    :cond_3
    iget-object v6, p1, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-eqz v6, :cond_0

    .line 61
    iget-object v5, p1, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->weekDay:I

    invoke-static {v5}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v1

    .line 62
    .local v1, day:I
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/calendar/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 66
    .end local v0           #count:I
    .end local v1           #day:I
    .end local v2           #days:Ljava/lang/StringBuilder;
    .end local v3           #format:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f0c0055

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 69
    :pswitch_3
    const v5, 0x7f0c0056

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
