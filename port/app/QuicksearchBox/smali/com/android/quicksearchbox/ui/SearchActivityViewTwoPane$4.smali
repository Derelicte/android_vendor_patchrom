.class Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;
.super Ljava/lang/Object;
.source "SearchActivityViewTwoPane.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->setupEntryAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

.field final synthetic val$endingWidth:I

.field final synthetic val$startingWidth:I


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    iput p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->val$startingWidth:I

    iput p3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->val$endingWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animator"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->access$200(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->val$startingWidth:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->val$endingWidth:I

    iget v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->val$startingWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->access$200(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void
.end method
