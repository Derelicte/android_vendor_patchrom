.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/LinearLayout;
.source "ContactDetailTabCarousel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarHeight:I

.field private mAllowedVerticalScrollLength:I

.field private mAlphaLayer:Landroid/widget/ImageView;

.field private mCurrentTab:I

.field private mTabCarouselHeight:I

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 42
    invoke-static {}, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->values()[Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    .line 48
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 55
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mActionBarHeight:I

    .line 58
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabCarouselHeight:I

    .line 61
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabCarouselHeight:I

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mActionBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 62
    return-void
.end method


# virtual methods
.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public moveToYCoordinate(IF)V
    .locals 0
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 87
    invoke-virtual {p0, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setAlphaLayerValue(F)V

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAlphaLayer:Landroid/widget/ImageView;

    .line 69
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 3
    .parameter "verticalScrollLength"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAlphaLayer:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 123
    .local v0, i:F
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAlphaLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 98
    return-void
.end method
