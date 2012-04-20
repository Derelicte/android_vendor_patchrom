.class public Lcom/android/contacts/calllog/DialerListDividerItem;
.super Landroid/widget/LinearLayout;
.source "DialerListDividerItem.java"


# instance fields
.field private mSPCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const v0, 0x7f0400a7

    invoke-static {p1, v0, p0}, Lcom/android/contacts/calllog/DialerListDividerItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    const v0, 0x7f070162

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/DialerListDividerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/calllog/DialerListDividerItem;->mSPCount:Landroid/widget/TextView;

    .line 15
    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/contacts/calllog/DialerListDividerItem;->mSPCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method
