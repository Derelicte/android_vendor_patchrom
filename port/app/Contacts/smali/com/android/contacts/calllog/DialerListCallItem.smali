.class public Lcom/android/contacts/calllog/DialerListCallItem;
.super Lcom/android/contacts/calllog/DialerListItem;
.source "DialerListCallItem.java"


# instance fields
.field public contactDetailAction:Landroid/view/View;

.field private mDurationBuffer:Ljava/nio/CharBuffer;

.field private mFirewall:Landroid/view/View;

.field private mLocation:Landroid/widget/TextView;

.field private final mMissedNameColor:Landroid/content/res/ColorStateList;

.field private mName:Landroid/widget/TextView;

.field private mNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mNormalNameColor:Landroid/content/res/ColorStateList;

.field private mNumber:Landroid/widget/TextView;

.field private mNumberBuffer:Landroid/database/CharArrayBuffer;

.field protected final mSPLocationBuffer:Landroid/database/CharArrayBuffer;

.field private mTime:Landroid/widget/TextView;

.field private mTypeIcon:Landroid/widget/ImageView;

.field public photo:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x40

    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/DialerListItem;-><init>(Landroid/content/Context;)V

    .line 56
    const v1, 0x7f040041

    invoke-static {p1, v1, p0}, Lcom/android/contacts/calllog/DialerListCallItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->photo:Landroid/widget/QuickContactBadge;

    .line 58
    const v1, 0x7f0700bb

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->contactDetailAction:Landroid/view/View;

    .line 59
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mFirewall:Landroid/view/View;

    .line 61
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mLocation:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0700b9

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mTypeIcon:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f0700ba

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/DialerListCallItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mTime:Landroid/widget/TextView;

    .line 65
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    .line 66
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 67
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    .line 68
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0f002b

    invoke-direct {v1, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mMissedNameColor:Landroid/content/res/ColorStateList;

    .line 70
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x30d001c

    invoke-direct {v1, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mNormalNameColor:Landroid/content/res/ColorStateList;

    .line 73
    const v1, 0x7f0b01fa

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, serviceProvider:Ljava/lang/String;
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>([C)V

    iput-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mSPLocationBuffer:Landroid/database/CharArrayBuffer;

    .line 75
    iget-object v1, p0, Lcom/android/contacts/calllog/DialerListCallItem;->mSPLocationBuffer:Landroid/database/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 76
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V
    .locals 16
    .parameter "c"
    .parameter "filterText"
    .parameter "loader"
    .parameter "isItemChecked"

    .prologue
    .line 80
    invoke-super/range {p0 .. p4}, Lcom/android/contacts/calllog/DialerListItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 81
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 82
    .local v1, contactId:J
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 83
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 84
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, number:Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 86
    .local v11, type:I
    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 87
    .local v5, duration:J
    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 88
    .local v3, date:J
    const/16 v12, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 89
    .local v8, fowardedCall:I
    const/16 v12, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 91
    .local v7, firewallType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mTypeIcon:Landroid/widget/ImageView;

    invoke-static {v11, v8, v12}, Lcom/android/contacts/ContactsUtils;->setCallLogIcons(IILandroid/widget/ImageView;)V

    .line 94
    invoke-static {v9}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v10

    .line 96
    .local v10, presentation:I
    sget v12, Lmiui/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v10, v12, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    invoke-static {v10}, Lmiui/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mMissedNameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-static {v12, v3, v4, v13}, Lmiui/util/MiuiDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JLjava/nio/CharBuffer;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-static {v12, v13, v5, v6, v11}, Lcom/android/contacts/ContactsUtils;->formatDuration(Landroid/content/Context;Ljava/nio/CharBuffer;JI)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v15}, Ljava/nio/CharBuffer;->position()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 130
    if-nez v7, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mFirewall:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_2
    return-void

    .line 98
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-gez v12, :cond_2

    .line 99
    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->isSPContactIdInT9Lookup(J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mSPLocationBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mSPLocationBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/android/contacts/calllog/AsyncDataLoader;->cancelTelocationRequest(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v9}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumberBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNumber:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v9}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mNormalNameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 133
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/calllog/DialerListCallItem;->mFirewall:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method
