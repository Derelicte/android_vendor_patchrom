.class Lcom/miui/compass/CompassActivity$1;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v5, 0x43b4

    const/high16 v2, 0x3f80

    .line 51
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v3, v3, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mStopDrawing:Z
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mTargetDirection:F
    invoke-static {v4}, Lcom/miui/compass/CompassActivity;->access$200(Lcom/miui/compass/CompassActivity;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mTargetDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$200(Lcom/miui/compass/CompassActivity;)F

    move-result v1

    .line 56
    .local v1, to:F
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    sub-float v3, v1, v3

    const/high16 v4, 0x4334

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 57
    sub-float/2addr v1, v5

    .line 63
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    sub-float v0, v1, v3

    .line 64
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    .line 65
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    move v0, v2

    .line 69
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v4, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v5, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v5}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v6}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v6

    sub-float v6, v1, v6

    iget-object v7, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v7}, Lcom/miui/compass/CompassActivity;->access$300(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v2, v8, v2

    if-lez v2, :cond_6

    const v2, 0x3ecccccd

    :goto_2
    invoke-virtual {v7, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    #calls: Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F
    invoke-static {v4, v2}, Lcom/miui/compass/CompassActivity;->access$400(Lcom/miui/compass/CompassActivity;F)F

    move-result v2

    #setter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3, v2}, Lcom/miui/compass/CompassActivity;->access$102(Lcom/miui/compass/CompassActivity;F)F

    .line 72
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, v2, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassView;->updateDirection(F)V

    .line 75
    .end local v0           #distance:F
    .end local v1           #to:F
    :cond_2
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #calls: Lcom/miui/compass/CompassActivity;->updateDirection()V
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$500(Lcom/miui/compass/CompassActivity;)V

    .line 77
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, v2, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v3, v3, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_3
    return-void

    .line 58
    .restart local v1       #to:F
    :cond_4
    iget-object v3, p0, Lcom/miui/compass/CompassActivity$1;->this$0:Lcom/miui/compass/CompassActivity;

    #getter for: Lcom/miui/compass/CompassActivity;->mDirection:F
    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)F

    move-result v3

    sub-float v3, v1, v3

    const/high16 v4, -0x3ccc

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 59
    add-float/2addr v1, v5

    goto :goto_0

    .line 65
    .restart local v0       #distance:F
    :cond_5
    const/high16 v0, -0x4080

    goto :goto_1

    .line 69
    :cond_6
    const v2, 0x3e99999a

    goto :goto_2
.end method
