.class public Lcom/android/contacts/calllog/DialerListContactItem;
.super Lcom/android/contacts/calllog/DialerListItem;
.source "DialerListContactItem.java"


# instance fields
.field public contactDetailAction:Landroid/view/View;

.field private mHighLightedPinyinName:Landroid/widget/TextView;

.field private mLocation:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field public photo:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/DialerListItem;-><init>(Landroid/content/Context;)V

    .line 33
    const v0, 0x7f040043

    invoke-static {p1, v0, p0}, Lcom/android/contacts/calllog/DialerListContactItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->photo:Landroid/widget/QuickContactBadge;

    .line 35
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->contactDetailAction:Landroid/view/View;

    .line 36
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mName:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mNumber:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mLocation:Landroid/widget/TextView;

    .line 40
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V
    .locals 10
    .parameter "c"
    .parameter "filterText"
    .parameter "loader"
    .parameter "isItemChecked"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/calllog/DialerListItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 46
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 47
    .local v0, contactId:J
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, name:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, number:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->isSPContactIdInT9Lookup(J)Z

    move-result v3

    .line 51
    .local v3, isSp:Z
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_0

    if-eqz v3, :cond_4

    .line 52
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, highlights:Landroid/text/SpannableStringBuilder;
    const/16 v8, 0xb

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 57
    .local v4, keyType:J
    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 58
    const/16 v8, 0xf

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/calllog/DialerListContactItem;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .end local v2           #highlights:Landroid/text/SpannableStringBuilder;
    .end local v4           #keyType:J
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 88
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p3, v8}, Lcom/android/contacts/calllog/AsyncDataLoader;->cancelTelocationRequest(Landroid/widget/TextView;)V

    .line 89
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mLocation:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_1
    return-void

    .line 65
    .restart local v2       #highlights:Landroid/text/SpannableStringBuilder;
    .restart local v4       #keyType:J
    :cond_2
    const-wide/16 v8, 0x2

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    .line 66
    const/16 v8, 0xc

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/contacts/calllog/DialerListContactItem;->highLightByName(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 73
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0, v7, p2}, Lcom/android/contacts/calllog/DialerListContactItem;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    .end local v2           #highlights:Landroid/text/SpannableStringBuilder;
    .end local v4           #keyType:J
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mHighLightedPinyinName:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mName:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mLocation:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v8, p0, Lcom/android/contacts/calllog/DialerListContactItem;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p3, v8, v7}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method
