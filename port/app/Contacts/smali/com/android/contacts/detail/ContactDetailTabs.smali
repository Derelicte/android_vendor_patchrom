.class public Lcom/android/contacts/detail/ContactDetailTabs;
.super Landroid/widget/LinearLayout;
.source "ContactDetailTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabs$Listener;,
        Lcom/android/contacts/detail/ContactDetailTabs$TabState;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

.field private final mTabTouchListener:Landroid/view/View$OnClickListener;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/CarouselTab;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabs$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailTabs$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabs;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabTouchListener:Landroid/view/View$OnClickListener;

    .line 77
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabs;)Lcom/android/contacts/detail/ContactDetailTabs$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailTabs;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addTab(Lcom/android/contacts/detail/ContactDetailTabs$TabState;I)V
    .locals 7
    .parameter "tabState"
    .parameter "contentDescription"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040011

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/CarouselTab;

    .line 43
    .local v1, tab:Lcom/android/contacts/detail/CarouselTab;
    invoke-virtual {v1, p1}, Lcom/android/contacts/detail/CarouselTab;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v0, v2

    .line 45
    .local v0, showDivider:Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;Z)V

    .line 46
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabTouchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    return-void

    .end local v0           #showDivider:Z
    :cond_0
    move v0, v3

    .line 44
    goto :goto_0

    .line 50
    .restart local v0       #showDivider:Z
    :cond_1
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 56
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mViewGroup:Landroid/widget/LinearLayout;

    .line 85
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/CarouselTab;

    .line 111
    .local v1, tab:Lcom/android/contacts/detail/CarouselTab;
    if-ne v0, p1, :cond_2

    .line 112
    invoke-virtual {v1}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 108
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    goto :goto_1
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabs$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabs;->mListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    .line 125
    return-void
.end method
