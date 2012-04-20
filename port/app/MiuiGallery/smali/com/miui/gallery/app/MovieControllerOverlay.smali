.class public Lcom/miui/gallery/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/miui/gallery/app/ControllerOverlay;
.implements Lcom/miui/gallery/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/MovieControllerOverlay$State;
    }
.end annotation


# instance fields
.field private final background:Landroid/view/View;

.field private canReplay:Z

.field private final errorView:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

.field private final loadingView:Landroid/widget/LinearLayout;

.field private mainView:Landroid/view/View;

.field private final playPauseReplayView:Landroid/widget/ImageView;

.field private final startHidingRunnable:Ljava/lang/Runnable;

.field private state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field private final timeBar:Lcom/miui/gallery/app/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v8, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->canReplay:Z

    .line 84
    sget-object v5, Lcom/miui/gallery/app/MovieControllerOverlay$State;->LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 86
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    .line 94
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/miui/gallery/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v5, Lcom/miui/gallery/app/TimeBar;

    invoke-direct {v5, p1, p0}, Lcom/miui/gallery/app/TimeBar;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/TimeBar$Listener;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    .line 98
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/miui/gallery/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    .line 101
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 104
    .local v3, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 105
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/miui/gallery/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    .line 109
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020061

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020011

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 113
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 114
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/miui/gallery/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 118
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    const/high16 v6, -0x3400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/miui/gallery/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 124
    new-instance v5, Lcom/miui/gallery/app/MovieControllerOverlay$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/app/MovieControllerOverlay$1;-><init>(Lcom/miui/gallery/app/MovieControllerOverlay;)V

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 130
    const v5, 0x7f05000a

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 131
    iget-object v5, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 133
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/MovieControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->hide()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 246
    return-void
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 344
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 345
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 346
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 347
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 348
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :cond_0
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->show()V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v0, v2

    .line 205
    goto :goto_1

    :cond_2
    move v1, v2

    .line 206
    goto :goto_2
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method private updateViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/TimeBar;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_2

    const v0, 0x7f020061

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v2, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/miui/gallery/app/MovieControllerOverlay$State;->LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ERROR:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->canReplay:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->requestLayout()V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_3

    const v0, 0x7f020060

    goto :goto_1

    :cond_3
    const v0, 0x7f020062

    goto :goto_1

    .line 366
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 188
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 189
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 190
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/TimeBar;->setVisibility(I)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/MovieControllerOverlay;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->requestFocus()Z

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onHidden()V

    .line 200
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->hide()V

    .line 258
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 250
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 264
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->canReplay:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onReplay()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->show()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 311
    sub-int v15, p5, p3

    .line 312
    .local v15, h:I
    sub-int v17, p4, p2

    .line 313
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v13, 0x1

    .line 315
    .local v13, error:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v4}, Lcom/miui/gallery/app/TimeBar;->getBarHeight()I

    move-result v11

    .line 316
    .local v11, bw:I
    move v10, v11

    .line 317
    .local v10, bh:I
    sub-int v18, p5, v10

    .line 319
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->background:Landroid/view/View;

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v5}, Lcom/miui/gallery/app/TimeBar;->getPreferredHeight()I

    move-result v5

    sub-int v5, p5, v5

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/miui/gallery/app/TimeBar;->layout(IIII)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v4}, Lcom/miui/gallery/app/TimeBar;->requestLayout()V

    .line 326
    div-int/lit8 v4, v17, 0x2

    add-int v12, p2, v4

    .line 327
    .local v12, cx:I
    div-int/lit8 v4, v15, 0x2

    add-int v16, p3, v4

    .line 328
    .local v16, playbackButtonsCenterline:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    div-int/lit8 v5, v11, 0x2

    sub-int v5, v12, v5

    div-int/lit8 v6, v10, 0x2

    sub-int v6, v16, v6

    div-int/lit8 v7, v11, 0x2

    add-int/2addr v7, v12

    div-int/lit8 v8, v10, 0x2

    add-int v8, v8, v16

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 335
    move/from16 v0, v17

    int-to-float v4, v0

    const v5, 0x3e2aaaab

    mul-float/2addr v4, v5

    float-to-int v14, v4

    .line 337
    .local v14, errorMessagePadding:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/miui/gallery/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 340
    :cond_0
    return-void

    .line 313
    .end local v10           #bh:I
    .end local v11           #bw:I
    .end local v12           #cx:I
    .end local v13           #error:Z
    .end local v14           #errorMessagePadding:I
    .end local v16           #playbackButtonsCenterline:I
    .end local v18           #y:I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/app/MovieControllerOverlay;->measureChildren(II)V

    .line 354
    return-void
.end method

.method public onScrubbingEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    .line 388
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 383
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    .line 377
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 378
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->canReplay:Z

    .line 145
    return-void
.end method

.method public setListener(Lcom/miui/gallery/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    .line 141
    return-void
.end method

.method public setTimes(II)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->timeBar:Lcom/miui/gallery/app/TimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/TimeBar;->setTime(II)V

    .line 185
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 213
    .local v0, wasHidden:Z
    iput-boolean v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 214
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->updateViews()V

    .line 215
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/MovieControllerOverlay;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 217
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->listener:Lcom/miui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/miui/gallery/app/ControllerOverlay$Listener;->onShown()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 221
    return-void
.end method

.method public showEnded()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/16 v3, 0xa

    .line 172
    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ERROR:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 174
    .local v0, padding:I
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public showPaused()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public showPlaying()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->state:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 154
    return-void
.end method
