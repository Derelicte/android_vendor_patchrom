.class public Lcom/android/contacts/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V
    .locals 0
    .parameter "resources"
    .parameter "callTypeHelper"
    .parameter "phoneNumberHelper"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 60
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 61
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 62
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "color"

    .prologue
    const/4 v4, 0x0

    .line 189
    const/16 v0, 0x12

    .line 190
    .local v0, flags:I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    .local v1, result:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 193
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 7
    .parameter "views"
    .parameter "callCount"
    .parameter "dateText"
    .parameter "highlightColor"

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b01a7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_1

    .line 179
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 184
    .local v0, formattedText:Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p1, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void

    .line 173
    .end local v0           #formattedText:Ljava/lang/CharSequence;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p3

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 181
    :cond_1
    move-object v0, v1

    .restart local v0       #formattedText:Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 6
    .parameter "nameView"
    .parameter "details"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, displayNumber:Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    move-object v1, v0

    .line 144
    .local v1, nameText:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 141
    .end local v1           #nameText:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1       #nameText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .parameter "currentTimeMillis"

    .prologue
    .line 148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 149
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/contacts/PhoneCallDetailsViews;Lcom/android/contacts/PhoneCallDetails;Z)V
    .locals 18
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"

    .prologue
    .line 68
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/CallTypeIconsView;->clear()V

    .line 69
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    array-length v10, v2

    .line 70
    .local v10, count:I
    const/4 v14, 0x0

    .local v14, index:I
    :goto_0
    if-ge v14, v10, :cond_0

    const/4 v2, 0x3

    if-ge v14, v2, :cond_0

    .line 71
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    aget v3, v3, v14

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeIconsView;->add(I)V

    .line 70
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 73
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 77
    const/4 v2, 0x3

    if-le v10, v2, :cond_3

    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 83
    .local v9, callCount:Ljava/lang/Integer;
    :goto_1
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v13

    .line 87
    .local v13, highlightColor:Ljava/lang/Integer;
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x4

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 94
    .local v11, dateText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v11, v13}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/contacts/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 96
    const/16 v16, 0x0

    .line 98
    .local v16, numberFormattedLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 108
    .local v12, displayNumber:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    move-object v15, v12

    .line 110
    .local v15, nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b01b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, numberText:Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 80
    .end local v9           #callCount:Ljava/lang/Integer;
    .end local v11           #dateText:Ljava/lang/CharSequence;
    .end local v12           #displayNumber:Ljava/lang/CharSequence;
    .end local v13           #highlightColor:Ljava/lang/Integer;
    .end local v15           #nameText:Ljava/lang/CharSequence;
    .end local v16           #numberFormattedLabel:Ljava/lang/CharSequence;
    .end local v17           #numberText:Ljava/lang/CharSequence;
    :cond_3
    const/4 v9, 0x0

    .restart local v9       #callCount:Ljava/lang/Integer;
    goto/16 :goto_1

    .line 83
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 114
    .restart local v11       #dateText:Ljava/lang/CharSequence;
    .restart local v12       #displayNumber:Ljava/lang/CharSequence;
    .restart local v13       #highlightColor:Ljava/lang/Integer;
    .restart local v15       #nameText:Ljava/lang/CharSequence;
    .restart local v16       #numberFormattedLabel:Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v17, v0

    .restart local v17       #numberText:Ljava/lang/CharSequence;
    goto :goto_3

    .line 117
    .end local v15           #nameText:Ljava/lang/CharSequence;
    .end local v17           #numberText:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 118
    .restart local v15       #nameText:Ljava/lang/CharSequence;
    if-eqz v16, :cond_7

    .line 119
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/format/FormatUtils;->applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v17

    .restart local v17       #numberText:Ljava/lang/CharSequence;
    goto :goto_3

    .line 124
    .end local v17           #numberText:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v17, v12

    .restart local v17       #numberText:Ljava/lang/CharSequence;
    goto :goto_3
.end method
