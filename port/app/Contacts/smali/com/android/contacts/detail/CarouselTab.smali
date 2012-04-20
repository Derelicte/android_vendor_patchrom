.class public Lcom/android/contacts/detail/CarouselTab;
.super Landroid/widget/RelativeLayout;
.source "CarouselTab.java"

# interfaces
.implements Lcom/android/contacts/detail/ViewOverlay;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDivider:Landroid/view/View;

.field private mLabelView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/CarouselTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mDivider:Landroid/view/View;

    .line 53
    return-void
.end method

.method public setLabel(Ljava/lang/String;Z)V
    .locals 2
    .parameter "label"
    .parameter "showDivider"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/android/contacts/detail/CarouselTab;->mDivider:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showDeselectedState()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 66
    return-void
.end method

.method public showSelectedState()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 62
    return-void
.end method
