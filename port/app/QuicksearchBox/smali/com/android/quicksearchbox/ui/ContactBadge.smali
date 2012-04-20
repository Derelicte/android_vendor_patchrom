.class public Lcom/android/quicksearchbox/ui/ContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "ContactBadge.java"


# instance fields
.field private mExtraOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setExtraOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "extraOnClickListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method
