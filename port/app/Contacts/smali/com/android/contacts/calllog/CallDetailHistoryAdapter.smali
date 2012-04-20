.class public Lcom/android/contacts/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

.field private final mShowCallAndSms:Z

.field private final mShowVoicemail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "layoutInflater"
    .parameter "callTypeHelper"
    .parameter "phoneCallDetails"
    .parameter "showVoicemail"
    .parameter "showCallAndSms"
    .parameter "controls"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 65
    iput-object p1, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p3, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 68
    iput-object p4, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    .line 69
    iput-boolean p5, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    .line 70
    iput-boolean p6, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 71
    iput-object p7, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v5, 0x3c

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, minutes:J
    const-wide/16 v2, 0x0

    .line 161
    .local v2, seconds:J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 162
    div-long v0, p1, v5

    .line 163
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 165
    :cond_0
    move-wide v2, p1

    .line 167
    iget-object v4, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0086

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const-wide/16 v0, -0x1

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    if-nez p1, :cond_3

    .line 111
    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040007

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 115
    .local v15, header:Landroid/view/View;
    :goto_0
    const v1, 0x7f070043

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 116
    .local v17, voicemailContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const v1, 0x7f070044

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 119
    .local v7, callAndSmsContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    .end local v7           #callAndSmsContainer:Landroid/view/View;
    .end local v15           #header:Landroid/view/View;
    .end local v17           #voicemailContainer:Landroid/view/View;
    :goto_3
    return-object v15

    :cond_0
    move-object/from16 v15, p2

    .line 111
    goto :goto_0

    .line 116
    .restart local v15       #header:Landroid/view/View;
    .restart local v17       #voicemailContainer:Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .line 119
    .restart local v7       #callAndSmsContainer:Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 126
    .end local v7           #callAndSmsContainer:Landroid/view/View;
    .end local v15           #header:Landroid/view/View;
    .end local v17           #voicemailContainer:Landroid/view/View;
    :cond_3
    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040008

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 130
    .local v16, result:Landroid/view/View;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v13, v1, v2

    .line 131
    .local v13, details:Lcom/android/contacts/PhoneCallDetails;
    const v1, 0x7f070045

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 133
    .local v9, callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    const v1, 0x7f070046

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 134
    .local v10, callTypeTextView:Landroid/widget/TextView;
    const v1, 0x7f070047

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 135
    .local v12, dateView:Landroid/widget/TextView;
    const v1, 0x7f070042

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 137
    .local v14, durationView:Landroid/widget/TextView;
    iget-object v1, v13, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v8, v1, v2

    .line 138
    .local v8, callType:I
    invoke-virtual {v9}, Lcom/android/contacts/calllog/CallTypeIconsView;->clear()V

    .line 139
    invoke-virtual {v9, v8}, Lcom/android/contacts/calllog/CallTypeIconsView;->add(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {v1, v8}, Lcom/android/contacts/calllog/CallTypeHelper;->getCallTypeText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, v13, Lcom/android/contacts/PhoneCallDetails;->date:J

    iget-wide v4, v13, Lcom/android/contacts/PhoneCallDetails;->date:J

    const/16 v6, 0x17

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, dateValue:Ljava/lang/CharSequence;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v1, 0x3

    if-eq v8, v1, :cond_4

    const/4 v1, 0x4

    if-ne v8, v1, :cond_6

    .line 148
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    move-object/from16 v15, v16

    .line 154
    goto/16 :goto_3

    .end local v8           #callType:I
    .end local v9           #callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    .end local v10           #callTypeTextView:Landroid/widget/TextView;
    .end local v11           #dateValue:Ljava/lang/CharSequence;
    .end local v12           #dateView:Landroid/widget/TextView;
    .end local v13           #details:Lcom/android/contacts/PhoneCallDetails;
    .end local v14           #durationView:Landroid/widget/TextView;
    .end local v16           #result:Landroid/view/View;
    :cond_5
    move-object/from16 v16, p2

    .line 126
    goto :goto_4

    .line 150
    .restart local v8       #callType:I
    .restart local v9       #callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    .restart local v10       #callTypeTextView:Landroid/widget/TextView;
    .restart local v11       #dateValue:Ljava/lang/CharSequence;
    .restart local v12       #dateView:Landroid/widget/TextView;
    .restart local v13       #details:Lcom/android/contacts/PhoneCallDetails;
    .restart local v14       #durationView:Landroid/widget/TextView;
    .restart local v16       #result:Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-wide v1, v13, Lcom/android/contacts/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x2

    return v0
.end method
