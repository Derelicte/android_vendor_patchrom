.class public abstract Lcom/android/contacts/calllog/DialerListItem;
.super Landroid/widget/RelativeLayout;
.source "DialerListItem.java"


# instance fields
.field private mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0f0036

    invoke-direct {v6, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 21
    .local v6, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0f0037

    invoke-direct {v7, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 23
    .local v7, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 26
    return-void
.end method

.method private getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 126
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V
    .locals 0
    .parameter "c"
    .parameter "filterText"
    .parameter "loader"
    .parameter "isItemChecked"

    .prologue
    .line 134
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/calllog/DialerListItem;->setBackground(Landroid/database/Cursor;Z)V

    .line 135
    return-void
.end method

.method protected highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter "name"
    .parameter "matchDetail"

    .prologue
    const/16 v8, 0x21

    const/4 v5, 0x0

    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v2, v5

    .line 67
    :cond_1
    :goto_0
    return-object v2

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_3

    move-object v2, v5

    .line 33
    goto :goto_0

    .line 35
    :cond_3
    const/4 v1, 0x0

    .line 36
    .local v1, isMatch:Z
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 38
    .local v2, matches:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 39
    .local v3, start:I
    const/4 v4, 0x0

    .line 40
    .local v4, started:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_5

    .line 42
    const/4 v1, 0x1

    .line 43
    if-nez v4, :cond_4

    .line 44
    move v3, v0

    .line 45
    const/4 v4, 0x1

    .line 40
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_5
    if-eqz v4, :cond_4

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/calllog/DialerListItem;->getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    const/4 v4, 0x0

    goto :goto_2

    .line 57
    :cond_6
    if-eqz v4, :cond_7

    .line 58
    iget-object v6, p0, Lcom/android/contacts/calllog/DialerListItem;->mHighLightTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 64
    :cond_7
    if-nez v1, :cond_1

    move-object v2, v5

    .line 67
    goto :goto_0
.end method

.method protected highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .parameter "number"
    .parameter "keywords"

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v7

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, searchKey:Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 77
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 81
    .local v4, found:I
    const/4 v1, 0x0

    .line 82
    .local v1, end:I
    if-ltz v4, :cond_4

    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int v1, v4, v10

    .line 114
    :cond_3
    :goto_1
    if-ltz v4, :cond_0

    if-le v1, v4, :cond_0

    .line 115
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v7, matches:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/calllog/DialerListItem;->getHighLightTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v10

    const/16 v11, 0x21

    invoke-virtual {v7, v10, v4, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 86
    .end local v7           #matches:Landroid/text/SpannableStringBuilder;
    :cond_4
    const/4 v9, 0x0

    .line 87
    .local v9, start:I
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 88
    .local v2, firstChar:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_3

    .line 90
    invoke-virtual {p1, v2, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 91
    .local v3, firstCharPos:I
    if-ltz v3, :cond_3

    .line 94
    const/4 v6, 0x1

    .line 95
    .local v6, matchedLength:I
    add-int/lit8 v5, v3, 0x1

    .line 96
    .local v5, index:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 97
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 99
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_6

    .line 106
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v6, v10, :cond_8

    .line 107
    move v4, v3

    .line 108
    move v1, v5

    .line 109
    goto :goto_1

    .line 102
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 104
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_3

    .line 111
    .end local v0           #c:C
    :cond_8
    add-int/lit8 v9, v3, 0x1

    .line 112
    goto :goto_2
.end method

.method protected setBackground(Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "cursor"
    .parameter "isItemChecked"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, resId:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 140
    if-eqz p2, :cond_0

    .line 141
    const v0, 0x3020180

    .line 164
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListItem;->setBackgroundResource(I)V

    .line 165
    return-void

    .line 143
    :cond_0
    const v0, 0x302017d

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    if-eqz p2, :cond_2

    .line 147
    const v0, 0x3020174

    goto :goto_0

    .line 149
    :cond_2
    const v0, 0x3020171

    goto :goto_0

    .line 151
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    if-eqz p2, :cond_4

    .line 153
    const v0, 0x302017c

    goto :goto_0

    .line 155
    :cond_4
    const v0, 0x3020179

    goto :goto_0

    .line 158
    :cond_5
    if-eqz p2, :cond_6

    .line 159
    const v0, 0x3020178

    goto :goto_0

    .line 161
    :cond_6
    const v0, 0x3020175

    goto :goto_0
.end method
