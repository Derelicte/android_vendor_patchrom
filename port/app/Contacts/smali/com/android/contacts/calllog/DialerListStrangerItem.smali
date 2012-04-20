.class public Lcom/android/contacts/calllog/DialerListStrangerItem;
.super Landroid/widget/LinearLayout;
.source "DialerListStrangerItem.java"


# instance fields
.field private mIcon:Landroid/view/View;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f040046

    invoke-static {p1, v0, p0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListStrangerItem;->mIcon:Landroid/view/View;

    .line 24
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListStrangerItem;->mText:Landroid/widget/TextView;

    .line 25
    return-void
.end method

.method private setBackground(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x3020181

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->setBackgroundResource(I)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const v0, 0x3020189

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 53
    :cond_1
    const v0, 0x3020185

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListStrangerItem;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 28
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 29
    .local v0, contactId:J
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, name:Ljava/lang/String;
    const-wide/16 v4, -0x6

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 33
    const v3, 0x7f020055

    .line 42
    .local v3, resId:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListStrangerItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListStrangerItem;->mIcon:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/DialerListStrangerItem;->setBackground(Landroid/database/Cursor;)V

    .line 45
    .end local v3           #resId:I
    :goto_1
    return-void

    .line 34
    :cond_0
    const-wide/16 v4, -0x7

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 35
    const v3, 0x7f0200c2

    .restart local v3       #resId:I
    goto :goto_0

    .line 36
    .end local v3           #resId:I
    :cond_1
    const-wide/16 v4, -0x9

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 37
    const v3, 0x7f0200d6

    .restart local v3       #resId:I
    goto :goto_0

    .line 39
    .end local v3           #resId:I
    :cond_2
    const-string v4, "DialerListStrangerItem"

    const-string v5, "Unknown stranger contact id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
