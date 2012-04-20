.class Lcom/android/browser/MiuiNavTabScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiNavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavTabScroller;->animateOut(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiNavTabScroller;

.field final synthetic val$pos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavTabScroller;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    iput p2, p0, Lcom/android/browser/MiuiNavTabScroller$2;->val$position:I

    iput p3, p0, Lcom/android/browser/MiuiNavTabScroller$2;->val$pos:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    #getter for: Lcom/android/browser/MiuiNavTabScroller;->mRemoveListener:Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lcom/android/browser/MiuiNavTabScroller;->access$000(Lcom/android/browser/MiuiNavTabScroller;)Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    #getter for: Lcom/android/browser/MiuiNavTabScroller;->mRemoveListener:Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lcom/android/browser/MiuiNavTabScroller;->access$000(Lcom/android/browser/MiuiNavTabScroller;)Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/MiuiNavTabScroller$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;->onRemovePosition(I)V

    .line 361
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/MiuiNavTabScroller;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->access$102(Lcom/android/browser/MiuiNavTabScroller;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 362
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    const/4 v1, -0x1

    #setter for: Lcom/android/browser/MiuiNavTabScroller;->mGapPosition:I
    invoke-static {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->access$202(Lcom/android/browser/MiuiNavTabScroller;I)I

    .line 363
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/MiuiNavTabScroller;->mGap:I
    invoke-static {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->access$302(Lcom/android/browser/MiuiNavTabScroller;I)I

    .line 364
    iget-object v0, p0, Lcom/android/browser/MiuiNavTabScroller$2;->this$0:Lcom/android/browser/MiuiNavTabScroller;

    iget v1, p0, Lcom/android/browser/MiuiNavTabScroller$2;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged(I)V

    .line 366
    :cond_0
    return-void
.end method
