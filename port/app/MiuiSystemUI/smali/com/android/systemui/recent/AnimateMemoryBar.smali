.class public Lcom/android/systemui/recent/AnimateMemoryBar;
.super Landroid/widget/LinearLayout;
.source "AnimateMemoryBar.java"


# static fields
.field public static Value:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recent/AnimateMemoryBar;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnimationDuration:I

.field private static sInterpolator:Landroid/view/animation/Interpolator;

.field private static sRefreshDelay:I


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mIsRefreshRunnablePosted:Z

.field private mMemoryOccupied:Landroid/widget/TextView;

.field private mMemoryProgress:Landroid/widget/ProgressBar;

.field private mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x3e8

    .line 20
    sput v0, Lcom/android/systemui/recent/AnimateMemoryBar;->sRefreshDelay:I

    .line 35
    sput v0, Lcom/android/systemui/recent/AnimateMemoryBar;->sAnimationDuration:I

    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/AnimateMemoryBar;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Lcom/android/systemui/recent/AnimateMemoryBar$2;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/AnimateMemoryBar$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recent/AnimateMemoryBar;->Value:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/android/systemui/recent/AnimateMemoryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/AnimateMemoryBar$1;-><init>(Lcom/android/systemui/recent/AnimateMemoryBar;)V

    iput-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/AnimateMemoryBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/systemui/recent/AnimateMemoryBar;->refreshMemoryInfo()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/android/systemui/recent/AnimateMemoryBar;->sRefreshDelay:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/AnimateMemoryBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mIsRefreshRunnablePosted:Z

    return p1
.end method

.method private refreshMemoryInfo()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    .line 86
    invoke-static {}, Lmiui/os/Environment;->getTotalMemory()J

    move-result-wide v5

    div-long v2, v5, v7

    .line 87
    .local v2, total:J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v5

    div-long/2addr v5, v7

    div-long v0, v5, v7

    .line 88
    .local v0, free:J
    sub-long v5, v2, v0

    long-to-int v4, v5

    .line 90
    .local v4, value:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/AnimateMemoryBar;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 91
    iget-object v5, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 92
    iget-object v5, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    invoke-static {}, Lmiui/os/Environment;->getTotalMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v1, v3, v5

    .line 62
    .local v1, total:J
    const v3, 0x7f100094

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/AnimateMemoryBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0a008c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v3, 0x7f100093

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/AnimateMemoryBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryOccupied:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f100095

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/AnimateMemoryBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryProgress:Landroid/widget/ProgressBar;

    .line 69
    iget-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryProgress:Landroid/widget/ProgressBar;

    long-to-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    const-string v3, "value"

    new-array v4, v8, [I

    aput v7, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/recent/AnimateMemoryBar;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v3, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mAnimator:Landroid/animation/ObjectAnimator;

    sget v4, Lcom/android/systemui/recent/AnimateMemoryBar;->sAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 79
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mIsRefreshRunnablePosted:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mIsRefreshRunnablePosted:Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/AnimateMemoryBar;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryOccupied:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0a008c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recent/AnimateMemoryBar;->mMemoryProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    return-void
.end method
