.class public final Lcom/android/contacts/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public final bottomDivider:Landroid/view/View;

.field public final dividerView:Landroid/view/View;

.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/android/contacts/PhoneCallDetailsViews;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final secondaryActionView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .parameter "quickContactView"
    .parameter "primaryActionView"
    .parameter "secondaryActionView"
    .parameter "dividerView"
    .parameter "phoneCallDetailsViews"
    .parameter "listHeaderTextView"
    .parameter "bottomDivider"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 52
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    .line 54
    iput-object p4, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    .line 55
    iput-object p5, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/contacts/PhoneCallDetailsViews;

    .line 56
    iput-object p6, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    .line 58
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/contacts/calllog/CallLogListItemViews;
    .locals 8
    .parameter "context"

    .prologue
    .line 72
    new-instance v0, Lcom/android/contacts/calllog/CallLogListItemViews;

    new-instance v1, Landroid/widget/QuickContactBadge;

    invoke-direct {v1, p0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/contacts/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/contacts/PhoneCallDetailsViews;

    move-result-object v5

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/contacts/calllog/CallLogListItemViews;
    .locals 8
    .parameter "view"

    .prologue
    .line 61
    new-instance v0, Lcom/android/contacts/calllog/CallLogListItemViews;

    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    const v2, 0x7f07004a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07004b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f070050

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p0}, Lcom/android/contacts/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/contacts/PhoneCallDetailsViews;

    move-result-object v5

    const v6, 0x7f070051

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f070052

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0
.end method
