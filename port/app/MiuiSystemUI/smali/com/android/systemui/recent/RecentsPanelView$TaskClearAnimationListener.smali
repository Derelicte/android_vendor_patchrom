.class Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskClearAnimationListener"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mFreeMemory:J

.field private mIsStarted:Z

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 11
    .parameter "animation"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 470
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mIsStarted:Z

    .line 471
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$900(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetChanged()V

    .line 473
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mEnabled:Z

    if-nez v2, :cond_0

    .line 485
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 477
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    .line 478
    .local v0, current:J
    iget-wide v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mFreeMemory:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mFreeMemory:J

    .line 479
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0019

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mFreeMemory:J

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 466
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mIsStarted:Z

    .line 462
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mFreeMemory:J

    .line 463
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mEnabled:Z

    .line 448
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTasks:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 451
    :cond_0
    return-void
.end method

.method public startLayoutAnimation()V
    .locals 2

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTasks:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTasksClearAnimationController:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$TaskClearAnimationListener;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mTasks:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    goto :goto_0
.end method
