.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$1;,
        Lcom/android/calendar/Utils$DNASegment;,
        Lcom/android/calendar/Utils$DNAStrand;
    }
.end annotation


# static fields
.field static CONFLICT_COLOR:I

.field static WORK_DAY_END_LENGTH:I

.field static WORK_DAY_END_MINUTES:I

.field static WORK_DAY_MINUTES:I

.field static WORK_DAY_START_MINUTES:I

.field private static mAllowWeekForDetailView:Z

.field static mMinutesLoaded:Z

.field private static final mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    const/16 v0, 0x348

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 95
    const/16 v0, 0x168

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 96
    const/16 v0, 0x4b0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 97
    sget v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 98
    const/high16 v0, -0x100

    sput v0, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 99
    sput-boolean v2, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 109
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 110
    sput-boolean v2, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 111
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    return-void
.end method

.method private static addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V
    .locals 5
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "numDays"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    sget v3, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v2

    .line 885
    .local v2, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v3, :cond_0

    .line 886
    new-array v3, p3, [I

    iput-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    .line 890
    :cond_0
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    sub-int/2addr v3, p2

    add-int/lit8 v4, p3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 891
    .local v0, end:I
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 892
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    .line 894
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    sget v4, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 891
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_1
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    iget v4, p0, Lcom/android/calendar/Event;->color:I

    aput v4, v3, v1

    goto :goto_1

    .line 900
    :cond_2
    return-void
.end method

.method private static addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V
    .locals 11
    .parameter
    .parameter "event"
    .parameter
    .parameter "firstJulianDay"
    .parameter "minStart"
    .parameter "minMinutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-le v0, v2, :cond_0

    .line 971
    const-string v0, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event starts after it ends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_2

    .line 975
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 976
    .local v1, lhs:Lcom/android/calendar/Event;
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 977
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 979
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 980
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 981
    const/16 v0, 0x59f

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 983
    :goto_0
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 984
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    .line 987
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 988
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 989
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 990
    const/4 p4, 0x0

    goto :goto_0

    .line 993
    :cond_1
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 994
    move-object p1, v1

    .line 997
    .end local v1           #lhs:Lcom/android/calendar/Event;
    :cond_2
    new-instance v9, Lcom/android/calendar/Utils$DNASegment;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 998
    .local v9, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v0, p3

    mul-int/lit16 v6, v0, 0x5a0

    .line 999
    .local v6, dayOffset:I
    add-int/lit16 v0, v6, 0x5a0

    add-int/lit8 v7, v0, -0x1

    .line 1001
    .local v7, endOfDay:I
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    add-int/2addr v0, v6

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 1004
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int v0, v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1005
    .local v8, minEnd:I
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v0, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1006
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    if-le v0, v7, :cond_3

    .line 1007
    iput v7, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1010
    :cond_3
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 1011
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 1012
    invoke-virtual {p0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1015
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v10

    .line 1016
    .local v10, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1017
    return-void
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "nameIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, isDuplicateName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 562
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 563
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 567
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 303
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v2

    .line 307
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 308
    .local v1, numColumns:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 312
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 316
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 317
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 318
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 320
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0           #i:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "localTime"
    .parameter "tz"

    .prologue
    .line 521
    if-nez p0, :cond_0

    .line 522
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 524
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 525
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 526
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "tz"

    .prologue
    .line 511
    if-nez p0, :cond_0

    .line 512
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 514
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 515
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 516
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .locals 28
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "minPixels"
    .parameter "dayXs"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    sget-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_1

    .line 668
    if-nez p6, :cond_0

    .line 669
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 672
    .local v25, res:Landroid/content/res/Resources;
    const v5, 0x7f080029

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 673
    const v5, 0x7f0b0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 674
    const v5, 0x7f0b0009

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 675
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 676
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 677
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 680
    .end local v25           #res:Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    if-gez p4, :cond_3

    .line 682
    :cond_2
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v4, 0x0

    .line 877
    :goto_0
    return-object v4

    .line 689
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 690
    .local v2, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 693
    .local v4, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    new-instance v14, Lcom/android/calendar/Utils$DNAStrand;

    invoke-direct {v14}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 694
    .local v14, blackStrand:Lcom/android/calendar/Utils$DNAStrand;
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    iput v5, v14, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 695
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 704
    .local v7, minMinutes:I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v24, v5, 0x2

    .line 705
    .local v24, minOtherMinutes:I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v21, v5, -0x1

    .line 707
    .local v21, lastJulianDay:I
    new-instance v3, Lcom/android/calendar/Event;

    invoke-direct {v3}, Lcom/android/calendar/Event;-><init>()V

    .line 709
    .local v3, event:Lcom/android/calendar/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 711
    .local v15, currEvent:Lcom/android/calendar/Event;
    iget v5, v15, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_4

    iget v5, v15, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, v21

    if-gt v5, v0, :cond_4

    .line 714
    invoke-virtual {v15}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 715
    move-object/from16 v0, p5

    array-length v5, v0

    move/from16 v0, p0

    invoke-static {v15, v4, v0, v5}, Lcom/android/calendar/Utils;->addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 719
    :cond_5
    invoke-virtual {v15, v3}, Lcom/android/calendar/Event;->copyTo(Lcom/android/calendar/Event;)V

    .line 720
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_6

    .line 721
    move/from16 v0, p0

    iput v0, v3, Lcom/android/calendar/Event;->startDay:I

    .line 722
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 726
    :cond_6
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v0, v24

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_7

    .line 727
    move/from16 v0, v24

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 729
    :cond_7
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, v21

    if-le v5, v0, :cond_8

    .line 730
    move/from16 v0, v21

    iput v0, v3, Lcom/android/calendar/Event;->endDay:I

    .line 731
    const/16 v5, 0x59f

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 735
    :cond_8
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    .line 736
    move/from16 v0, v24

    iput v0, v3, Lcom/android/calendar/Event;->endTime:I

    .line 742
    :cond_9
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    iget v6, v3, Lcom/android/calendar/Event;->endDay:I

    if-ne v5, v6, :cond_a

    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 746
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_b

    .line 749
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v5, v5, v24

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 763
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 764
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 752
    :cond_b
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_a

    .line 754
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    add-int v5, v5, v24

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 756
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 757
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sub-int v5, v5, v24

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    goto :goto_2

    .line 769
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/calendar/Utils$DNASegment;

    .line 770
    .local v22, lastSegment:Lcom/android/calendar/Utils$DNASegment;
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v27, v5, v6

    .line 771
    .local v27, startMinute:I
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v27, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 774
    .local v17, endMinute:I
    if-gez v27, :cond_d

    .line 775
    const/16 v27, 0x0

    .line 777
    :cond_d
    const/16 v5, 0x2760

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    .line 778
    const/16 v17, 0x275f

    .line 783
    :cond_e
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_16

    .line 784
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v18

    .line 786
    .local v18, i:I
    :cond_f
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNASegment;

    iget v5, v5, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_f

    :cond_10
    move/from16 v19, v18

    .line 790
    .end local v18           #i:I
    .local v19, i:I
    :goto_3
    if-ltz v19, :cond_16

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/Utils$DNASegment;

    .local v16, currSegment:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-gt v0, v5, :cond_16

    .line 792
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_12

    move/from16 v18, v19

    .line 790
    .end local v19           #i:I
    .restart local v18       #i:I
    :cond_11
    :goto_4
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    .end local v18           #i:I
    .restart local v19       #i:I
    goto :goto_3

    .line 797
    :cond_12
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v17

    if-ge v0, v5, :cond_13

    .line 798
    new-instance v26, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 799
    .local v26, rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 800
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 801
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 802
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 803
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 804
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 805
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 813
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_13
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v27

    if-le v0, v5, :cond_18

    .line 814
    new-instance v23, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 815
    .local v23, lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 816
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 817
    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 818
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 819
    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 823
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 824
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 832
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :goto_5
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 833
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/calendar/Utils$DNASegment;

    .line 834
    .restart local v26       #rhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_14

    .line 836
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 837
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 838
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 840
    move-object/from16 v16, v26

    .line 845
    .end local v26           #rhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_14
    add-int/lit8 v5, v18, -0x1

    if-ltz v5, :cond_15

    .line 846
    add-int/lit8 v5, v18, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/Utils$DNASegment;

    .line 847
    .restart local v23       #lhs:Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_15

    .line 849
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 850
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 851
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 853
    move-object/from16 v16, v23

    .line 856
    add-int/lit8 v18, v18, -0x1

    .line 862
    .end local v23           #lhs:Lcom/android/calendar/Utils$DNASegment;
    :cond_15
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_11

    .line 863
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 864
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 865
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    goto/16 :goto_4

    .line 871
    .end local v16           #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v18           #i:I
    :cond_16
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v17

    if-le v0, v5, :cond_4

    .line 872
    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v15           #currEvent:Lcom/android/calendar/Event;
    .end local v17           #endMinute:I
    .end local v22           #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .end local v27           #startMinute:I
    :cond_17
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 876
    invoke-static/range {v8 .. v13}, Lcom/android/calendar/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_0

    .restart local v15       #currEvent:Lcom/android/calendar/Event;
    .restart local v16       #currSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v17       #endMinute:I
    .restart local v19       #i:I
    .restart local v22       #lastSegment:Lcom/android/calendar/Utils$DNASegment;
    .restart local v27       #startMinute:I
    :cond_18
    move/from16 v18, v19

    .end local v19           #i:I
    .restart local v18       #i:I
    goto/16 :goto_5
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 580
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 202
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 363
    const/16 v5, 0x34

    .line 365
    .local v5, flags:I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .local v1, millis:J
    move-object v0, p0

    move-wide v3, v1

    .line 366
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .locals 1

    .prologue
    .line 588
    sget-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .parameter "c"
    .parameter "key"

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "julianDay"
    .parameter "todayJulianDay"
    .parameter "millis"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1098
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 1099
    const/4 v6, 0x2

    .line 1101
    .local v6, flags:I
    if-ne p0, p1, :cond_0

    .line 1102
    const v8, 0x7f0c0042

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, dayViewText:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 1114
    return-object v7

    .line 1104
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_1

    .line 1105
    const v8, 0x7f0c0043

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0

    .line 1107
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_2

    .line 1108
    const v8, 0x7f0c0044

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0

    .line 1111
    .end local v7           #dayViewText:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #dayViewText:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 472
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 473
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDeclinedColorFromColor(I)I
    .locals 10
    .parameter "color"

    .prologue
    const/high16 v9, 0xff

    const v8, 0xff00

    const/high16 v7, -0x100

    .line 605
    const/4 v2, -0x1

    .line 606
    .local v2, bg:I
    const/16 v0, 0x66

    .line 607
    .local v0, a:I
    and-int v5, p0, v9

    mul-int/2addr v5, v0

    const/high16 v6, -0x6799

    add-int/2addr v5, v6

    and-int v4, v5, v7

    .line 608
    .local v4, r:I
    and-int v5, p0, v8

    mul-int/2addr v5, v0

    const v6, 0x986700

    add-int/2addr v5, v6

    and-int v3, v5, v9

    .line 609
    .local v3, g:I
    and-int/lit16 v5, p0, 0xff

    mul-int/2addr v5, v0

    const v6, 0x9867

    add-int/2addr v5, v6

    and-int v1, v5, v8

    .line 610
    .local v1, b:I
    or-int v5, v4, v3

    or-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    return v5
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x1

    .line 596
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 597
    .local v0, hsv:[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 598
    aget v1, v0, v3

    const v2, 0x3e99999a

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 599
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 434
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, pref:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 445
    .local v2, startDay:I
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 446
    const/4 v3, 0x6

    .line 450
    :goto_1
    return v3

    .line 442
    .end local v2           #startDay:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #startDay:I
    goto :goto_0

    .line 447
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 448
    const/4 v3, 0x1

    goto :goto_1

    .line 450
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 468
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .parameter "week"

    .prologue
    .line 425
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLunarDayString(Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 11
    .parameter "day"
    .parameter "res"

    .prologue
    const-wide/16 v9, 0x1

    const v8, 0x30c0056

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1118
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lmiui/util/LunarDate;->calLunar(III)[J

    move-result-object v1

    .line 1122
    .local v1, lunar:[J
    invoke-static {p1, v1, p0}, Lmiui/util/LunarDate;->getHoliday(Landroid/content/res/Resources;[JLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, holiday:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1147
    .end local v0           #holiday:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1129
    .restart local v0       #holiday:Ljava/lang/String;
    :cond_0
    invoke-static {p1, p0}, Lmiui/util/LunarDate;->getSolarTerm(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, solarTerm:Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 1132
    goto :goto_0

    .line 1137
    :cond_1
    aget-wide v3, v1, v7

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    .line 1138
    const/4 v3, 0x6

    aget-wide v3, v1, v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_2

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x30c0043

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v6

    long-to-int v4, v4

    invoke-static {p1, v4}, Lmiui/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1143
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, v1, v6

    long-to-int v4, v4

    invoke-static {p1, v4}, Lmiui/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_3
    aget-wide v3, v1, v7

    long-to-int v3, v3

    invoke-static {p1, v3}, Lmiui/util/LunarDate;->getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "theTime"
    .parameter "tz"

    .prologue
    const/4 v1, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 539
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 541
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 542
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 543
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 544
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 545
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 546
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;
    .locals 2
    .parameter
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;I)",
            "Lcom/android/calendar/Utils$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Utils$DNAStrand;

    .line 1024
    .local v0, strand:Lcom/android/calendar/Utils$DNAStrand;
    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Lcom/android/calendar/Utils$DNAStrand;

    .end local v0           #strand:Lcom/android/calendar/Utils$DNAStrand;
    invoke-direct {v0}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 1026
    .restart local v0       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iput p1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 1027
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1028
    iget v1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_0
    return-object v0
.end method

.method private static getPixelOffsetFromMinutes(III)I
    .locals 4
    .parameter "minute"
    .parameter "workDayHeight"
    .parameter "remainderHeight"

    .prologue
    .line 952
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge p0, v1, :cond_0

    .line 953
    mul-int v1, p0, p2

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 961
    .local v0, y:I
    :goto_0
    return v0

    .line 954
    .end local v0           #y:I
    :cond_0
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-ge p0, v1, :cond_1

    .line 955
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int v1, p0, v1

    mul-int/2addr v1, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p2, v1

    .restart local v0       #y:I
    goto :goto_0

    .line 958
    .end local v0           #y:I
    :cond_1
    add-int v1, p2, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sub-int v2, p0, v2

    mul-int/2addr v2, p2

    sget v3, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0       #y:I
    goto :goto_0
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CalendarRecentSuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 211
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 216
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 458
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getTardis()J
    .locals 2

    .prologue
    .line 237
    sget-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 187
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x2

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 118
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const/4 v3, 0x5

    .line 133
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    if-eqz v0, :cond_3

    .line 122
    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const-string v4, "preferred_detailedView"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 126
    :cond_2
    const-string v4, "DAY"

    const-string v5, "VIEW"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    :cond_3
    const-string v3, "preferred_startView"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public static getWeekNumberFromTime(JLandroid/content/Context;)I
    .locals 5
    .parameter "millisSinceEpoch"
    .parameter "context"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1067
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v1, weekTime:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1069
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1070
    invoke-static {p2}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1074
    .local v0, firstDayOfWeek:I
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 1076
    :cond_0
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1077
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1082
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v2

    return v2

    .line 1078
    :cond_2
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 1079
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1080
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .parameter "julianDay"
    .parameter "firstDayOfWeek"

    .prologue
    .line 405
    rsub-int/lit8 v0, p1, 0x4

    .line 406
    .local v0, diff:I
    if-gez v0, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x7

    .line 409
    :cond_0
    const v2, 0x253d8c

    sub-int v1, v2, v0

    .line 410
    .local v1, refDay:I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSaturday(II)Z
    .locals 3
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 484
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 497
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 380
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 381
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 386
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 388
    .end local v3           #thing:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 283
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 284
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 285
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 286
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 287
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 289
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static returnToCalendarHome(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AllInOneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1040
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1042
    const-string v1, "KEY_HOME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

.method public static setAllowWeekForDetailView(Z)V
    .locals 0
    .parameter "allowWeekView"

    .prologue
    .line 584
    sput-boolean p0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 585
    return-void
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "viewId"

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 265
    .local v2, validDetailView:Z
    sget-boolean v4, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 266
    const/4 v2, 0x1

    .line 272
    :goto_0
    if-eqz v2, :cond_0

    .line 274
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_0
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void

    .line 268
    :cond_1
    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 241
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 168
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V
    .locals 2
    .parameter "view"
    .parameter "act"

    .prologue
    .line 1054
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1055
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1056
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 1057
    return-void
.end method

.method protected static tardis()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 234
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 336
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 337
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 338
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 340
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 349
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    :cond_1
    return-wide v2

    .line 343
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "displayName"

    .prologue
    .line 1160
    const-string v0, "calendar_displayname_local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1163
    .end local p1
    :cond_0
    return-object p1
.end method

.method public static transformOwnerAccountIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "ownerAccount"

    .prologue
    .line 1176
    const-string v0, "owner_account_local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1179
    .end local p1
    :cond_0
    return-object p1
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .locals 17
    .parameter
    .parameter "firstJulianDay"
    .parameter
    .parameter "top"
    .parameter "bottom"
    .parameter "dayXs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, segments:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, strands:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 908
    .local v9, strandIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Utils$DNAStrand;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 909
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 910
    .local v8, strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v14, :cond_0

    .line 911
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 914
    :cond_0
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    mul-int/lit8 v14, v14, 0x4

    new-array v14, v14, [F

    iput-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    .line 915
    const/4 v14, 0x0

    iput v14, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    goto :goto_0

    .line 918
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Utils$DNASegment;

    .line 920
    .local v7, segment:Lcom/android/calendar/Utils$DNASegment;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 921
    .restart local v8       #strand:Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->day:I

    sub-int v2, v14, p1

    .line 922
    .local v2, dayIndex:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 923
    .local v3, dayStartMinute:I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 924
    .local v1, dayEndMinute:I
    sub-int v4, p4, p3

    .line 925
    .local v4, height:I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v10, v14, 0x4

    .line 926
    .local v10, workDayHeight:I
    sub-int v14, v4, v10

    div-int/lit8 v6, v14, 0x2

    .line 928
    .local v6, remainderHeight:I
    aget v11, p5, v2

    .line 929
    .local v11, x:I
    const/4 v12, 0x0

    .line 930
    .local v12, y0:I
    const/4 v13, 0x0

    .line 932
    .local v13, y1:I
    invoke-static {v3, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p3, v14

    .line 933
    invoke-static {v1, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v13, p3, v14

    .line 938
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 939
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    .line 940
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 941
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v13

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_1

    .line 943
    .end local v1           #dayEndMinute:I
    .end local v2           #dayIndex:I
    .end local v3           #dayStartMinute:I
    .end local v4           #height:I
    .end local v6           #remainderHeight:I
    .end local v7           #segment:Lcom/android/calendar/Utils$DNASegment;
    .end local v8           #strand:Lcom/android/calendar/Utils$DNAStrand;
    .end local v10           #workDayHeight:I
    .end local v11           #x:I
    .end local v12           #y0:I
    .end local v13           #y1:I
    :cond_2
    return-void
.end method
