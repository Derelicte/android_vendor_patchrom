.class public Lcom/android/calendar/agenda/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    new-instance v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaByDayAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter;

    const v1, 0x7f040007

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/agenda/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    .line 77
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 79
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/agenda/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 54
    .parameter "dayAdapterInfo"

    .prologue
    .line 285
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object/from16 v41, v0

    .line 286
    .local v41, cursor:Landroid/database/Cursor;
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v51, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;>;"
    const/16 v50, -0x1

    .line 289
    .local v50, prevStartDay:I
    new-instance v53, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 290
    .local v53, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 291
    .local v48, now:J
    move-object/from16 v0, v53

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 292
    move-object/from16 v0, v53

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v48

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 294
    new-instance v45, Ljava/util/LinkedList;

    invoke-direct/range {v45 .. v45}, Ljava/util/LinkedList;-><init>()V

    .line 295
    .local v45, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v17, 0x0

    .local v17, position:I
    :goto_0
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 296
    const/16 v4, 0xa

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 297
    .local v52, startDay:I
    const/16 v4, 0x9

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 298
    .local v18, id:J
    const/4 v4, 0x7

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 299
    .local v20, startTime:J
    const/16 v4, 0x8

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 300
    .local v22, endTime:J
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 301
    .local v24, instanceId:J
    const/4 v4, 0x3

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v26, 0x1

    .line 302
    .local v26, allDay:Z
    :goto_1
    if-eqz v26, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v20

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v22

    .line 307
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v52

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v52

    .line 310
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v39

    .line 311
    .local v39, adapterStartTime:J
    move-wide/from16 v0, v20

    move-wide/from16 v2, v39

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 313
    move/from16 v0, v52

    move/from16 v1, v50

    if-eq v0, v1, :cond_2

    .line 315
    const/4 v4, -0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_5

    .line 316
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v52

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_1
    :goto_2
    move/from16 v50, v52

    .line 363
    :cond_2
    new-instance v14, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v15, 0x1

    move/from16 v16, v52

    invoke-direct/range {v14 .. v26}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const/16 v4, 0xb

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 371
    .local v29, endDay:I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 372
    move/from16 v0, v29

    move/from16 v1, v52

    if-le v0, v1, :cond_3

    .line 373
    new-instance v27, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v32

    move/from16 v28, v17

    move-wide/from16 v30, v18

    move-wide/from16 v34, v22

    move-wide/from16 v36, v24

    move/from16 v38, v26

    invoke-direct/range {v27 .. v38}, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;-><init>(IIJJJJZ)V

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 301
    .end local v26           #allDay:Z
    .end local v29           #endDay:I
    .end local v39           #adapterStartTime:J
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 321
    .restart local v26       #allDay:Z
    .restart local v39       #adapterStartTime:J
    :cond_5
    const/16 v42, 0x0

    .line 322
    .local v42, dayHeaderAdded:Z
    add-int/lit8 v6, v50, 0x1

    .local v6, currentDay:I
    :goto_3
    move/from16 v0, v52

    if-gt v6, v0, :cond_a

    .line 323
    const/16 v42, 0x0

    .line 324
    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 325
    .local v44, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_4
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 329
    .local v43, info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_6

    .line 330
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 336
    :cond_6
    if-nez v42, :cond_7

    .line 337
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const/16 v42, 0x1

    .line 340
    :cond_7
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 343
    .local v46, nextMidnight:J
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_8

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 345
    .local v12, infoEndTime:J
    :goto_5
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v43

    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    move-wide/from16 v0, v46

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_4

    .end local v12           #infoEndTime:J
    :cond_8
    move-wide/from16 v12, v46

    .line 343
    goto :goto_5

    .line 322
    .end local v43           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46           #nextMidnight:J
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 355
    .end local v44           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_a
    if-nez v42, :cond_1

    .line 356
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v52

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 381
    .end local v6           #currentDay:I
    .end local v18           #id:J
    .end local v20           #startTime:J
    .end local v22           #endTime:J
    .end local v24           #instanceId:J
    .end local v26           #allDay:Z
    .end local v39           #adapterStartTime:J
    .end local v42           #dayHeaderAdded:Z
    .end local v52           #startDay:I
    :cond_b
    if-lez v50, :cond_10

    .line 382
    add-int/lit8 v6, v50, 0x1

    .restart local v6       #currentDay:I
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v6, v4, :cond_10

    .line 384
    const/16 v42, 0x0

    .line 385
    .restart local v42       #dayHeaderAdded:Z
    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 386
    .restart local v44       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_7
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 387
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 390
    .restart local v43       #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_c

    .line 391
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 397
    :cond_c
    if-nez v42, :cond_d

    .line 398
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const/16 v42, 0x1

    .line 401
    :cond_d
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 403
    .restart local v46       #nextMidnight:J
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_e

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 405
    .restart local v12       #infoEndTime:J
    :goto_8
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v43

    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move-wide/from16 v0, v46

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_7

    .end local v12           #infoEndTime:J
    :cond_e
    move-wide/from16 v12, v46

    .line 403
    goto :goto_8

    .line 383
    .end local v43           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46           #nextMidnight:J
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 413
    .end local v6           #currentDay:I
    .end local v42           #dayHeaderAdded:Z
    .end local v44           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_10
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 414
    return-void
