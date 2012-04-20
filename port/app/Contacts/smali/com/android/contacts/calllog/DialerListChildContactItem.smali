.class public Lcom/android/contacts/calllog/DialerListChildContactItem;
.super Lcom/android/contacts/calllog/DialerListItem;
.source "DialerListChildContactItem.java"


# instance fields
.field public contactDetailAction:Landroid/view/View;

.field private mLocation:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/DialerListItem;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f040042

    invoke-static {p1, v0, p0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->mNumber:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->mLocation:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->contactDetailAction:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V
    .locals 6
    .parameter "c"
    .parameter "filterText"
    .parameter "loader"
    .parameter "isItemChecked"

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/calllog/DialerListItem;->bind(Landroid/database/Cursor;Ljava/lang/String;Lcom/android/contacts/calllog/AsyncDataLoader;Z)V

    .line 33
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/calllog/DialerListChildContactItem;->highLightByNumber(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 38
    .local v0, highlights:Landroid/text/SpannableStringBuilder;
    if-eqz v0, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v0           #highlights:Landroid/text/SpannableStringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/DialerListChildContactItem;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p3, v2, v1}, Lcom/android/contacts/calllog/AsyncDataLoader;->loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected setBackground(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "cursor"
    .parameter "isItemChecked"

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->setBackgroundResource(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const v0, 0x7f02002d

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListChildContactItem;->setBackgroundResource(I)V

    goto :goto_0
.end method
