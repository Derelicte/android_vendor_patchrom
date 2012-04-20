.class Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedView;Lcom/android/systemui/statusbar/phone/ExpandedView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v7, -0x3c06

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v0, v3, v5

    .line 82
    .local v0, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v1, v3, v5

    .line 83
    .local v1, dy:F
    mul-float v3, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v3, v5

    const v5, 0x461c4000

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    move v3, v4

    .line 110
    :goto_0
    return v3

    .line 87
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 88
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sTogglesInListStyle:Z

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 90
    :cond_1
    const/high16 v3, 0x43fa

    cmpl-float v3, p3, v3

    if-lez v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flingToPreviousTab()V

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/ExpandedView;->access$102(Lcom/android/systemui/statusbar/phone/ExpandedView;Z)Z

    .line 110
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ExpandedView;->access$100(Lcom/android/systemui/statusbar/phone/ExpandedView;)Z

    move-result v3

    goto :goto_0

    .line 94
    :cond_3
    cmpg-float v3, p3, v7

    if-gez v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flingToNextTab()V

    .line 96
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/ExpandedView;->access$102(Lcom/android/systemui/statusbar/phone/ExpandedView;Z)Z

    goto :goto_1

    .line 99
    :cond_4
    cmpg-float v3, p4, v7

    if-gez v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContentContentIndex:I

    if-nez v3, :cond_5

    .line 102
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedCurrentContent:Landroid/view/View;

    .line 103
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v5, v3, :cond_5

    move v3, v4

    .line 104
    goto :goto_0

    .line 107
    .end local v2           #view:Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/ExpandedView;->access$102(Lcom/android/systemui/statusbar/phone/ExpandedView;Z)Z

    goto :goto_1
.end method
