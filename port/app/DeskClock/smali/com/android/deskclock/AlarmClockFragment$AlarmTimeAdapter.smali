.class Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    .line 67
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 82
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 84
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    const v8, 0x7f0f0006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, indicator:Landroid/view/View;
    invoke-static {}, Lcom/android/deskclock/AlarmClockFragment;->access$100()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    const v8, 0x7f0f0007

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 89
    .local v2, clockOnOff:Landroid/widget/CheckBox;
    iget-boolean v8, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    invoke-static {}, Lcom/android/deskclock/AlarmClockFragment;->access$100()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 93
    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;

    invoke-direct {v8, p0, v2, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;Landroid/widget/CheckBox;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v8, 0x7f0f0008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/DigitalClock;

    .line 104
    .local v5, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 105
    .local v1, c:Ljava/util/Calendar;
    const/16 v8, 0xb

    iget v9, v0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v8, 0xc

    iget v9, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-virtual {v5, v1}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 110
    const v8, 0x7f0f000c

    invoke-virtual {v5, v8}, Lcom/android/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, daysOfWeekView:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v9, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, daysOfWeekStr:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_2
    const v8, 0x7f0f0005

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 124
    .local v7, labelView:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 125
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_3
    const v8, 0x7f0f000d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/deskclock/SetAlarm;->getAlarmInFurture(Landroid/content/Context;Lcom/android/deskclock/Alarm;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v8, 0x7f0f000e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {}, Lcom/android/deskclock/AlarmClockFragment;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x8

    :goto_5
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 135
    return-void

    .line 85
    .end local v1           #c:Ljava/util/Calendar;
    .end local v2           #clockOnOff:Landroid/widget/CheckBox;
    .end local v3           #daysOfWeekStr:Ljava/lang/String;
    .end local v4           #daysOfWeekView:Landroid/widget/TextView;
    .end local v5           #digitalClock:Lcom/android/deskclock/DigitalClock;
    .end local v7           #labelView:Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 90
    .restart local v2       #clockOnOff:Landroid/widget/CheckBox;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 118
    .restart local v1       #c:Ljava/util/Calendar;
    .restart local v3       #daysOfWeekStr:Ljava/lang/String;
    .restart local v4       #daysOfWeekView:Landroid/widget/TextView;
    .restart local v5       #digitalClock:Lcom/android/deskclock/DigitalClock;
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 128
    .restart local v7       #labelView:Landroid/widget/TextView;
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 131
    :cond_4
    iget-object v9, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0052

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 134
    :cond_5
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mFactory:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$000(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, ret:Landroid/view/View;
    const v2, 0x7f0f0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    .line 76
    .local v0, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-virtual {v0, v4}, Lcom/android/deskclock/DigitalClock;->setLive(Z)V

    .line 77
    return-object v1
.end method
