.class public final Lcom/android/contacts/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callTypeAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "nameView"
    .parameter "callTypeView"
    .parameter "callTypeIcons"
    .parameter "callTypeAndDate"
    .parameter "numberView"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 38
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 40
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/contacts/PhoneCallDetailsViews;
    .locals 6
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/contacts/PhoneCallDetailsViews;
    .locals 6
    .parameter "view"

    .prologue
    .line 52
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsViews;

    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/calllog/CallTypeIconsView;

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
