.class public Lcom/android/deskclock/WorldClockFragment;
.super Landroid/app/Fragment;
.source "WorldClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/WorldClockFragment$TimezoneView;,
        Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;,
        Lcom/android/deskclock/WorldClockFragment$ModeCallBack;
    }
.end annotation


# static fields
.field private static DAYS:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private mSelectedTimezoneAdapter:Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTimezonesList:Landroid/widget/EditableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTickerStopped:Z

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/WorldClockFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/WorldClockFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/WorldClockFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/WorldClockFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/WorldClockFragment;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/WorldClockFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/deskclock/WorldClockFragment;->DAYS:[Ljava/lang/String;

    return-object v0
.end method

.method private insertTimezoneToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "mTimezoneID"

    .prologue
    .line 163
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/deskclock/TimezonePicker;->getTimezoneByID(Landroid/content/Context;Ljava/lang/String;)Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    move-result-object v0

    .line 165
    .local v0, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    const-string v2, "timezoneid"

    iget-object v3, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "offset"

    iget v3, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v2, "position"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/WorldClock;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 169
    return-void
.end method

.method private isTimezoneExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "timezoneID"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/WorldClock;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/WorldClock;->PROJECTION:[Ljava/lang/String;

    const-string v3, "timezoneid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 155
    .local v7, exist:Z
    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    return v7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 116
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, tzId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2, v1}, Lcom/android/deskclock/WorldClockFragment;->isTimezoneExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2, v1}, Lcom/android/deskclock/WorldClockFragment;->insertTimezoneToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .end local v1           #tzId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v1       #tzId:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0050

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 122
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 142
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/deskclock/TimezoneSearchView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/WorldClockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0046
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/deskclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    .line 52
    const v0, 0x7f040014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/android/deskclock/WorldClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/WorldClockFragment;->DAYS:[Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 56
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v0, "launch_first_time_pref"

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 58
    .local v8, tz:Ljava/util/TimeZone;
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, timezoneID:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/android/deskclock/TimezonePicker;->isValidateTimezoneID(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/deskclock/TimezonePicker;->getNearTimezoneID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 63
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v7}, Lcom/android/deskclock/WorldClockFragment;->insertTimezoneToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launch_first_time_pref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v7           #timezoneID:Ljava/lang/String;
    .end local v8           #tz:Ljava/util/TimeZone;
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    .line 72
    new-instance v9, Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;

    iget-object v10, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/deskclock/WorldClock;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/WorldClock;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v9, p0, v10, v0}, Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;-><init>(Lcom/android/deskclock/WorldClockFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v9, p0, Lcom/android/deskclock/WorldClockFragment;->mSelectedTimezoneAdapter:Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/deskclock/WorldClockFragment;->mSelectedTimezoneAdapter:Lcom/android/deskclock/WorldClockFragment$TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    new-instance v1, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;

    iget-object v2, p0, Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;-><init>(Lcom/android/deskclock/WorldClockFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WorldClockFragment;->setHasOptionsMenu(Z)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTickerStopped:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/deskclock/WorldClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/WorldClockFragment$1;-><init>(Lcom/android/deskclock/WorldClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTicker:Ljava/lang/Runnable;

    .line 93
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTickerStopped:Z

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7f0f0048
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment;->mTimezonesList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 104
    return-void
.end method
