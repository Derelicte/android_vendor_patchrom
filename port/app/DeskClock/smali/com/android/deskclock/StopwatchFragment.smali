.class public Lcom/android/deskclock/StopwatchFragment;
.super Landroid/app/ListFragment;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/StopwatchFragment$ElapsedTimeView;,
        Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mElapsedTime:J

.field private mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

.field private mIsRunning:Z

.field private mLapBtn:Landroid/widget/Button;

.field private mLapElapsedTime:J

.field private mPauseBtn:Landroid/widget/Button;

.field private mResetBtn:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mStartBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/android/deskclock/StopwatchFragment;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDigits(J)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 188
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(J)Ljava/lang/String;
    .locals 11
    .parameter "milliSeconds"

    .prologue
    .line 164
    const-wide/32 v7, 0xea60

    div-long v2, p0, v7

    .line 165
    .local v2, minutes:J
    const-wide/32 v7, 0xea60

    rem-long v7, p0, v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 166
    .local v5, seconds:J
    const-wide/16 v7, 0x3e8

    rem-long v7, p0, v7

    const-wide/16 v9, 0x64

    div-long v0, v7, v9

    .line 167
    .local v0, mSeconds:J
    const-wide/16 v7, 0x64

    rem-long v7, p0, v7

    const-wide/16 v9, 0x32

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 168
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 169
    const-wide/16 v7, 0xa

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    .line 170
    const-wide/16 v0, 0x0

    .line 171
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 172
    const-wide/16 v7, 0x3c

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    .line 173
    const-wide/16 v5, 0x0

    .line 174
    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    .line 178
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {v2, v3}, Lcom/android/deskclock/StopwatchFragment;->formatDigits(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v5, v6}, Lcom/android/deskclock/StopwatchFragment;->formatDigits(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initButtons()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 119
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mStartBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mPauseBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mResetBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mLapBtn:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v0, v1

    .line 120
    goto :goto_1

    :cond_2
    move v0, v2

    .line 121
    goto :goto_2

    :cond_3
    move v2, v1

    .line 122
    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "stopwatch_base_time_pref"

    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v3}, Lcom/android/deskclock/StopwatchChronometer;->getBase()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    :goto_1
    const-string v2, "stopwatch_lap_elapsed_time_pref"

    iget-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mLapElapsedTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v2, "stopwatch_state_running_pref"

    iget-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchFragment;->initButtons()V

    .line 116
    return-void

    .line 77
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    .line 78
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/StopwatchChronometer;->setBase(J)V

    .line 79
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v2}, Lcom/android/deskclock/StopwatchChronometer;->start()V

    goto :goto_0

    .line 82
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v4}, Lcom/android/deskclock/StopwatchChronometer;->getBase()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    .line 84
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v2}, Lcom/android/deskclock/StopwatchChronometer;->stop()V

    goto :goto_0

    .line 87
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    .line 88
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v2}, Lcom/android/deskclock/StopwatchChronometer;->stop()V

    .line 89
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/StopwatchChronometer;->setBase(J)V

    .line 90
    iput-wide v6, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    .line 91
    iput-wide v6, p0, Lcom/android/deskclock/StopwatchFragment;->mLapElapsedTime:J

    .line 92
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/Stopwatch;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v4}, Lcom/android/deskclock/StopwatchChronometer;->getBase()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    .line 96
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "total_elapsed"

    iget-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v2, "lap_elapsed"

    iget-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    iget-wide v5, p0, Lcom/android/deskclock/StopwatchFragment;->mLapElapsedTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    iget-object v2, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/Stopwatch;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 100
    iget-wide v2, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    iput-wide v2, p0, Lcom/android/deskclock/StopwatchFragment;->mLapElapsedTime:J

    goto/16 :goto_0

    .line 110
    .end local v1           #values:Landroid/content/ContentValues;
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v2, "stopwatch_elapsed_time_pref"

    iget-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f0f002f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 36
    const v0, 0x7f04000e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/android/deskclock/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    .line 39
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    new-instance v7, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;

    iget-object v8, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/Stopwatch;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Stopwatch;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v7, p0, v8, v0}, Lcom/android/deskclock/StopwatchFragment$ElapsedTimeAdapter;-><init>(Lcom/android/deskclock/StopwatchFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/StopwatchChronometer;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    .line 44
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mStartBtn:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mPauseBtn:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mResetBtn:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mLapBtn:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mStartBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mPauseBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mLapBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/deskclock/StopwatchFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 58
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "stopwatch_state_running_pref"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    .line 60
    iget-boolean v3, p0, Lcom/android/deskclock/StopwatchFragment;->mIsRunning:Z

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "stopwatch_base_time_pref"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    .local v0, base:J
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v3, v0, v1}, Lcom/android/deskclock/StopwatchChronometer;->setBase(J)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    .line 64
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v3}, Lcom/android/deskclock/StopwatchChronometer;->start()V

    .line 69
    .end local v0           #base:J
    :goto_0
    const-string v3, "stopwatch_lap_elapsed_time_pref"

    iget-wide v4, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mLapElapsedTime:J

    .line 70
    invoke-direct {p0}, Lcom/android/deskclock/StopwatchFragment;->initButtons()V

    .line 71
    return-void

    .line 66
    :cond_0
    const-string v3, "stopwatch_elapsed_time_pref"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    .line 67
    iget-object v3, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTimeView:Lcom/android/deskclock/StopwatchChronometer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/StopwatchFragment;->mElapsedTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/deskclock/StopwatchChronometer;->setBase(J)V

    goto :goto_0
.end method