.end method

.method public changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 281
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 282
    return-void
.end method

.method public findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 22
    .parameter "time"
    .parameter "id"

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 492
    const/4 v11, 0x0

    .line 566
    :cond_0
    :goto_0
    return v11

    .line 494
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 495
    .local v13, millis:J
    const-wide/32 v16, 0x7fffffff

    .line 496
    .local v16, minDistance:J
    const-wide/32 v2, 0x7fffffff

    .line 497
    .local v2, IdFoundMinDistance:J
    const/16 v18, 0x0

    .line 498
    .local v18, minIndex:I
    const/4 v10, 0x0

    .line 499
    .local v10, idFoundMinIndex:I
    const/4 v8, -0x1

    .line 500
    .local v8, eventInTimeIndex:I
    const/4 v5, -0x1

    .line 501
    .local v5, allDayEventInTimeIndex:I
    const/4 v4, 0x0

    .line 502
    .local v4, allDayEventDay:I
    const/4 v15, 0x0

    .line 503
    .local v15, minDay:I
    const/4 v9, 0x0

    .line 504
    .local v9, idFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 514
    .local v12, len:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1
    if-ge v11, v12, :cond_8

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 516
    .local v19, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 514
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 521
    :cond_3
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p2

    if-nez v20, :cond_5

    .line 522
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v13

    if-eqz v20, :cond_0

    .line 527
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 528
    .local v6, distance:J
    cmp-long v20, v6, v16

    if-gez v20, :cond_4

    .line 529
    move-wide v2, v6

    .line 530
    move v10, v11

    .line 532
    :cond_4
    const/4 v9, 0x1

    .line 534
    .end local v6           #distance:J
    :cond_5
    if-nez v9, :cond_2

    .line 536
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-ltz v20, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-gtz v20, :cond_7

    .line 537
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 538
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-eqz v20, :cond_0

    .line 541
    move v5, v11

    .line 542
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 544
    :cond_6
    move v8, v11

    goto :goto_2

    .line 548
    :cond_7
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 549
    .restart local v6       #distance:J
    cmp-long v20, v6, v16

    if-gez v20, :cond_2

    .line 550
    move-wide/from16 v16, v6

    .line 551
    move/from16 v18, v11

    .line 552
    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 558
    .end local v6           #distance:J
    .end local v19           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_8
    if-eqz v9, :cond_9

    move v11, v10

    .line 559
    goto/16 :goto_0

    .line 561
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_a

    move v11, v8

    .line 562
    goto/16 :goto_0

    .line 563
    :cond_a
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_b

    if-eq v15, v4, :cond_b

    move v11, v5

    .line 564
    goto/16 :goto_0

    :cond_b
    move/from16 v11, v18

    .line 566
    goto/16 :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v3

    .line 596
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 597
    .local v1, len:I
    if-ge p1, v1, :cond_0

    .line 599
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 600
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 601
    .local v2, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v4, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 602
    iget v3, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_0

    .line 599
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 632
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 634
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 635
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 646
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 637
    .restart local v1       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 638
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 639
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 640
    if-ltz v0, :cond_1

    .line 641
    neg-int v2, v0

    goto :goto_0

    .line 646
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getHeaderItemsCount(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 108
    const/4 v0, -0x1

    .line 117
    :cond_0
    return v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 93
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move v0, v2

    .line 102
    :cond_1
    :goto_0
    return v0

    .line 97
    :cond_2
    move v0, p1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 98
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 99
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-eqz v3, :cond_1

    .line 97
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_4
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method public getInstanceId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 86
    :cond_0
    const-wide/16 v0, -0x1

    .line 88
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 130
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 136
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 133
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 136
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 142
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 143
    neg-int v1, p1

    int-to-long v1, v1

    .line 148
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 145
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 148
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-le v0, v3, :cond_1

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 268
    :goto_0
    return-object v11

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 173
    .local v20, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_6

    .line 174
    const/16 v18, 0x0

    .line 175
    .local v18, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    const/4 v11, 0x0

    .line 176
    .local v11, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 180
    .local v21, tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    if-eqz v3, :cond_2

    .line 181
    move-object/from16 v11, p2

    move-object/from16 v18, v21

    .line 182
    check-cast v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .line 183
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 187
    .end local v21           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v18, :cond_3

    .line 190
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    invoke-direct/range {v18 .. v18}, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 191
    .restart local v18       #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040004

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 192
    const v3, 0x7f10000c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f10000d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 194
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    .line 196
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v23

    .line 204
    .local v23, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 205
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 206
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 212
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 213
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    invoke-virtual {v13, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 214
    .local v5, millis:J
    const/4 v9, 0x2

    .line 215
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 217
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, dayViewText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    const/16 v9, 0x10

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v7, v5

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, dateViewText:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-le v3, v4, :cond_5

    .line 237
    const/high16 v3, 0x7f02

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 240
    :cond_5
    const v3, 0x7f020001

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 244
    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v11           #agendaDayView:Landroid/view/View;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v14           #dateViewText:Ljava/lang/String;
    .end local v15           #dayViewText:Ljava/lang/String;
    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v23           #tz:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 246
    .local v19, itemView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 247
    .local v18, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    .line 248
    .local v22, title:Landroid/widget/TextView;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    move-wide/from16 v16, v0

    .line 249
    .local v16, eventStartTime:J
    move-object/from16 v0, v18

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 253
    .local v12, allDay:Z
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    if-nez v12, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v16, v3

    if-lez v3, :cond_8

    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-gt v3, v4, :cond_9

    .line 259
    :cond_8
    const v3, 0x7f020001

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 261
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    .line 267
    :goto_1
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->julianDay:I

    move-object/from16 v11, v19

    .line 268
    goto/16 :goto_0

    .line 263
    :cond_9
    const/high16 v3, 0x7f02

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 264
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    goto :goto_1

    .line 271
    .end local v12           #allDay:Z
    .end local v16           #eventStartTime:J
    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .end local v19           #itemView:Landroid/view/View;
    .end local v22           #title:Landroid/widget/TextView;
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown event type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    return v0
.end method

.method public isDayHeaderView(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 656
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 658
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 660
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 658
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstDayAfterYesterday(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v0

    .line 578
    .local v0, headerPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 579
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_0

    .line 580
    iget-boolean v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 582
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAsFirstDayAfterYesterday(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 619
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    goto :goto_0
.end method
