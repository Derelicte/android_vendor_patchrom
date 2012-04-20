.class public Lcom/android/monitor/Traffic;
.super Landroid/app/Fragment;
.source "Traffic.java"

# interfaces
.implements Lcom/android/monitor/widget/DialogTrafficSettingItem$DialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

.field private final mAutoTurnOffMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMobileBytes:[J

.field private mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

.field private mRemainText:Landroid/widget/TextView;

.field private final mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

.field private mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

.field private mTrafficService:Lcom/android/monitor/net/TrafficService;

.field private mTrafficSettingClickListener:Landroid/view/View$OnClickListener;

.field private mTrafficSettingPanel:Landroid/view/View;

.field private mTrafficStatusBar:Lcom/android/monitor/widget/TrafficStatusBar;

.field private mTrafficStatusPanel:Landroid/view/View;

.field private mUsedText:Landroid/widget/TextView;

.field private mWarningText:Landroid/widget/TextView;

.field private mWifiBytes:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    .line 57
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    .line 59
    new-instance v0, Lcom/android/monitor/Traffic$1;

    invoke-direct {v0, p0}, Lcom/android/monitor/Traffic$1;-><init>(Lcom/android/monitor/Traffic;)V

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/monitor/Traffic$2;

    invoke-direct {v0, p0}, Lcom/android/monitor/Traffic$2;-><init>(Lcom/android/monitor/Traffic;)V

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 152
    new-instance v0, Lcom/android/monitor/Traffic$3;

    invoke-direct {v0, p0}, Lcom/android/monitor/Traffic$3;-><init>(Lcom/android/monitor/Traffic;)V

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 181
    new-instance v0, Lcom/android/monitor/Traffic$4;

    invoke-direct {v0, p0}, Lcom/android/monitor/Traffic$4;-><init>(Lcom/android/monitor/Traffic;)V

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingClickListener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateCycleDate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/monitor/Traffic;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/monitor/Traffic;)Lcom/android/monitor/widget/DialogTrafficSettingItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/net/TrafficService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/monitor/Traffic;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/monitor/Traffic;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/monitor/Traffic;)Lcom/android/monitor/widget/DialogTrafficSettingItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    return-object v0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 243
    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 245
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/monitor/Traffic;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 244
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 248
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setMobileStatusEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingPanel:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/monitor/Traffic;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 233
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficStatusPanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateCycleDate()V
    .locals 13

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getView()Landroid/view/View;

    move-result-object v7

    .line 295
    .local v7, view:Landroid/view/View;
    const v9, 0x7f070012

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 296
    .local v4, message:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 298
    .local v6, now:Ljava/util/Calendar;
    iget-object v9, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v9}, Lcom/android/monitor/net/TrafficService;->getCycleDay()I

    move-result v1

    .line 299
    .local v1, firstDay:I
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 300
    .local v8, year:I
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 301
    .local v5, month:I
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 302
    .local v0, day:I
    if-ne v0, v1, :cond_0

    .line 303
    iget-object v9, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_0
    return-void

    .line 304
    :cond_0
    if-le v0, v1, :cond_1

    .line 305
    const v9, 0x7f050001

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_1
    add-int/lit8 v2, v5, -0x1

    .line 309
    .local v2, last_month:I
    move v3, v8

    .line 310
    .local v3, last_year:I
    if-nez v5, :cond_2

    .line 311
    const/16 v2, 0xb

    .line 312
    add-int/lit8 v3, v8, -0x1

    .line 314
    :cond_2
    const v9, 0x7f050001

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateMobilePackagePanel(JJ)V
    .locals 11
    .parameter "limitBytes"
    .parameter "warningBytes"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->getLimitBytes()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 252
    .local v7, isLimitDisabled:Z
    :goto_0
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

    if-nez v7, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 256
    const-wide/32 p1, 0x3200000

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    const v1, 0x7f05000c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v6}, Lcom/android/monitor/net/TrafficService;->getCycleDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/monitor/Traffic;->setMobileStatusEnable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->getMobileUsedBytes()J

    move-result-wide v3

    .line 266
    .local v3, used:J
    sub-long v8, p1, v3

    .line 269
    .local v8, remain:J
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/widget/TrafficStatusBar;

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/monitor/widget/TrafficStatusBar;->setStatusValue(JJJ)V

    .line 270
    cmp-long v0, v3, p3

    if-gez v0, :cond_4

    const v10, 0x7f020014

    .line 273
    .local v10, usedColor:I
    :goto_3
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/widget/TrafficStatusBar;

    invoke-virtual {v0, v10}, Lcom/android/monitor/widget/TrafficStatusBar;->setStatusColor(I)V

    .line 276
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 279
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050013

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v8, v9}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_4
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mWarningText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p3, p4}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 251
    .end local v3           #used:J
    .end local v7           #isLimitDisabled:Z
    .end local v8           #remain:J
    .end local v10           #usedColor:I
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 253
    .restart local v7       #isLimitDisabled:Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingClickListener:Landroid/view/View$OnClickListener;

    goto/16 :goto_2

    .line 270
    .restart local v3       #used:J
    .restart local v8       #remain:J
    :cond_4
    cmp-long v0, v3, p1

    if-gez v0, :cond_5

    const v10, 0x7f020013

    goto/16 :goto_3

    :cond_5
    const v10, 0x7f020012

    goto/16 :goto_3

    .line 282
    .restart local v10       #usedColor:I
    :cond_6
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050016

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    neg-long v5, v8

    invoke-static {v2, v5, v6}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updateTrafficTable()V
    .locals 7

    .prologue
    .line 320
    new-instance v1, Lcom/android/monitor/net/UidInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/monitor/net/UidInfo;-><init>(I)V

    .line 321
    .local v1, totalUidInfo:Lcom/android/monitor/net/UidInfo;
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v2, v1}, Lcom/android/monitor/net/TrafficService;->getUidStat(Lcom/android/monitor/net/UidInfo;)V

    .line 323
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    iget-object v3, v1, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    aget-wide v3, v3, v0

    iget-object v5, v1, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 325
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    iget-object v3, v1, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    aget-wide v3, v3, v0

    iget-object v5, v1, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

    iget-object v3, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    iget-object v4, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    invoke-virtual {v2, v3, v4}, Lcom/android/monitor/widget/TrafficDetailPanel;->updateTrafficTable([J[J)V

    .line 328
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getView()Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    .line 89
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 91
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/widget/DialogTrafficSettingItem;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    .line 92
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    const v2, 0x7f05001c

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setKey(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    invoke-virtual {v1, p0}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setOnDialogClosedListener(Lcom/android/monitor/widget/DialogTrafficSettingItem$DialogClosedListener;)V

    .line 95
    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/widget/TrafficStatusBar;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/widget/TrafficStatusBar;

    .line 96
    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mUsedText:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mWarningText:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

    .line 101
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    .line 104
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/widget/DialogTrafficSettingItem;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    .line 107
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setKey(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    new-instance v2, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v1, v2}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/widget/DialogTrafficSettingItem;

    invoke-virtual {v1, p0}, Lcom/android/monitor/widget/DialogTrafficSettingItem;->setOnDialogClosedListener(Lcom/android/monitor/widget/DialogTrafficSettingItem$DialogClosedListener;)V

    .line 111
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficSettingPanel:Landroid/view/View;

    .line 112
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficStatusPanel:Landroid/view/View;

    .line 113
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/widget/TrafficDetailPanel;

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDialogClosed(Landroid/view/View;Z)V
    .locals 12
    .parameter "view"
    .parameter "positiveResult"

    .prologue
    const/high16 v3, 0x4980

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 334
    :pswitch_0
    if-eqz p2, :cond_0

    .line 335
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 336
    .local v7, inputMaxText:Landroid/widget/EditText;
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 337
    .local v9, inputWarningTraffic:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, inputMax:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, inputWarning:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 342
    .local v10, limitBytes:F
    mul-float/2addr v10, v3

    .line 343
    cmpg-float v0, v10, v2

    if-gez v0, :cond_1

    .line 344
    const/high16 v10, 0x4c48

    .line 347
    :cond_1
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 348
    .local v11, warningBytes:F
    mul-float/2addr v11, v3

    .line 349
    cmpg-float v0, v11, v2

    if-gez v0, :cond_2

    .line 350
    const/high16 v11, 0x4c20

    .line 352
    :cond_2
    cmpl-float v0, v11, v10

    if-lez v0, :cond_3

    .line 353
    move v11, v10

    .line 355
    :cond_3
    float-to-long v2, v10

    float-to-long v4, v11

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel(JJ)V

    .line 357
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->getCycleDay()I

    move-result v1

    .line 358
    .local v1, cycleDay:I
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    float-to-long v2, v10

    float-to-long v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/monitor/net/TrafficService;->setPolicy(IJJ)V

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x7f070020
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 290
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService;->getLimitBytes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v3}, Lcom/android/monitor/net/TrafficService;->getWarningBytes()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel(JJ)V

    .line 133
    :cond_0
    return-void
.end method

.method public setTrafficService(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter "trafficService"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    .line 71
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateCycleDate()V

    .line 118
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->getLimitBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v2}, Lcom/android/monitor/net/TrafficService;->getWarningBytes()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel(JJ)V

    .line 119
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateTrafficTable()V

    .line 120
    return-void
.end method
