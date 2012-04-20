.class public Lcom/android/deskclock/AlarmClockFragment;
.super Landroid/app/Fragment;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;,
        Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;
    }
.end annotation


# static fields
.field private static sIsEditMode:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlarmTimeAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

.field private mAlarmsList:Landroid/widget/EditableListView;

.field private mCursor:Landroid/database/Cursor;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTickerStopped:Z

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/deskclock/AlarmClockFragment;->sIsEditMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/deskclock/AlarmClockFragment;->sIsEditMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClockFragment;ZLcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->updateAlarm(ZLcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmClockFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmClockFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method private addNewAlarm()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClockFragment;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private updateAlarm(ZLcom/android/deskclock/Alarm;)V
    .locals 4
    .parameter "enabled"
    .parameter "alarm"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    iget v1, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v0, v1, p1}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    iget v1, p2, Lcom/android/deskclock/Alarm;->hour:I

    iget v2, p2, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v3, p2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 63
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    .line 184
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 185
    new-instance v0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/deskclock/AlarmClockFragment$ModeCallBack;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->addNewAlarm()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x7f0f0004
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFactory:Landroid/view/LayoutInflater;

    .line 142
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    .line 144
    const v0, 0x7f040001

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->updateLayout()V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClockFragment;->setHasOptionsMenu(Z)V

    .line 149
    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mTickerStopped:Z

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/android/deskclock/AlarmClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmClockFragment$1;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTicker:Ljava/lang/Runnable;

    .line 164
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 199
    invoke-static {}, Lcom/android/deskclock/ToastMaster;->cancelToast()V

    .line 200
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTickerStopped:Z

    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 180
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 221
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, v0}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v2, "intent.extra.alarm"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClockFragment;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0047
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 174
    return-void
.end method
