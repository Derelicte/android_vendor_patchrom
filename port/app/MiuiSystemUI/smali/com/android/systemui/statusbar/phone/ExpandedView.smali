.class public Lcom/android/systemui/statusbar/phone/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExpandedView$1;,
        Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIntercepted:Z

.field mPrevHeight:I

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandedView$OnFlingGestureListener;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedView;Lcom/android/systemui/statusbar/phone/ExpandedView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ExpandedView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/ExpandedView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z

    return p1
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mIntercepted:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 49
    sub-int v0, p5, p3

    .line 50
    .local v0, height:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_0

    .line 55
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method
